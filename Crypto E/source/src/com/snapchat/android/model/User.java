// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api.SyncAllTask;
import com.snapchat.android.api.UpdateStoriesTask;
import com.snapchat.android.api2.cash.CashProviderManager;
import com.snapchat.android.api2.cash.ICashProvider;
import com.snapchat.android.chat.ChatConnectionMonitor;
import com.snapchat.android.chat.ChatGapDetector;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.chat.ReceivingMailman;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.database.table.ChatsReceivedInLastHourTable;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.discover.model.server.DiscoverResponse;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.server.FriendsResponse;
import com.snapchat.android.model.server.MessagingGatewayInfo;
import com.snapchat.android.model.server.ServerFriend;
import com.snapchat.android.model.server.StoriesResponse;
import com.snapchat.android.model.server.UpdatesResponse;
import com.snapchat.android.model.server.chat.AllUpdatesConversationResponse;
import com.snapchat.android.model.server.chat.ConversationsResponseInfo;
import com.snapchat.android.screenshotdetection.ChatScreenshotWatcher;
import com.snapchat.android.screenshotdetection.ScreenshotDetector;
import com.snapchat.android.screenshotdetection.SnapScreenshotWatcher;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.AddressBookUtils;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.IdentityUtils;
import com.snapchat.android.util.PrimitiveUtils;
import com.snapchat.android.util.Property;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.SecurityUtils;
import com.snapchat.android.util.SnapKidzLoginManager;
import com.snapchat.android.util.SnapListItemHandler;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.chat.SecureChatBatchedMessagesManager;
import com.snapchat.android.util.crypto.SlightlySecurePreferences;
import com.snapchat.android.util.crypto.SlightlySecurePreferencesKeys;
import com.snapchat.android.util.debug.DevUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.debug.ScApplicationInfo;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.FriendsWhoAddedMeUpdatedEvent;
import com.snapchat.android.util.eventbus.LogoutEvent;
import com.snapchat.android.util.eventbus.MessagingGatewayInfoUpdatedEvent;
import com.snapchat.android.util.eventbus.UpdatingUserToDatabasesEvent;
import com.snapchat.android.util.system.Clock;
import com.snapchat.data.gson.identity.IdentityCheckResponse;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.model:
//            StoryLibrary, UserPrefs, Friend, SnapWomb, 
//            MyStoryGroup, ReceivedSnap

public class User
{

    private static final int NUM_RECENTS = 5;
    private static final String TAG = "User";
    public static Provider UNSAFE_USER_PROVIDER = new Provider() {

        public User a()
        {
            return User.c();
        }

        public Object get()
        {
            return a();
        }

    };
    private static Context sContext = null;
    protected static ExecutorService sExecutorService = Executors.newSingleThreadExecutor();
    private static User sInstance;
    private static final Object sUserSyncLock = new Object();
    private List mBests;
    CashProviderManager mCashProviderManager;
    private ChatConversationManager mChatConversationManager;
    private final ChatsReceivedInLastHourTable mChatsReceivedInLastHourTable;
    private final Clock mClock;
    private List mContactsNotOnSnapchat;
    private final List mContactsOnSnapchat;
    private final Set mContactsOnSnapchatSet;
    private final DiscoverEndpointManager mDiscoverEndpointManager;
    private final HashSet mDuplicateFirstNames;
    private final Map mFriendMap;
    private final List mFriends;
    private List mFriendsBlockedFromSeeingMyStory;
    private List mFriendsWhoAddedMe;
    private final IdentityUtils mIdentityUtils;
    private boolean mInitialized;
    private MessagingGatewayInfo mMessagingGatewayInfo;
    private long mNextReplayAvailableRealtime;
    private final List mRecents;
    private List mRequests;
    private boolean mServerHasMostRecentReplayTime;
    SlightlySecurePreferences mSlightlySecurePreferences;
    private Map mSnapsToBeUpdatedOnServer;
    private final StoryLibrary mStoryLibrary;
    private final Map mStoryViewRecordsSinceLastServerChange;
    private final UserPrefs mUserPrefs;

    public User()
    {
        this(ChatsReceivedInLastHourTable.b(), ChatConversationManager.a(), StoryLibrary.a(), DiscoverEndpointManager.a(), UserPrefs.a(), new Clock(), new IdentityUtils(UserPrefs.a()));
    }

    User(ChatsReceivedInLastHourTable chatsreceivedinlasthourtable, ChatConversationManager chatconversationmanager, StoryLibrary storylibrary, DiscoverEndpointManager discoverendpointmanager, UserPrefs userprefs, Clock clock, IdentityUtils identityutils)
    {
        mNextReplayAvailableRealtime = -1L;
        mServerHasMostRecentReplayTime = true;
        mMessagingGatewayInfo = null;
        mBests = new ArrayList();
        mRecents = new ArrayList(5);
        mContactsNotOnSnapchat = Collections.synchronizedList(new ArrayList());
        mContactsOnSnapchat = Collections.synchronizedList(new ArrayList());
        mContactsOnSnapchatSet = Collections.synchronizedSet(new HashSet());
        mFriends = Collections.synchronizedList(new ArrayList());
        mFriendMap = Collections.synchronizedMap(new HashMap());
        mDuplicateFirstNames = new HashSet();
        mFriendsWhoAddedMe = Collections.synchronizedList(new ArrayList());
        mFriendsBlockedFromSeeingMyStory = new ArrayList();
        mRequests = new ArrayList();
        mSnapsToBeUpdatedOnServer = new ConcurrentHashMap();
        mStoryViewRecordsSinceLastServerChange = Collections.synchronizedMap(new HashMap());
        mInitialized = false;
        SnapchatApplication.e().a(this);
        mChatsReceivedInLastHourTable = chatsreceivedinlasthourtable;
        mChatConversationManager = chatconversationmanager;
        mStoryLibrary = storylibrary;
        mDiscoverEndpointManager = discoverendpointmanager;
        mUserPrefs = userprefs;
        mClock = clock;
        mIdentityUtils = identityutils;
    }

    static Object K()
    {
        return sUserSyncLock;
    }

    private void L()
    {
label0:
        {
            synchronized (sUserSyncLock)
            {
                Timber.c("User", "Calling load user from database", new Object[0]);
                if (UserPrefs.k() != null)
                {
                    break label0;
                }
                b();
            }
            return;
        }
        String s1;
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.valueOf(UserPrefs.l());
        Timber.c("User", "User loaded from database with logged in value of %s", aobj);
        s1 = mSlightlySecurePreferences.a(SlightlySecurePreferencesKeys.a);
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        mMessagingGatewayInfo = (MessagingGatewayInfo)GsonUtil.a().fromJson(s1, com/snapchat/android/model/server/MessagingGatewayInfo);
        M();
        N();
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void M()
    {
        com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable[] = com.snapchat.android.database.table.DbTable.DatabaseTable.values();
        int i1 = adatabasetable.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            com.snapchat.android.database.table.DbTable.DatabaseTable databasetable = adatabasetable[j1];
            Object aobj[] = new Object[1];
            aobj[0] = databasetable.name();
            Timber.c("User", "Populating from %s table", aobj);
            databasetable.a().d(sInstance);
        }

    }

    private void N()
    {
        mBests.clear();
        List list = mFriends;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mFriends.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (friend.v())
            {
                Friend friend1 = f(friend);
                friend1.a(friend.r());
                mBests.add(friend1);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_92;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        HashSet hashset;
        Collections.sort(mBests, new Comparator() {

            final User this$0;

            public int a(Friend friend2, Friend friend3)
            {
                return Integer.valueOf(friend2.r()).compareTo(Integer.valueOf(friend3.r()));
            }

            public int compare(Object obj, Object obj1)
            {
                return a((Friend)obj, (Friend)obj1);
            }

            
            {
                this$0 = User.this;
                super();
            }
        });
        a();
        mDuplicateFirstNames.clear();
        hashset = new HashSet();
        List list1 = mFriends;
        list1;
        JVM INSTR monitorenter ;
        Iterator iterator1 = mFriends.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            String s1 = ((Friend)iterator1.next()).p().toUpperCase(Locale.ENGLISH);
            if (!hashset.add(s1))
            {
                mDuplicateFirstNames.add(s1);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_213;
        Exception exception1;
        exception1;
        list1;
        JVM INSTR monitorexit ;
        throw exception1;
        list1;
        JVM INSTR monitorexit ;
    }

    private void O()
    {
        ReceivingMailman.b();
        SendingMailman.b();
        SnapWomb.b();
        ChatConversationManager.b();
        ChatScreenshotWatcher.b();
        ScreenshotDetector.b();
        SnapScreenshotWatcher.b();
        SnapchatServiceManager.b();
        SnapKidzLoginManager.b();
        SnapListItemHandler.b();
        SecureChatBatchedMessagesManager.b();
        StoryLibrary.b();
        MyStoryGroup.b();
        ChatConnectionMonitor.b();
        ChatGapDetector.b();
    }

    private void P()
    {
        sExecutorService.execute(new Runnable() {

            final User this$0;

            public void run()
            {
                Object obj = User.K();
                obj;
                JVM INSTR monitorenter ;
                com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable[];
                int i1;
                adatabasetable = com.snapchat.android.database.table.DbTable.DatabaseTable.values();
                i1 = adatabasetable.length;
                int j1 = 0;
_L2:
                if (j1 >= i1)
                {
                    break MISSING_BLOCK_LABEL_52;
                }
                com.snapchat.android.database.table.DbTable.DatabaseTable databasetable = adatabasetable[j1];
                if (databasetable.a().m())
                {
                    databasetable.a().l();
                }
                break MISSING_BLOCK_LABEL_60;
                obj;
                JVM INSTR monitorexit ;
                return;
                Exception exception;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
                j1++;
                if (true) goto _L2; else goto _L1
_L1:
            }

            
            {
                this$0 = User.this;
                super();
            }
        });
    }

    private long a(long l1, long l2)
    {
        Calendar calendar = Calendar.getInstance();
        Calendar calendar1 = Calendar.getInstance();
        calendar.setTime(new Date(l1));
        calendar1.setTime(new Date(l2));
        Timber.c("User", (new StringBuilder()).append("last_replayed_snap_timestamp: ").append(l1).toString(), new Object[0]);
        Timber.c("User", (new StringBuilder()).append("current_timestamp: ").append(l2).toString(), new Object[0]);
        if (calendar1.get(1) < calendar.get(1) || calendar1.get(1) == calendar.get(1) && calendar1.get(6) < calendar.get(6))
        {
            return -1L;
        }
        if (calendar1.get(1) == calendar.get(1) && calendar1.get(6) == calendar.get(6))
        {
            calendar1.set(11, 0);
            calendar1.set(12, 0);
            calendar1.set(13, 0);
            calendar1.set(14, 0);
            calendar1.add(6, 1);
            return SystemClock.elapsedRealtime() + (calendar1.getTimeInMillis() - l2);
        } else
        {
            return 0L;
        }
    }

    public static User a(Context context)
    {
        if (sInstance != null && sInstance.J())
        {
            return sInstance;
        }
        Object obj = sUserSyncLock;
        obj;
        JVM INSTR monitorenter ;
        StackTraceElement astacktraceelement[];
        if (!ReleaseManager.e() || Looper.myLooper() != Looper.getMainLooper())
        {
            break MISSING_BLOCK_LABEL_121;
        }
        astacktraceelement = (StackTraceElement[])Thread.getAllStackTraces().get(Thread.currentThread());
        if (astacktraceelement == null)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        if (astacktraceelement.length > 4)
        {
            StackTraceElement stacktraceelement = astacktraceelement[4];
            Timber.e("User", (new StringBuilder()).append(stacktraceelement.getClassName()).append(".").append(stacktraceelement.getMethodName()).append(" called getInstance on the UI thread.").toString(), new Object[0]);
        }
        User user;
        if (sInstance == null)
        {
            b(context);
        }
        user = sInstance;
        obj;
        JVM INSTR monitorexit ;
        return user;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void a(User user)
    {
        synchronized (sUserSyncLock)
        {
            sInstance = user;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(List list, List list1)
    {
        mFriendsBlockedFromSeeingMyStory.clear();
        List list2 = mFriends;
        list2;
        JVM INSTR monitorenter ;
        HashMap hashmap;
        hashmap = new HashMap();
        Friend friend2;
        for (Iterator iterator = mFriends.iterator(); iterator.hasNext(); hashmap.put(friend2.a(), friend2))
        {
            friend2 = (Friend)iterator.next();
        }

        break MISSING_BLOCK_LABEL_81;
        Exception exception;
        exception;
        list2;
        JVM INSTR monitorexit ;
        throw exception;
        Iterator iterator1;
        mFriends.clear();
        mFriendMap.clear();
        iterator1 = list.iterator();
_L1:
        ServerFriend serverfriend;
        Friend friend;
        Friend friend1;
        do
        {
            if (!iterator1.hasNext())
            {
                break MISSING_BLOCK_LABEL_308;
            }
            serverfriend = (ServerFriend)iterator1.next();
            if (serverfriend.username.equals(UserPrefs.k()))
            {
                UserPrefs.f(serverfriend.display);
            }
        } while (serverfriend.type == 3);
        friend = new Friend(serverfriend, this);
        friend.a(list1.indexOf(friend.a()));
        friend1 = (Friend)hashmap.get(friend.a());
        if (friend1 == null)
        {
            break MISSING_BLOCK_LABEL_248;
        }
        friend.b(friend1.j());
        friend.a(friend1.l());
        friend.b(friend1.m());
        friend.a(friend1.M());
        friend.N();
        mFriends.add(friend);
        mFriendMap.put(friend.a(), friend);
        if (!serverfriend.mCanSeeCustomStories)
        {
            mFriendsBlockedFromSeeingMyStory.add(serverfriend.username);
        }
          goto _L1
        list2;
        JVM INSTR monitorexit ;
        N();
        return;
    }

    private void a(String as[], Set set)
    {
        int i1 = as.length;
        int j1 = 0;
        do
        {
label0:
            {
                if (j1 < i1)
                {
                    a(FriendUtils.a(as[j1].trim(), this), set);
                    if (set.size() < 5)
                    {
                        break label0;
                    }
                }
                return;
            }
            j1++;
        } while (true);
    }

    private boolean a(Friend friend, Set set)
    {
        if (friend == null || mBests.contains(friend))
        {
            return false;
        }
        Friend friend1 = f(friend);
        friend1.c(true);
        if (set.add(friend1))
        {
            return true;
        }
        Iterator iterator = set.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend2 = (Friend)iterator.next();
            if (!friend2.equals(friend1))
            {
                continue;
            }
            if (Math.max(friend1.j(), friend1.i()) > Math.max(friend2.j(), friend2.i()))
            {
                set.remove(friend2);
                set.add(friend1);
                return true;
            }
            break;
        } while (true);
        return false;
    }

    public static void b()
    {
        if (UserPrefs.l())
        {
            BusProvider.a().a(new UpdatingUserToDatabasesEvent());
            (new UpdateStoriesTask()).executeOnExecutor(ScExecutors.b, new String[0]);
            if (sInstance != null)
            {
                SyncAllTask.b(sInstance);
            }
        }
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.valueOf(UserPrefs.l());
        Timber.c("User", "The user has been reset. Is logged in? %s", aobj);
    }

    private static void b(Context context)
    {
        if (sInstance == null)
        {
            if (ReleaseManager.e() && Property.b.b())
            {
                try
                {
                    Timber.e("User", "init - sleep 5 seconds for investigating potential ANR. To disable the delay,\n$ adb shell setprop debug.sc.user_init_delay FALSE", new Object[0]);
                    Thread.sleep(5000L);
                }
                catch (InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                }
            }
            Timber.c("User", "qwert user is null. pulling from shared prefs", new Object[0]);
            sContext = context.getApplicationContext();
            if (ScApplicationInfo.c(context) == ScApplicationInfo.a)
            {
                sInstance = new User();
                sInstance.b(true);
                return;
            } else
            {
                sInstance = new User();
                sInstance.L();
                sInstance.b(true);
                return;
            }
        } else
        {
            Timber.c("User", "sInstance not null", new Object[0]);
            return;
        }
    }

    public static User c()
    {
        return sInstance;
    }

    private Friend f(Friend friend)
    {
        Friend friend1 = new Friend(friend.a(), friend.b(), null);
        friend1.a(friend.i());
        friend1.b(friend.j());
        friend1.g(true);
        return friend1;
    }

    private void i(List list)
    {
        ArrayList arraylist = new ArrayList(list.size());
        Friend friend1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(friend1))
        {
            ServerFriend serverfriend = (ServerFriend)iterator.next();
            Friend friend = (Friend)mFriendMap.get(serverfriend.username);
            friend1 = new Friend(serverfriend, this);
            if (friend != null)
            {
                friend1.a(Friend.Direction.BOTH);
                friend.a(Friend.Direction.BOTH);
                friend.a(friend1.i());
            }
        }

        e(arraylist);
    }

    public List A()
    {
        return mFriendsBlockedFromSeeingMyStory;
    }

    public Map B()
    {
        return mSnapsToBeUpdatedOnServer;
    }

    public void C()
    {
        mNextReplayAvailableRealtime = -1L;
    }

    public boolean D()
    {
        boolean flag = true;
        String s1;
        if (UserPrefs.K())
        {
            if ((s1 = UserPrefs.k()) != null)
            {
                if (ReleaseManager.f() && DevUtils.a(s1))
                {
                    return flag;
                }
                if (mNextReplayAvailableRealtime < 0L || !mServerHasMostRecentReplayTime)
                {
                    Timber.c("User", "hasReplay: haven't synced with server since boot or replay", new Object[0]);
                    return false;
                }
                Timber.c("User", (new StringBuilder()).append("current_realtime: ").append(SystemClock.elapsedRealtime()).toString(), new Object[0]);
                Timber.c("User", (new StringBuilder()).append("next_replay_available_realtime: ").append(mNextReplayAvailableRealtime).toString(), new Object[0]);
                Timber.c("User", (new StringBuilder()).append("current_time: ").append(System.currentTimeMillis()).toString(), new Object[0]);
                if (SystemClock.elapsedRealtime() < mNextReplayAvailableRealtime)
                {
                    flag = false;
                }
                return flag;
            }
        }
        return false;
    }

    public void E()
    {
        List list = mFriends;
        list;
        JVM INSTR monitorenter ;
        for (Iterator iterator = mFriends.iterator(); iterator.hasNext(); ((Friend)iterator.next()).N()) { }
        break MISSING_BLOCK_LABEL_46;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public void F()
    {
        G();
        BusProvider.a().a(new LogoutEvent());
    }

    public void G()
    {
        SharedPreferenceKey.b();
        P();
        Caches.b();
        mSlightlySecurePreferences.d();
        O();
        SecurityUtils.a(SnapchatApplication.e());
        DiscoverViewTrackingManager.a().e();
        sInstance = new User();
    }

    public void H()
    {
        com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable[] = new com.snapchat.android.database.table.DbTable.DatabaseTable[com.snapchat.android.database.table.DbTable.DatabaseTable.values().length];
        com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable1[] = com.snapchat.android.database.table.DbTable.DatabaseTable.values();
        int i1 = adatabasetable1.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            com.snapchat.android.database.table.DbTable.DatabaseTable databasetable = adatabasetable1[j1];
            adatabasetable[databasetable.ordinal()] = databasetable;
        }

        a(adatabasetable);
    }

    public Context I()
    {
        return sContext;
    }

    public boolean J()
    {
        return mInitialized;
    }

    public void a()
    {
        HashSet hashset;
        List list;
        int i1;
        List list1;
        int j1;
        hashset = new HashSet(5);
        Iterator iterator = mChatConversationManager.d().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatConversation chatconversation = (ChatConversation)iterator.next();
            Iterator iterator1;
            Exception exception1;
            Iterator iterator2;
            Friend friend;
            Friend friend1;
            if (ChatUtils.a(chatconversation))
            {
                a(chatconversation.c().split(","), ((Set) (hashset)));
            } else
            {
                a(FriendUtils.a(chatconversation.c(), this), ((Set) (hashset)));
            }
        } while (hashset.size() < 5);
        list = mFriendsWhoAddedMe;
        list;
        JVM INSTR monitorenter ;
        iterator1 = mFriendsWhoAddedMe.iterator();
        i1 = 0;
_L5:
        if (!iterator1.hasNext()) goto _L2; else goto _L1
_L1:
        friend1 = (Friend)iterator1.next();
        Exception exception;
        if (mFriends.contains(friend1) && a(friend1, ((Set) (hashset))))
        {
            j1 = i1 + 1;
        } else
        {
            j1 = i1;
        }
          goto _L3
_L2:
        list;
        JVM INSTR monitorexit ;
        list1 = mFriends;
        list1;
        JVM INSTR monitorenter ;
        iterator2 = mFriends.iterator();
        do
        {
            if (!iterator2.hasNext())
            {
                break;
            }
            friend = (Friend)iterator2.next();
            if (friend.y() || friend.j() > 0L)
            {
                a(friend, ((Set) (hashset)));
            }
        } while (true);
          goto _L4
        exception1;
        list1;
        JVM INSTR monitorexit ;
        throw exception1;
_L6:
        i1 = j1;
          goto _L5
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        list1;
        JVM INSTR monitorexit ;
        ArrayList arraylist = new ArrayList(hashset);
        a(((List) (arraylist)));
        List list2 = arraylist.subList(0, Math.min(arraylist.size(), 5));
        mRecents.clear();
        mRecents.addAll(list2);
        return;
_L3:
        if (j1 < 5) goto _L6; else goto _L2
    }

    public void a(ReceivedSnap receivedsnap)
    {
        mSnapsToBeUpdatedOnServer.put(receivedsnap.d(), receivedsnap);
    }

    public void a(FriendsResponse friendsresponse)
    {
        if (friendsresponse == null)
        {
            return;
        } else
        {
            a(friendsresponse.friends, friendsresponse.bests);
            i(friendsresponse.added_friends);
            return;
        }
    }

    public void a(MessagingGatewayInfo messaginggatewayinfo)
    {
        mMessagingGatewayInfo = messaginggatewayinfo;
        String s1 = GsonUtil.a().toJson(messaginggatewayinfo);
        mSlightlySecurePreferences.a(SlightlySecurePreferencesKeys.a, s1);
        BusProvider.a().a(new MessagingGatewayInfoUpdatedEvent());
    }

    public void a(UpdatesResponse updatesresponse)
    {
        if (updatesresponse == null)
        {
            return;
        } else
        {
            AddressBookUtils.a(updatesresponse.last_address_book_updated_date, I());
            UserPrefs.b(updatesresponse);
            Collections.reverse(updatesresponse.recents);
            mNextReplayAvailableRealtime = a(updatesresponse.last_replayed_snap_timestamp, updatesresponse.current_timestamp);
            return;
        }
    }

    public void a(AllUpdatesConversationResponse allupdatesconversationresponse)
    {
        a(allupdatesconversationresponse, false);
    }

    public void a(AllUpdatesConversationResponse allupdatesconversationresponse, boolean flag)
    {
        UpdatesResponse updatesresponse = allupdatesconversationresponse.updates_response;
        FriendsResponse friendsresponse = allupdatesconversationresponse.friends_response;
        StoriesResponse storiesresponse = allupdatesconversationresponse.stories_response;
        List list = allupdatesconversationresponse.conversations_response;
        IdentityCheckResponse identitycheckresponse = allupdatesconversationresponse.identity_check_response;
        ConversationsResponseInfo conversationsresponseinfo = allupdatesconversationresponse.conversations_response_info;
        if (updatesresponse != null)
        {
            a(updatesresponse);
            mUserPrefs.a(updatesresponse.should_show_suggestion_prompt, updatesresponse.suggestion_prompt_link, updatesresponse.suggestion_prompt_text, updatesresponse.suggestion_prompt_button_text, updatesresponse.suggestion_prompt_duration_in_millis);
            DiscoverResponse discoverresponse;
            String s1;
            String s2;
            boolean flag1;
            if (updatesresponse.cash_provider != null)
            {
                s1 = updatesresponse.cash_provider;
            } else
            {
                s1 = "SQUARE";
            }
            if (updatesresponse.cash_customer_id != null)
            {
                s2 = updatesresponse.cash_customer_id;
            } else
            {
                s2 = updatesresponse.username;
            }
            if (updatesresponse.is_cash_active != null)
            {
                flag1 = updatesresponse.is_cash_active.booleanValue();
            } else
            {
                flag1 = true;
            }
            UserPrefs.a(flag1, s1, s2, updatesresponse.allowed_to_use_cash);
            if (flag && UserPrefs.Z() == com.snapchat.android.api2.cash.ScCashResponsePayload.Status.OK && UserPrefs.E() && UserPrefs.ad())
            {
                if (mCashProviderManager.b(s1))
                {
                    mCashProviderManager.a(s1).b();
                } else
                {
                    UserPrefs.S();
                }
            }
        }
        if (friendsresponse != null)
        {
            a(friendsresponse);
        } else
        {
            E();
        }
        if (storiesresponse != null)
        {
            mStoryLibrary.a(storiesresponse.my_stories, storiesresponse.my_group_stories);
            mStoryLibrary.a(storiesresponse.friend_stories, storiesresponse.friend_stories_delta);
        } else
        {
            mStoryLibrary.i();
        }
        if (list != null)
        {
            if (conversationsresponseinfo != null)
            {
                Timber.b("User", (new StringBuilder()).append("Updating conversations with isDelta = ").append(conversationsresponseinfo.is_delta).toString(), new Object[0]);
            }
            Timber.c("User", false, "CHAT-LOG: ALL UPDATES conversations_response: %s", new Object[] {
                list
            });
            mChatConversationManager.a(list, true, true, allupdatesconversationresponse.getRequestTaskId(), flag);
        }
        a(identitycheckresponse);
        if (allupdatesconversationresponse.messaging_gateway_info != null)
        {
            a(allupdatesconversationresponse.messaging_gateway_info);
        }
        discoverresponse = allupdatesconversationresponse.discover;
        if (discoverresponse != null)
        {
            mDiscoverEndpointManager.a(discoverresponse.compatibility, discoverresponse.get_channels, discoverresponse.video_catalog, discoverresponse.resource_parameter_name, discoverresponse.resource_parameter_value);
            return;
        } else
        {
            mDiscoverEndpointManager.a(null, null, null, null, null);
            return;
        }
    }

    protected void a(IdentityCheckResponse identitycheckresponse)
    {
        if (identitycheckresponse != null)
        {
            mUserPrefs.C(PrimitiveUtils.a(identitycheckresponse.a()));
            UserPrefs userprefs = mUserPrefs;
            boolean flag;
            if (!PrimitiveUtils.a(identitycheckresponse.c()))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            userprefs.D(flag);
            mUserPrefs.u(identitycheckresponse.b());
            if (mIdentityUtils.a() && mUserPrefs.aN() + identitycheckresponse.d().longValue() < mClock.a())
            {
                mUserPrefs.B(true);
                return;
            }
        }
    }

    public void a(String s1, boolean flag)
    {
        List list = mFriendsWhoAddedMe;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mFriendsWhoAddedMe.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (TextUtils.equals(friend.a(), s1))
            {
                friend.j(flag);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_68;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public void a(List list)
    {
        final HashMap timestamps = new HashMap();
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            Friend friend = (Friend)iterator.next();
            ChatConversation chatconversation = ConversationUtils.b(friend.a());
            long l1;
            if (chatconversation == null)
            {
                l1 = Math.max(friend.i(), friend.j());
            } else
            {
                l1 = chatconversation.T();
            }
            timestamps.put(friend, new Long(l1));
        }
        Collections.sort(list, new Comparator() {

            final User this$0;
            final HashMap val$timestamps;

            private long a(Friend friend1)
            {
                Long long1 = (Long)timestamps.get(friend1);
                if (long1 == null)
                {
                    return 0L;
                } else
                {
                    return long1.longValue();
                }
            }

            public int a(Friend friend1, Friend friend2)
            {
                return Long.signum(a(friend2) - a(friend1));
            }

            public int compare(Object obj, Object obj1)
            {
                return a((Friend)obj, (Friend)obj1);
            }

            
            {
                this$0 = User.this;
                timestamps = hashmap;
                super();
            }
        });
    }

    public void a(boolean flag)
    {
        mServerHasMostRecentReplayTime = flag;
    }

    public transient void a(final com.snapchat.android.database.table.DbTable.DatabaseTable tablesToUpdate[])
    {
        sExecutorService.execute(new Runnable() {

            final User this$0;
            final com.snapchat.android.database.table.DbTable.DatabaseTable val$tablesToUpdate[];

            public void run()
            {
                b(tablesToUpdate);
            }

            
            {
                this$0 = User.this;
                tablesToUpdate = adatabasetable;
                super();
            }
        });
    }

    public boolean a(Friend friend)
    {
        boolean flag;
        synchronized (mContactsNotOnSnapchat)
        {
            flag = mContactsOnSnapchatSet.contains(friend);
        }
        return flag;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean a(String s1)
    {
        String s2 = s1.toUpperCase(Locale.ENGLISH);
        return mDuplicateFirstNames.contains(s2);
    }

    public Friend b(String s1)
    {
        Friend friend;
        synchronized (mFriends)
        {
            friend = (Friend)mFriendMap.get(s1);
        }
        return friend;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(String s1, boolean flag)
    {
        Friend friend = b(s1);
        if (friend != null)
        {
            friend.d(flag);
        }
        c(s1, flag);
    }

    public void b(List list)
    {
        synchronized (mContactsNotOnSnapchat)
        {
            mContactsNotOnSnapchat.clear();
            mContactsNotOnSnapchat.addAll(list);
        }
        return;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(boolean flag)
    {
        mInitialized = flag;
    }

    protected transient void b(com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable[])
    {
label0:
        {
            synchronized (sUserSyncLock)
            {
                if (UserPrefs.l())
                {
                    break label0;
                }
            }
            return;
        }
        int i1 = adatabasetable.length;
        int j1 = 0;
_L2:
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        adatabasetable[j1].a().c(sInstance);
        j1++;
        if (true) goto _L2; else goto _L1
_L1:
        mChatsReceivedInLastHourTable.a(I());
        mSlightlySecurePreferences.c();
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean b(Friend friend)
    {
        boolean flag;
        synchronized (mFriendsWhoAddedMe)
        {
            flag = mFriendsWhoAddedMe.contains(friend);
        }
        return flag;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Friend c(String s1)
    {
label0:
        {
            Friend friend;
            synchronized (mFriends)
            {
                Iterator iterator = mFriends.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    friend = (Friend)iterator.next();
                } while (!TextUtils.equals(friend.n(), s1));
            }
            return friend;
        }
        list;
        JVM INSTR monitorexit ;
        return null;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void c(Friend friend)
    {
        synchronized (mFriendsWhoAddedMe)
        {
            mFriendsWhoAddedMe.add(friend);
            f(mFriendsWhoAddedMe);
        }
        BusProvider.a().a(new FriendsWhoAddedMeUpdatedEvent());
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void c(String s1, boolean flag)
    {
        List list = mFriendsWhoAddedMe;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mFriendsWhoAddedMe.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (TextUtils.equals(friend.a(), s1))
            {
                friend.d(flag);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_68;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public void c(List list)
    {
        synchronized (mContactsOnSnapchat)
        {
            mContactsOnSnapchat.clear();
            mContactsOnSnapchat.addAll(list);
        }
        return;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int d()
    {
        Iterator iterator = w().iterator();
        int i1 = 0;
        while (iterator.hasNext()) 
        {
            int j1;
            if (((Friend)iterator.next()).i() > mUserPrefs.j())
            {
                j1 = i1 + 1;
            } else
            {
                j1 = i1;
            }
            i1 = j1;
        }
        return i1;
    }

    public void d(Friend friend)
    {
        synchronized (mFriends)
        {
            mFriendMap.put(friend.a(), friend);
            mFriends.remove(friend);
            mFriends.add(friend);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void d(List list)
    {
        List list1 = mFriends;
        list1;
        JVM INSTR monitorenter ;
        mFriends.clear();
        mFriendMap.clear();
        mFriends.addAll(list);
        Friend friend;
        for (Iterator iterator = mFriends.iterator(); iterator.hasNext(); mFriendMap.put(friend.a(), friend))
        {
            friend = (Friend)iterator.next();
        }

        break MISSING_BLOCK_LABEL_94;
        Exception exception;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
        list1;
        JVM INSTR monitorexit ;
        N();
        return;
    }

    public boolean d(String s1)
    {
        boolean flag;
        synchronized (mFriends)
        {
            flag = mFriendMap.containsKey(s1);
        }
        return flag;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Map e()
    {
        return mStoryViewRecordsSinceLastServerChange;
    }

    public void e(Friend friend)
    {
        synchronized (mFriends)
        {
            mFriendMap.remove(friend.a());
            mFriends.remove(friend);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void e(String s1)
    {
        mMessagingGatewayInfo.setGatewayServer(s1);
        String s2 = GsonUtil.a().toJson(mMessagingGatewayInfo);
        mSlightlySecurePreferences.a(SlightlySecurePreferencesKeys.a, s2);
        BusProvider.a().a(new MessagingGatewayInfoUpdatedEvent());
    }

    public void e(List list)
    {
        Collections.sort(list, new Comparator() {

            final User this$0;

            public int a(Friend friend, Friend friend1)
            {
                long l1 = friend1.i() - friend.i();
                if (l1 < 0xffffffff80000000L)
                {
                    return 0x80000000;
                }
                if (l1 > 0x7fffffffL)
                {
                    return 0x7fffffff;
                } else
                {
                    return (int)l1;
                }
            }

            public int compare(Object obj, Object obj1)
            {
                return a((Friend)obj, (Friend)obj1);
            }

            
            {
                this$0 = User.this;
                super();
            }
        });
        synchronized (mFriendsWhoAddedMe)
        {
            mFriendsWhoAddedMe.clear();
            mFriendsWhoAddedMe.addAll(list);
        }
        BusProvider.a().a(new FriendsWhoAddedMeUpdatedEvent());
        return;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ArrayList f()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.addAll(mStoryLibrary.f());
        arraylist.addAll(g());
        return arraylist;
    }

    public void f(List list)
    {
        Collections.sort(list, new Comparator() {

            final User this$0;

            public int a(Friend friend, Friend friend1)
            {
                long l1 = friend1.i() - friend.i();
                if (l1 < 0xffffffff80000000L)
                {
                    return 0x80000000;
                }
                if (l1 > 0x7fffffffL)
                {
                    return 0x7fffffff;
                } else
                {
                    return (int)l1;
                }
            }

            public int compare(Object obj, Object obj1)
            {
                return a((Friend)obj, (Friend)obj1);
            }

            
            {
                this$0 = User.this;
                super();
            }
        });
    }

    public ArrayList g()
    {
        ArrayList arraylist;
        arraylist = new ArrayList();
        arraylist.addAll(mBests);
        arraylist.addAll(mRecents);
        List list = mFriends;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mFriends.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (!friend.x() && !friend.H() && !friend.J())
            {
                arraylist.add(friend);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_110;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        return arraylist;
    }

    public void g(List list)
    {
        mFriendsBlockedFromSeeingMyStory = list;
    }

    public ArrayList h()
    {
        ArrayList arraylist;
        ArrayList arraylist1;
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        List list = mFriends;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator;
        Collections.sort(mFriends);
        iterator = mFriends.iterator();
_L1:
        Friend friend;
        do
        {
            do
            {
                if (!iterator.hasNext())
                {
                    break MISSING_BLOCK_LABEL_112;
                }
                friend = (Friend)iterator.next();
            } while (TextUtils.equals(friend.a(), UserPrefs.k()));
            if (!friend.x())
            {
                break MISSING_BLOCK_LABEL_102;
            }
            arraylist1.add(friend);
        } while (true);
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        arraylist.add(friend);
          goto _L1
        list;
        JVM INSTR monitorexit ;
        arraylist.addAll(arraylist1);
        return arraylist;
    }

    public void h(List list)
    {
        if (list == null)
        {
            return;
        }
        List list1 = mFriends;
        list1;
        JVM INSTR monitorenter ;
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ServerFriend serverfriend = (ServerFriend)iterator.next();
            if (serverfriend.type != 3)
            {
                Friend friend = new Friend(serverfriend, this);
                friend.N();
                mFriends.add(friend);
                mFriendMap.put(friend.a(), friend);
                if (!serverfriend.mCanSeeCustomStories)
                {
                    mFriendsBlockedFromSeeingMyStory.add(serverfriend.username);
                }
            }
        } while (true);
        break MISSING_BLOCK_LABEL_128;
        Exception exception;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
        Collections.sort(mFriends);
        list1;
        JVM INSTR monitorexit ;
    }

    public ArrayList i()
    {
        ArrayList arraylist = new ArrayList();
        List list = mFriends;
        list;
        JVM INSTR monitorenter ;
        Collections.sort(mFriends);
        Iterator iterator = mFriends.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (!TextUtils.equals(friend.a(), UserPrefs.k()) && !friend.x() && friend.g())
            {
                arraylist.add(friend);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_100;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        return arraylist;
    }

    public ArrayList j()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = s().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (!friend.a().equals(UserPrefs.k()) && !friend.x() && !friend.H() && !friend.J())
            {
                arraylist.add(friend);
            }
        } while (true);
        Collections.sort(arraylist);
        return arraylist;
    }

    public List k()
    {
        ArrayList arraylist = new ArrayList(mBests);
        List list = mFriends;
        list;
        JVM INSTR monitorenter ;
        Collections.sort(mFriends);
        Iterator iterator = mFriends.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (FriendUtils.a(friend))
            {
                arraylist.add(friend);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_84;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        return arraylist;
    }

    public List l()
    {
        ArrayList arraylist = new ArrayList();
        List list = mFriends;
        list;
        JVM INSTR monitorenter ;
        Collections.sort(mFriends);
        Iterator iterator = mFriends.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (FriendUtils.a(friend))
            {
                arraylist.add(friend);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_80;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        return arraylist;
    }

    public List m()
    {
        return mBests;
    }

    public List n()
    {
        return mContactsNotOnSnapchat;
    }

    public List o()
    {
        ArrayList arraylist;
        synchronized (mContactsNotOnSnapchat)
        {
            arraylist = new ArrayList(mContactsNotOnSnapchat);
        }
        return arraylist;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Set p()
    {
        return mContactsOnSnapchatSet;
    }

    public List q()
    {
        return mContactsOnSnapchat;
    }

    public List r()
    {
        ArrayList arraylist;
        synchronized (mContactsOnSnapchat)
        {
            arraylist = new ArrayList(mContactsOnSnapchat);
        }
        return arraylist;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public List s()
    {
        ArrayList arraylist;
        synchronized (mFriends)
        {
            arraylist = new ArrayList(mFriends);
        }
        return arraylist;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int t()
    {
        return mFriends.size();
    }

    public String toString()
    {
        return (new StringBuilder()).append("User [logged=").append(UserPrefs.l()).append(", username=").append(UserPrefs.k()).append(", serverToken=").append(UserPrefs.u()).append(", email=").append(UserPrefs.v()).append(", phoneNumber=").append(UserPrefs.f()).append("]").toString();
    }

    public List u()
    {
        return mRecents;
    }

    public List v()
    {
        return mRequests;
    }

    public List w()
    {
        ArrayList arraylist;
        synchronized (mFriendsWhoAddedMe)
        {
            arraylist = new ArrayList(mFriendsWhoAddedMe);
        }
        return arraylist;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public long x()
    {
        Iterator iterator = w().iterator();
        long l1;
        for (l1 = 0L; iterator.hasNext(); l1 = Math.max(((Friend)iterator.next()).i(), l1)) { }
        return l1;
    }

    public List y()
    {
        ArrayList arraylist;
        HashSet hashset;
        arraylist = new ArrayList();
        hashset = new HashSet();
        List list = mFriends;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mFriends.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend1 = (Friend)iterator.next();
            if (friend1.x())
            {
                arraylist.add(friend1);
                hashset.add(friend1);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_90;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        List list1 = mFriendsWhoAddedMe;
        list1;
        JVM INSTR monitorenter ;
        Iterator iterator1 = mFriendsWhoAddedMe.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator1.next();
            if (friend.x() && !hashset.contains(friend))
            {
                arraylist.add(friend);
                hashset.add(friend);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_180;
        Exception exception1;
        exception1;
        list1;
        JVM INSTR monitorexit ;
        throw exception1;
        list1;
        JVM INSTR monitorexit ;
        return arraylist;
    }

    public MessagingGatewayInfo z()
    {
        return mMessagingGatewayInfo;
    }

}
