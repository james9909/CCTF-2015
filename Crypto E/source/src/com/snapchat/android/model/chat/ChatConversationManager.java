// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import android.content.SharedPreferences;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import com.snapchat.android.chat.ChatConversationUpdater;
import com.snapchat.android.chat.ChatGapDetector;
import com.snapchat.android.chat.ChatMessageReleaser;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.chat.FeedIconManager;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.chat.ServerChatConversation;
import com.snapchat.android.util.ListViewAdapterList;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ConversationListUpdatedEvent;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.snapchat.android.model.chat:
//            ChatConversation

public class ChatConversationManager
{

    private static final String TAG = "ChatConversationManager";
    private static ChatConversationManager sInstance;
    private final ChatMessageReleaser mChatMessageReleaser;
    private final ChatConversationUpdater mConversationUpdater;
    private final List mConversations = Collections.synchronizedList(new ArrayList());
    private final ListViewAdapterList mConversationsForListView = new ListViewAdapterList();
    private String mIterToken;
    private final SendingMailman mSendingMailman;

    protected ChatConversationManager(ChatConversationUpdater chatconversationupdater, ChatMessageReleaser chatmessagereleaser, SendingMailman sendingmailman)
    {
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e());
        mConversationUpdater = chatconversationupdater;
        mChatMessageReleaser = chatmessagereleaser;
        mSendingMailman = sendingmailman;
        mIterToken = sharedpreferences.getString(SharedPreferenceKey.af.a(), null);
    }

    private ChatConversation a(String s, String s1, boolean flag)
    {
        ChatConversation chatconversation = new ChatConversation(s, s1);
        if (!flag)
        {
            mSendingMailman.f(chatconversation);
        }
        a(chatconversation);
        return chatconversation;
    }

    public static ChatConversationManager a()
    {
        com/snapchat/android/model/chat/ChatConversationManager;
        JVM INSTR monitorenter ;
        ChatConversationManager chatconversationmanager;
        if (sInstance == null)
        {
            sInstance = new ChatConversationManager(new ChatConversationUpdater(SendingMailman.a(), ChatGapDetector.a(), FeedIconManager.a(), SnapWomb.a(), LoadConversationPageTaskExecutor.a()), new ChatMessageReleaser(), SendingMailman.a());
        }
        chatconversationmanager = sInstance;
        com/snapchat/android/model/chat/ChatConversationManager;
        JVM INSTR monitorexit ;
        return chatconversationmanager;
        Exception exception;
        exception;
        throw exception;
    }

    private void a(ChatConversation chatconversation)
    {
        mConversations.add(chatconversation);
        f();
    }

    private void a(AtomicBoolean atomicboolean)
    {
        AtomicInteger atomicinteger = new AtomicInteger(0);
        for (Iterator iterator = mConversations.iterator(); iterator.hasNext(); ((ChatConversation)iterator.next()).a(3, null, false, atomicboolean, atomicinteger)) { }
    }

    public static void b()
    {
        com/snapchat/android/model/chat/ChatConversationManager;
        JVM INSTR monitorenter ;
        sInstance = null;
        com/snapchat/android/model/chat/ChatConversationManager;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void m()
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()).edit();
        if (mIterToken == null)
        {
            editor.remove(SharedPreferenceKey.af.a());
        } else
        {
            editor.putString(SharedPreferenceKey.af.a(), sInstance.mIterToken);
        }
        editor.apply();
    }

    public ChatConversation a(String s)
    {
        if (s == null)
        {
            if (ReleaseManager.e())
            {
                throw new NullPointerException("Attempt to get/start conversation with null friend.");
            } else
            {
                return null;
            }
        } else
        {
            return a(s, false, false, true);
        }
    }

    public ChatConversation a(String s, boolean flag)
    {
        return a(s, flag, true, true);
    }

    public ChatConversation a(String s, boolean flag, boolean flag1, boolean flag2)
    {
        List list = mConversations;
        list;
        JVM INSTR monitorenter ;
        String s1 = UserPrefs.k();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        String s2;
        Iterator iterator;
        s2 = ChatUtils.a(s1, s);
        iterator = mConversations.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ChatConversation chatconversation = (ChatConversation)iterator.next();
        if (!TextUtils.equals(s2, chatconversation.u())) goto _L4; else goto _L3
_L3:
        if (chatconversation != null)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        Timber.f("ChatConversationManager", (new StringBuilder()).append("CHAT-LOG: ChatConversationManager CREATING NEW CONVERSATION with ").append(s).toString(), new Object[0]);
        chatconversation = a(s1, s, flag);
        chatconversation.n(flag1);
        chatconversation.o(flag2);
_L5:
        list;
        JVM INSTR monitorexit ;
        return chatconversation;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        chatconversation = null;
          goto _L3
        chatconversation = null;
          goto _L5
    }

    public void a(SentSnap sentsnap, Map map)
    {
        String s = sentsnap.q();
        Uri uri = null;
        if (s != null)
        {
            uri = Uri.parse(sentsnap.q());
        }
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s1 = (String)entry.getKey();
            com.snapchat.android.model.server.SnapOrStoryDoublePostResponse.SnapData snapdata = (com.snapchat.android.model.server.SnapOrStoryDoublePostResponse.SnapData)entry.getValue();
            SentSnap sentsnap1 = new SentSnap(snapdata.id, sentsnap.x(), sentsnap.ae(), snapdata.timestamp, sentsnap.ao(), com.snapchat.android.model.Snap.ClientSnapStatus.SENT, s1, sentsnap.f(), uri, sentsnap.r(), sentsnap.k());
            ChatConversation chatconversation = a(s1);
            if (chatconversation != null)
            {
                chatconversation.a(sentsnap1);
                chatconversation.a(sentsnap1);
            }
        } while (true);
        f();
    }

    public void a(ChatConversation chatconversation, ServerChatConversation serverchatconversation, boolean flag, boolean flag1)
    {
        mConversationUpdater.a(chatconversation, serverchatconversation, flag, flag1);
    }

    public void a(List list)
    {
        a(list, false);
    }

    public void a(List list, boolean flag)
    {
        synchronized (mConversations)
        {
            mConversations.clear();
            mConversations.addAll(list);
        }
        f();
        if (flag)
        {
            a(new AtomicBoolean(false));
        }
        return;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(List list, boolean flag, boolean flag1, int i1)
    {
        a(list, flag, flag1, i1, false);
    }

    public void a(List list, boolean flag, boolean flag1, int i1, boolean flag2)
    {
        if (list.isEmpty())
        {
            return;
        }
        List list1 = mConversations;
        list1;
        JVM INSTR monitorenter ;
        if (!mConversations.isEmpty()) goto _L2; else goto _L1
_L1:
        long l1 = 0L;
_L11:
        long l2 = ((ServerChatConversation)list.get(-1 + list.size())).last_interaction_ts;
        Exception exception;
        boolean flag3;
        long l3;
        HashSet hashset;
        Iterator iterator;
        Iterator iterator1;
        ChatConversation chatconversation;
        ServerChatConversation serverchatconversation;
        ChatConversation chatconversation1;
        ChatConversation chatconversation2;
        long l4;
        Object aobj[];
        ChatConversation chatconversation3;
        if (flag && l2 > l1)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        l3 = 0x7fffffffffffffffL;
        hashset = new HashSet();
        iterator = list.iterator();
_L14:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        serverchatconversation = (ServerChatConversation)iterator.next();
        chatconversation1 = ConversationUtils.a(serverchatconversation.id);
        if (chatconversation1 == null) goto _L6; else goto _L5
_L5:
        a(chatconversation1, serverchatconversation, false, true);
        if (!chatconversation1.A())
        {
            aobj = new Object[1];
            aobj[0] = chatconversation1.u();
            Timber.f("ChatConversationManager", "CHAT-LOG: ChatConversationManager sending release message for %s", aobj);
            mChatMessageReleaser.a(chatconversation1, com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType.DELETE);
        }
        if (!chatconversation1.aC()) goto _L8; else goto _L7
_L7:
        chatconversation1.n(false);
        chatconversation2 = chatconversation1;
_L13:
        if (chatconversation2 == null) goto _L10; else goto _L9
_L9:
        l4 = chatconversation2.T();
        if (l4 >= l3)
        {
            l4 = l3;
        }
        hashset.add(chatconversation2.u());
        break MISSING_BLOCK_LABEL_478;
_L2:
        l1 = ((ChatConversation)mConversations.get(0)).T();
          goto _L11
_L6:
        chatconversation3 = ServerChatConversation.getClientChatConversation(serverchatconversation, false);
        if (chatconversation3 == null) goto _L8; else goto _L12
_L12:
        mConversations.add(chatconversation3);
        chatconversation2 = chatconversation3;
          goto _L13
_L4:
        a(new AtomicBoolean(flag2));
        if (!flag3)
        {
            break MISSING_BLOCK_LABEL_417;
        }
        iterator1 = mConversations.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            chatconversation = (ChatConversation)iterator1.next();
            if (chatconversation.T() <= l3 && !chatconversation.ap() && !hashset.contains(chatconversation.u()) && !chatconversation.A() && !TextUtils.equals(chatconversation.c(), ChatFragment.c))
            {
                iterator1.remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_417;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_449;
        }
        mIterToken = ((ServerChatConversation)list.get(-1 + list.size())).iter_token;
        m();
        f();
        list1;
        JVM INSTR monitorexit ;
        return;
_L10:
        l4 = l3;
        break MISSING_BLOCK_LABEL_478;
_L8:
        chatconversation2 = chatconversation1;
          goto _L13
        l3 = l4;
          goto _L14
    }

    public ChatConversation b(String s)
    {
        if (s == null)
        {
            if (ReleaseManager.e())
            {
                throw new NullPointerException("Attempt to get/start conversation with null friend.");
            } else
            {
                return null;
            }
        } else
        {
            return a(s, true, false, false);
        }
    }

    public String c()
    {
        return mIterToken;
    }

    public void c(String s)
    {
label0:
        {
            synchronized (mConversations)
            {
                Iterator iterator = mConversations.iterator();
                ChatConversation chatconversation;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    chatconversation = (ChatConversation)iterator.next();
                } while (!chatconversation.u().equals(s));
                chatconversation.x();
                iterator.remove();
                f();
            }
            return;
        }
        list;
        JVM INSTR monitorexit ;
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public List d()
    {
        return Collections.unmodifiableList(new ArrayList(mConversations));
    }

    public ListViewAdapterList e()
    {
        return mConversationsForListView;
    }

    public void f()
    {
        ThreadUtils.b(new Runnable() {

            final ChatConversationManager this$0;

            public void run()
            {
                g();
            }

            
            {
                this$0 = ChatConversationManager.this;
                super();
            }
        });
    }

    protected void g()
    {
        ThreadUtils.b();
        synchronized (mConversations)
        {
            Collections.sort(mConversations);
        }
_L2:
        ThreadUtils.a(new Runnable() {

            final ChatConversationManager this$0;

            public void run()
            {
                h();
            }

            
            {
                this$0 = ChatConversationManager.this;
                super();
            }
        });
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Timber.e("ChatConversationManager", "Comparison method violates its general contract! ChatConversation timestamp transitivity is not preserved in the sorting process.", new Object[0]);
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void h()
    {
        ThreadUtils.a();
        mConversationsForListView.clear();
        synchronized (mConversations)
        {
            mConversationsForListView.addAll(mConversations);
        }
        BusProvider.a().a(new ConversationListUpdatedEvent());
        User user = User.c();
        if (user != null)
        {
            user.a();
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void i()
    {
        List list = mConversations;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mConversations.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatConversation chatconversation = (ChatConversation)iterator.next();
            if (chatconversation.aB())
            {
                chatconversation.x();
                iterator.remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_64;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        mIterToken = null;
        m();
        list;
        JVM INSTR monitorexit ;
        f();
        return;
    }

    public void j()
    {
        List list = mConversations;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mConversations.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatConversation chatconversation = (ChatConversation)iterator.next();
            if (chatconversation.aC() && !chatconversation.A())
            {
                iterator.remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_67;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        f();
        return;
    }

    public void k()
    {
        List list = mConversations;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mConversations.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatConversation chatconversation = (ChatConversation)iterator.next();
            if (chatconversation.an() && chatconversation.P())
            {
                iterator.remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_67;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public void l()
    {
        synchronized (mConversations)
        {
            mConversations.clear();
        }
        f();
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
