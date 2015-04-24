// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import com.snapchat.android.Timber;
import com.snapchat.android.api.LoadStorySnapMediaTask;
import com.snapchat.android.controller.countdown.SnapCountdownController;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.cache.Storage;
import com.snapchat.android.util.primitives.LongUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.model:
//            ChronologicalSnapProvider, User, FriendStoryBook, FriendStorySnap, 
//            StorySnap, Friend, ReceivedSnap

public class StoryCollection
    implements ChronologicalSnapProvider, Comparable
{
    public static final class StoriesFragmentRecentsPriority extends Enum
    {

        private static final StoriesFragmentRecentsPriority $VALUES[];
        public static final StoriesFragmentRecentsPriority LIVE;
        public static final StoriesFragmentRecentsPriority LOCAL;
        public static final StoriesFragmentRecentsPriority RECENT_UPDATES;

        public static StoriesFragmentRecentsPriority valueOf(String s)
        {
            return (StoriesFragmentRecentsPriority)Enum.valueOf(com/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority, s);
        }

        public static StoriesFragmentRecentsPriority[] values()
        {
            return (StoriesFragmentRecentsPriority[])$VALUES.clone();
        }

        static 
        {
            RECENT_UPDATES = new StoriesFragmentRecentsPriority("RECENT_UPDATES", 0);
            LIVE = new StoriesFragmentRecentsPriority("LIVE", 1);
            LOCAL = new StoriesFragmentRecentsPriority("LOCAL", 2);
            StoriesFragmentRecentsPriority astoriesfragmentrecentspriority[] = new StoriesFragmentRecentsPriority[3];
            astoriesfragmentrecentspriority[0] = RECENT_UPDATES;
            astoriesfragmentrecentspriority[1] = LIVE;
            astoriesfragmentrecentspriority[2] = LOCAL;
            $VALUES = astoriesfragmentrecentspriority;
        }

        private StoriesFragmentRecentsPriority(String s, int k)
        {
            super(s, k);
        }
    }


    private static final String TAG = "StoryCollection";
    private final SnapCountdownController mCountdownController;
    private boolean mHasSeenTapToSkipTeacher;
    protected int mIndexOfLastStoryViewed;
    private int mSecondsLeftInCollection;
    protected final List mStorySnaps;
    protected final Object mStorySnapsMutex;
    protected final List mUnviewedStorySnaps;
    protected boolean mUserHasSeenInFeed;
    private final Provider mUserProvider;
    protected String mUsername;

    public StoryCollection()
    {
        this(User.UNSAFE_USER_PROVIDER);
    }

    public StoryCollection(FriendStoryBook friendstorybook)
    {
        mCountdownController = SnapCountdownController.a();
        mStorySnapsMutex = new Object();
        mUserHasSeenInFeed = true;
        mSecondsLeftInCollection = 0;
        mHasSeenTapToSkipTeacher = false;
        mUserHasSeenInFeed = false;
        mHasSeenTapToSkipTeacher = false;
        mStorySnaps = Collections.synchronizedList(new ArrayList(friendstorybook.b().size()));
        StorySnap storysnap;
        for (Iterator iterator = friendstorybook.b().iterator(); iterator.hasNext(); mStorySnaps.add(storysnap))
        {
            FriendStorySnap friendstorysnap = (FriendStorySnap)iterator.next();
            storysnap = friendstorysnap.a();
            storysnap.f(friendstorysnap.b());
            mCountdownController.d(storysnap);
        }

        mUnviewedStorySnaps = new ArrayList();
        mUserProvider = User.UNSAFE_USER_PROVIDER;
        mUsername = ((StorySnap)mStorySnaps.get(0)).l();
        mIndexOfLastStoryViewed = -1 + mStorySnaps.size();
        b();
    }

    public StoryCollection(List list)
    {
        this(list, User.UNSAFE_USER_PROVIDER);
    }

    protected StoryCollection(List list, List list1)
    {
        this(list, list1, User.UNSAFE_USER_PROVIDER);
    }

    protected StoryCollection(List list, List list1, Provider provider)
    {
        mCountdownController = SnapCountdownController.a();
        mStorySnapsMutex = new Object();
        mUserHasSeenInFeed = true;
        mSecondsLeftInCollection = 0;
        mHasSeenTapToSkipTeacher = false;
        mStorySnaps = Collections.synchronizedList(list);
        mUnviewedStorySnaps = Collections.synchronizedList(list1);
        mUserProvider = provider;
    }

    protected StoryCollection(List list, Provider provider)
    {
        mCountdownController = SnapCountdownController.a();
        mStorySnapsMutex = new Object();
        mUserHasSeenInFeed = true;
        mSecondsLeftInCollection = 0;
        mHasSeenTapToSkipTeacher = false;
        if (list == null)
        {
            throw new NullPointerException();
        }
        mUserProvider = provider;
        mStorySnaps = Collections.synchronizedList(list);
        mUnviewedStorySnaps = Collections.synchronizedList(new ArrayList());
        if (list.isEmpty())
        {
            return;
        } else
        {
            mUsername = ((StorySnap)list.get(0)).l();
            mIndexOfLastStoryViewed = -1 + C();
            b();
            return;
        }
    }

    protected StoryCollection(Provider provider)
    {
        mCountdownController = SnapCountdownController.a();
        mStorySnapsMutex = new Object();
        mUserHasSeenInFeed = true;
        mSecondsLeftInCollection = 0;
        mHasSeenTapToSkipTeacher = false;
        mStorySnaps = Collections.synchronizedList(new ArrayList());
        mUnviewedStorySnaps = Collections.synchronizedList(new ArrayList());
        mUserProvider = provider;
    }

    private LinkedHashMap a(List list)
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap(list.size());
        StorySnap storysnap;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); linkedhashmap.put(storysnap.d(), storysnap))
        {
            storysnap = (StorySnap)iterator.next();
        }

        return linkedhashmap;
    }

    private void a(int k, List list)
    {
        mSecondsLeftInCollection = 0;
        for (int i1 = 0; i1 < k; i1++)
        {
            mSecondsLeftInCollection = mSecondsLeftInCollection + (int)Math.ceil(((StorySnap)list.get(i1)).M());
        }

    }

    private boolean a(List list, boolean flag)
    {
        int i1;
        int j1;
        int k = -1 + list.size();
        i1 = Math.max(0, 1 + (k - 3));
        j1 = k;
_L4:
        StorySnap storysnap;
        boolean flag2;
        if (j1 < i1)
        {
            break; /* Loop/switch isn't completed */
        }
        storysnap = (StorySnap)list.get(j1);
        if (storysnap.am() && Storage.b() == null)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (!flag) goto _L2; else goto _L1
_L6:
        j1--;
        if (true) goto _L4; else goto _L3
_L1:
        if (flag2 || !storysnap.Z()) goto _L6; else goto _L5
_L5:
        return true;
_L2:
        if (!flag2 && (!storysnap.U() || storysnap.Z()))
        {
            return false;
        }
          goto _L6
_L3:
        boolean flag1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag1;
    }

    private void b()
    {
        Object obj = mStorySnapsMutex;
        obj;
        JVM INSTR monitorenter ;
        mUnviewedStorySnaps.clear();
        Iterator iterator = mStorySnaps.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            StorySnap storysnap = (StorySnap)iterator.next();
            if (!storysnap.F())
            {
                mUnviewedStorySnaps.add(storysnap);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_74;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    private boolean c()
    {
        User user = (User)mUserProvider.get();
        if (user == null)
        {
            return false;
        }
        Friend friend = user.b(mUsername);
        if (friend == null)
        {
            return false;
        } else
        {
            return friend.H();
        }
    }

    protected List A()
    {
        ArrayList arraylist;
        synchronized (mStorySnapsMutex)
        {
            arraylist = new ArrayList(mStorySnaps);
        }
        return arraylist;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected List B()
    {
        ArrayList arraylist;
        synchronized (mStorySnapsMutex)
        {
            arraylist = new ArrayList(mUnviewedStorySnaps);
        }
        return arraylist;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int C()
    {
        return mStorySnaps.size();
    }

    public StorySnap D()
    {
        StorySnap storysnap;
        synchronized (mStorySnapsMutex)
        {
            mIndexOfLastStoryViewed = -1 + C();
            storysnap = (StorySnap)mStorySnaps.get(mIndexOfLastStoryViewed);
            a(mIndexOfLastStoryViewed, mStorySnaps);
        }
        return storysnap;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean E()
    {
        return mIndexOfLastStoryViewed == 0;
    }

    public StorySnap F()
    {
        Object obj = mStorySnapsMutex;
        obj;
        JVM INSTR monitorenter ;
        StorySnap storysnap;
        if (mIndexOfLastStoryViewed < 0 || mIndexOfLastStoryViewed >= mStorySnaps.size())
        {
            break MISSING_BLOCK_LABEL_51;
        }
        storysnap = (StorySnap)mStorySnaps.get(mIndexOfLastStoryViewed);
        return storysnap;
        obj;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public StorySnap G()
    {
label0:
        {
            synchronized (mStorySnapsMutex)
            {
                if (!mUnviewedStorySnaps.isEmpty())
                {
                    break label0;
                }
            }
            return null;
        }
        StorySnap storysnap;
        storysnap = (StorySnap)mUnviewedStorySnaps.get(-1 + mUnviewedStorySnaps.size());
        a(-1 + mUnviewedStorySnaps.size(), mUnviewedStorySnaps);
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(mUnviewedStorySnaps.size());
        Timber.c("StoryCollection", "Unviewed story snaps size %d", aobj);
        Object aobj1[] = new Object[1];
        aobj1[0] = storysnap.d();
        Timber.c("StoryCollection", "Returning story snap %s", aobj1);
        int k = 0;
_L2:
        if (k >= mUnviewedStorySnaps.size())
        {
            break; /* Loop/switch isn't completed */
        }
        StorySnap storysnap1 = (StorySnap)mUnviewedStorySnaps.get(k);
        Object aobj2[] = new Object[6];
        aobj2[0] = Integer.valueOf(k);
        aobj2[1] = storysnap1.d();
        aobj2[2] = Boolean.valueOf(storysnap1.U());
        aobj2[3] = Boolean.valueOf(storysnap1.Z());
        aobj2[4] = Boolean.valueOf(storysnap1.D());
        aobj2[5] = Boolean.valueOf(storysnap1.F());
        Timber.c("StoryCollection", "Unviewed storySnap #%d %s is loaded/loading? %s %s being viewed/viewed? %s %s", aobj2);
        k++;
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        JVM INSTR monitorexit ;
        return storysnap;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean H()
    {
        boolean flag;
        synchronized (mStorySnapsMutex)
        {
            flag = a(mUnviewedStorySnaps, true);
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean I()
    {
        boolean flag;
        synchronized (mStorySnapsMutex)
        {
            flag = a(mStorySnaps, true);
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean J()
    {
        boolean flag;
        synchronized (mStorySnapsMutex)
        {
            flag = a(mUnviewedStorySnaps, false);
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean K()
    {
        boolean flag;
        synchronized (mStorySnapsMutex)
        {
            flag = a(mStorySnaps, false);
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected long L()
    {
        StorySnap storysnap = (StorySnap)mStorySnaps.get(0);
        if (storysnap != null)
        {
            return storysnap.ae();
        } else
        {
            return -1L;
        }
    }

    public boolean M()
    {
label0:
        {
            synchronized (mStorySnapsMutex)
            {
                Iterator iterator = mStorySnaps.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                } while (!((StorySnap)iterator.next()).e());
            }
            return true;
        }
        obj;
        JVM INSTR monitorexit ;
        return false;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean N()
    {
label0:
        {
            boolean flag1;
            synchronized (mStorySnapsMutex)
            {
                if (!mStorySnaps.isEmpty())
                {
                    break label0;
                }
                flag1 = c();
            }
            return flag1;
        }
        boolean flag = ((StorySnap)mStorySnaps.get(0)).aJ();
        obj;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean O()
    {
        User user = (User)mUserProvider.get();
        if (user == null)
        {
            return false;
        }
        Friend friend = user.b(mUsername);
        if (friend == null)
        {
            return false;
        } else
        {
            return friend.J();
        }
    }

    public boolean P()
    {
        return N() && !O();
    }

    public StoriesFragmentRecentsPriority Q()
    {
        if (O())
        {
            return StoriesFragmentRecentsPriority.LOCAL;
        }
        if (P())
        {
            return StoriesFragmentRecentsPriority.LIVE;
        } else
        {
            return StoriesFragmentRecentsPriority.RECENT_UPDATES;
        }
    }

    public int a(int k, ReceivedSnap receivedsnap, boolean flag)
    {
        return a(k, receivedsnap, flag, com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext.LOAD_STORY_SNAP_BY_DEFAULT);
    }

    public int a(int k, ReceivedSnap receivedsnap, boolean flag, com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext loadingreceivedsnapcontext)
    {
        return a(k, receivedsnap, flag, loadingreceivedsnapcontext, new AtomicBoolean(false), new AtomicInteger(0));
    }

    public int a(int k, ReceivedSnap receivedsnap, boolean flag, com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext loadingreceivedsnapcontext, AtomicBoolean atomicboolean, AtomicInteger atomicinteger)
    {
        Iterator iterator;
        int i1;
        iterator = a(k, (StorySnap)receivedsnap).iterator();
        i1 = 0;
_L2:
        int j1;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        StorySnap storysnap = (StorySnap)iterator.next();
        if (storysnap.U())
        {
            break MISSING_BLOCK_LABEL_108;
        }
        i1++;
        if (storysnap.Z())
        {
            break MISSING_BLOCK_LABEL_108;
        }
        storysnap.a(loadingreceivedsnapcontext);
        (new LoadStorySnapMediaTask(storysnap, flag, atomicboolean, atomicinteger)).executeOnExecutor(ScExecutors.b, new Void[0]);
        j1 = i1;
        flag = false;
_L3:
        i1 = j1;
        if (true) goto _L2; else goto _L1
_L1:
        return i1;
        j1 = i1;
          goto _L3
    }

    public int a(StoryCollection storycollection)
    {
        return LongUtils.a(storycollection.L(), L());
    }

    public String a()
    {
        return mUsername;
    }

    public String a(Context context)
    {
        return ((StorySnap)mStorySnaps.get(0)).c(context);
    }

    public List a(int k, StorySnap storysnap)
    {
        List list;
        int i1;
        int k1;
        list = m();
        i1 = -1 + list.size();
        if (storysnap == null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        k1 = i1;
_L3:
        if (k1 < 0)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        if (!((StorySnap)list.get(k1)).equals(storysnap)) goto _L2; else goto _L1
_L1:
        int j1 = Math.max(0, k1 - 1);
_L4:
        return list.subList(Math.max(0, (j1 + 1) - k), j1 + 1);
_L2:
        k1--;
          goto _L3
        j1 = i1;
          goto _L4
    }

    public void a(FriendStoryBook friendstorybook, List list, boolean flag)
    {
        Object obj = mStorySnapsMutex;
        obj;
        JVM INSTR monitorenter ;
        LinkedHashMap linkedhashmap;
        LinkedHashMap linkedhashmap1;
        LinkedHashMap linkedhashmap2;
        StorySnap storysnap;
        Iterator iterator;
        Timber.c("StoryCollection", (new StringBuilder()).append("Updating stories with result from server. Delta? ").append(flag).toString(), new Object[0]);
        linkedhashmap = a(mStorySnaps);
        linkedhashmap1 = a(mUnviewedStorySnaps);
        linkedhashmap2 = a(list);
        storysnap = F();
        mStorySnaps.clear();
        mUnviewedStorySnaps.clear();
        iterator = friendstorybook.b().iterator();
_L11:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        FriendStorySnap friendstorysnap;
        StorySnap storysnap1;
        boolean flag1;
        friendstorysnap = (FriendStorySnap)iterator.next();
        storysnap1 = friendstorysnap.a();
        flag1 = linkedhashmap.containsKey(storysnap1.d());
        if (!flag1) goto _L4; else goto _L3
_L3:
        StorySnap storysnap2;
        SponsoredStoryMetadata sponsoredstorymetadata = storysnap1.f();
        storysnap2 = (StorySnap)linkedhashmap.get(storysnap1.d());
        storysnap2.a(sponsoredstorymetadata);
        StorySnap storysnap3 = storysnap2;
          goto _L5
_L13:
        mStorySnaps.add(storysnap3);
_L14:
        if (!flag) goto _L7; else goto _L6
_L6:
        if (linkedhashmap1.containsKey(storysnap3.d()))
        {
            break MISSING_BLOCK_LABEL_483;
        }
          goto _L7
_L15:
        if (!storysnap3.e()) goto _L9; else goto _L8
_L8:
        if (!friendstorysnap.b())
        {
            storysnap3.f(false);
        }
        boolean flag2;
        if (storysnap3.F() || !flag2) goto _L11; else goto _L10
_L10:
        mUnviewedStorySnaps.add(storysnap3);
          goto _L11
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        mUserHasSeenInFeed = false;
        if (linkedhashmap2.containsKey(storysnap1.d()))
        {
            break MISSING_BLOCK_LABEL_306;
        }
        list.add(storysnap1);
        storysnap3 = storysnap1;
        continue; /* Loop/switch isn't completed */
        Timber.d("StoryCollection", (new StringBuilder()).append("Story ").append(storysnap1.d()).append(" was found in database but not in the data model.").toString(), new Object[0]);
        storysnap3 = storysnap1;
        continue; /* Loop/switch isn't completed */
_L9:
        boolean flag3;
        if (friendstorysnap.b() || storysnap3.F())
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        storysnap3.f(flag3);
        if (flag3 || !flag2) goto _L11; else goto _L12
_L12:
        mUnviewedStorySnaps.add(storysnap3);
          goto _L11
_L2:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_441;
        }
        mStorySnaps.addAll(linkedhashmap.values());
        mUnviewedStorySnaps.addAll(linkedhashmap1.values());
        x();
        if (storysnap == null)
        {
            break MISSING_BLOCK_LABEL_461;
        }
        mIndexOfLastStoryViewed = mStorySnaps.indexOf(storysnap);
        obj;
        JVM INSTR monitorexit ;
        return;
_L5:
        if (flag && flag1) goto _L14; else goto _L13
_L7:
        flag2 = true;
          goto _L15
        flag2 = false;
          goto _L15
    }

    public void a(StorySnap storysnap)
    {
        synchronized (mStorySnapsMutex)
        {
            mStorySnaps.add(storysnap);
            if (!storysnap.F())
            {
                mUserHasSeenInFeed = false;
                mUnviewedStorySnaps.add(storysnap);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s)
    {
        mUsername = s;
    }

    public void a(boolean flag)
    {
        mUserHasSeenInFeed = flag;
    }

    public StorySnap b(String s)
    {
label0:
        {
            StorySnap storysnap;
            synchronized (mStorySnapsMutex)
            {
                Iterator iterator = mStorySnaps.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    storysnap = (StorySnap)iterator.next();
                } while (!storysnap.d().equals(s));
            }
            return storysnap;
        }
        obj;
        JVM INSTR monitorexit ;
        return null;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(StorySnap storysnap)
    {
        synchronized (mStorySnapsMutex)
        {
            boolean flag = mUnviewedStorySnaps.remove(storysnap);
            Object aobj[] = new Object[2];
            aobj[0] = storysnap.d();
            aobj[1] = Boolean.valueOf(flag);
            Timber.c("StoryCollection", "Removing %s from unviewed story snaps, %s", aobj);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(boolean flag)
    {
        mHasSeenTapToSkipTeacher = flag;
    }

    public int compareTo(Object obj)
    {
        return a((StoryCollection)obj);
    }

    public boolean d()
    {
        return !E();
    }

    public int e()
    {
        return l().size();
    }

    public boolean equals(Object obj)
    {
        while (obj == null || !obj.getClass().equals(com/snapchat/android/model/StoryCollection)) 
        {
            return false;
        }
        return mUsername.equals(((StoryCollection)obj).mUsername);
    }

    public ReceivedSnap f()
    {
label0:
        {
            synchronized (mStorySnapsMutex)
            {
                if (!mStorySnaps.isEmpty())
                {
                    break label0;
                }
            }
            return null;
        }
        if (mIndexOfLastStoryViewed <= 0) goto _L2; else goto _L1
_L1:
        StorySnap storysnap;
        mIndexOfLastStoryViewed = Math.min(-1 + mStorySnaps.size(), -1 + mIndexOfLastStoryViewed);
        storysnap = (StorySnap)mStorySnaps.get(mIndexOfLastStoryViewed);
        a(mIndexOfLastStoryViewed, mStorySnaps);
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(1 + mIndexOfLastStoryViewed);
        aobj[1] = Integer.valueOf(C());
        aobj[2] = Boolean.valueOf(storysnap.U());
        aobj[3] = Boolean.valueOf(storysnap.Z());
        Timber.c("StoryCollection", "Last storySnap viewed is %d / %d and next storySnap is loaded/loading? %s %s", aobj);
        int k = 0;
_L4:
        if (k >= mStorySnaps.size())
        {
            break; /* Loop/switch isn't completed */
        }
        StorySnap storysnap1 = (StorySnap)mStorySnaps.get(k);
        Object aobj1[] = new Object[6];
        aobj1[0] = Integer.valueOf(k);
        aobj1[1] = storysnap1.d();
        aobj1[2] = Boolean.valueOf(storysnap1.U());
        aobj1[3] = Boolean.valueOf(storysnap1.Z());
        aobj1[4] = Boolean.valueOf(storysnap1.D());
        aobj1[5] = Boolean.valueOf(storysnap1.F());
        Timber.c("StoryCollection", "storySnap #%d %s is loaded/loading? %s %s being viewed/viewed? %s %s", aobj1);
        k++;
        if (true) goto _L4; else goto _L3
_L2:
        obj;
        JVM INSTR monitorexit ;
        return null;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L3:
        obj;
        JVM INSTR monitorexit ;
        return storysnap;
    }

    public int hashCode()
    {
        return 31 * (589 + mUsername.hashCode()) + "storyCollection".hashCode();
    }

    public ReceivedSnap i()
    {
        Object obj = mStorySnapsMutex;
        obj;
        JVM INSTR monitorenter ;
        int k = -1 + mIndexOfLastStoryViewed;
        if (k < 0)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        ReceivedSnap receivedsnap;
        if (k >= mStorySnaps.size())
        {
            break MISSING_BLOCK_LABEL_51;
        }
        receivedsnap = (ReceivedSnap)mStorySnaps.get(k);
        return receivedsnap;
        obj;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int j()
    {
        return mSecondsLeftInCollection;
    }

    public List l()
    {
        return mStorySnaps;
    }

    public List m()
    {
        return A();
    }

    public boolean n()
    {
        Object obj = mStorySnapsMutex;
        obj;
        JVM INSTR monitorenter ;
        Iterator iterator = mStorySnaps.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            StorySnap storysnap = (StorySnap)iterator.next();
            if (storysnap.aC() || storysnap.aH())
            {
                iterator.remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_67;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        boolean flag;
        b();
        flag = mStorySnaps.isEmpty();
        obj;
        JVM INSTR monitorexit ;
        return flag;
    }

    public boolean o()
    {
        return K();
    }

    public boolean p()
    {
        return I();
    }

    public boolean v()
    {
        if (mUnviewedStorySnaps.isEmpty())
        {
            return true;
        } else
        {
            return mUserHasSeenInFeed;
        }
    }

    public boolean w()
    {
        return mHasSeenTapToSkipTeacher;
    }

    public void x()
    {
        synchronized (mStorySnapsMutex)
        {
            Collections.sort(mStorySnaps);
            Collections.sort(mUnviewedStorySnaps);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public List y()
    {
        return mUnviewedStorySnaps;
    }

    public List z()
    {
        return B();
    }
}
