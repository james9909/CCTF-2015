// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.os.SystemClock;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.api.GetSharedStoryDescriptionTask;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.PostToStoriesUpdatedEvent;
import com.snapchat.android.util.eventbus.SanitizeStoriesFragmentEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.model:
//            MyPostToStory, StoryCollection, StorySnap, StorySnapLogbook, 
//            PostToStory, StoryGroup, StorySnapExtra, MyStoryGroup, 
//            SnapWomb, AnnotatedMediabryo, FriendStoryBook, UserPrefs, 
//            SponsoredStoryCollection, RecentStoryCollection

public class StoryLibrary
{

    private static final String TAG = "StoryLibrary";
    private static StoryLibrary sInstance;
    private final List mFriendStoriesForDatabase = Collections.synchronizedList(new ArrayList());
    protected final Map mFriendStoryCollections = Collections.synchronizedMap(new LinkedHashMap());
    private List mMyPostedStorySnapLogbooksForDatabase;
    private final List mPostToStories = Collections.synchronizedList(new ArrayList());
    private LinkedHashMap mStories;
    private Map mStoryGroupStoryCollections;

    protected StoryLibrary()
    {
        mStories = new LinkedHashMap();
        mStoryGroupStoryCollections = new HashMap();
        mMyPostedStorySnapLogbooksForDatabase = Collections.synchronizedList(new ArrayList());
        mPostToStories.add(MyPostToStory.a());
        BusProvider.a().a(new PostToStoriesUpdatedEvent());
    }

    public static StoryLibrary a()
    {
        com/snapchat/android/model/StoryLibrary;
        JVM INSTR monitorenter ;
        StoryLibrary storylibrary;
        if (sInstance == null)
        {
            sInstance = new StoryLibrary();
        }
        storylibrary = sInstance;
        com/snapchat/android/model/StoryLibrary;
        JVM INSTR monitorexit ;
        return storylibrary;
        Exception exception;
        exception;
        throw exception;
    }

    private void a(StoryCollection storycollection)
    {
        List list = mFriendStoriesForDatabase;
        list;
        JVM INSTR monitorenter ;
        StorySnap storysnap;
        for (Iterator iterator = storycollection.m().iterator(); iterator.hasNext(); mFriendStoriesForDatabase.add(storysnap))
        {
            storysnap = (StorySnap)iterator.next();
        }

        break MISSING_BLOCK_LABEL_60;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public static void b()
    {
        com/snapchat/android/model/StoryLibrary;
        JVM INSTR monitorenter ;
        sInstance = null;
        com/snapchat/android/model/StoryLibrary;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void b(StorySnapLogbook storysnaplogbook)
    {
        storysnaplogbook.e().f(storysnaplogbook.d());
        mMyPostedStorySnapLogbooksForDatabase.add(0, storysnaplogbook);
    }

    private void d(List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); b((StorySnapLogbook)iterator.next())) { }
    }

    private void r()
    {
        List list = mPostToStories;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = mPostToStories.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (((PostToStory)iterator.next()).b())
            {
                iterator.remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_55;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    private void s()
    {
        ArrayList arraylist = new ArrayList(mFriendStoryCollections.values());
        Collections.sort(arraylist);
        mFriendStoryCollections.clear();
        StoryCollection storycollection;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); mFriendStoryCollections.put(storycollection.a(), storycollection))
        {
            storycollection = (StoryCollection)iterator.next();
        }

    }

    public StoryGroup a(String s1)
    {
        return (StoryGroup)mStories.get(s1);
    }

    public void a(PostToStory posttostory)
    {
        mPostToStories.clear();
        mPostToStories.add(MyPostToStory.a());
        if (posttostory != null)
        {
            posttostory.a(SystemClock.elapsedRealtime());
            mPostToStories.add(posttostory);
        }
        BusProvider.a().a(new PostToStoriesUpdatedEvent());
    }

    public void a(StorySnap storysnap)
    {
        StorySnapLogbook storysnaplogbook = new StorySnapLogbook(storysnap, new ArrayList(), new StorySnapExtra());
        storysnaplogbook.a("my_story_ads79sdf");
        List list = ((StoryGroup)mStories.get("my_story_ads79sdf")).i();
        list.add(0, storysnaplogbook);
        Collections.sort(list);
        b(storysnaplogbook);
        k();
    }

    public void a(StorySnapLogbook storysnaplogbook)
    {
        String s1 = storysnaplogbook.d();
        StoryGroup storygroup = (StoryGroup)mStories.get(s1);
        storygroup.i().remove(storysnaplogbook);
        mMyPostedStorySnapLogbooksForDatabase.remove(storysnaplogbook);
        if (!(storygroup instanceof MyStoryGroup) && storygroup.m() == 0)
        {
            mStories.remove(s1);
        }
        k();
    }

    public void a(List list)
    {
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            StoryGroup storygroup = (StoryGroup)iterator.next();
            StoryGroup storygroup1 = (StoryGroup)mStories.get(storygroup.c());
            if (storygroup1 != null)
            {
                List list1 = storygroup1.i();
                list1.addAll(0, storygroup.i());
                Collections.sort(list1);
            } else
            {
                mStories.put(storygroup.c(), storygroup);
            }
            if (storygroup.f() && TextUtils.isEmpty(storygroup.g()))
            {
                (new GetSharedStoryDescriptionTask(storygroup.c())).executeOnExecutor(ScExecutors.b, new String[0]);
            }
            d(storygroup.i());
        }
        k();
    }

    public void a(List list, List list1)
    {
        mStories.clear();
        List list2 = mMyPostedStorySnapLogbooksForDatabase;
        list2;
        JVM INSTR monitorenter ;
        mMyPostedStorySnapLogbooksForDatabase.clear();
        StorySnapLogbook storysnaplogbook;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); b(storysnaplogbook))
        {
            storysnaplogbook = (StorySnapLogbook)iterator.next();
            StorySnap storysnap1 = storysnaplogbook.e();
            SnapWomb.a().a("my_story_ads79sdf", storysnap1.ay());
            storysnaplogbook.a("my_story_ads79sdf");
        }

        break MISSING_BLOCK_LABEL_96;
        Exception exception;
        exception;
        list2;
        JVM INSTR monitorexit ;
        throw exception;
        MyStoryGroup mystorygroup = MyStoryGroup.a();
        mystorygroup.a(list);
        mStories.put(mystorygroup.c(), mystorygroup);
        if (list1 == null)
        {
            break MISSING_BLOCK_LABEL_278;
        }
        Iterator iterator1 = list1.iterator();
_L1:
        StoryGroup storygroup;
        if (!iterator1.hasNext())
        {
            break MISSING_BLOCK_LABEL_278;
        }
        storygroup = (StoryGroup)iterator1.next();
        StorySnap storysnap;
        for (Iterator iterator5 = storygroup.i().iterator(); iterator5.hasNext(); SnapWomb.a().a(storygroup.c(), storysnap.ay()))
        {
            storysnap = ((StorySnapLogbook)iterator5.next()).e();
        }

        Collections.sort(storygroup.i());
        d(storygroup.i());
        mStories.put(storygroup.c(), storygroup);
        if (storygroup.f())
        {
            (new GetSharedStoryDescriptionTask(storygroup.c())).executeOnExecutor(ScExecutors.b, new String[0]);
        }
          goto _L1
        list2;
        JVM INSTR monitorexit ;
        LinkedList linkedlist = new LinkedList();
        for (Iterator iterator2 = SnapWomb.a().c().values().iterator(); iterator2.hasNext();)
        {
            Iterator iterator4 = ((LinkedHashMap)iterator2.next()).values().iterator();
            while (iterator4.hasNext()) 
            {
                AnnotatedMediabryo annotatedmediabryo1 = (AnnotatedMediabryo)iterator4.next();
                if (60000L + annotatedmediabryo1.q() < System.currentTimeMillis())
                {
                    linkedlist.add(annotatedmediabryo1);
                }
            }
        }

        AnnotatedMediabryo annotatedmediabryo;
        for (Iterator iterator3 = linkedlist.iterator(); iterator3.hasNext(); SnapWomb.a().e(annotatedmediabryo))
        {
            annotatedmediabryo = (AnnotatedMediabryo)iterator3.next();
        }

        k();
        return;
    }

    public void a(List list, Map map)
    {
        List list1 = mMyPostedStorySnapLogbooksForDatabase;
        list1;
        JVM INSTR monitorenter ;
        Iterator iterator;
        mMyPostedStorySnapLogbooksForDatabase.clear();
        iterator = list.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        StorySnap storysnap = (StorySnap)iterator.next();
        if (storysnap.aC()) goto _L4; else goto _L3
_L3:
        String s1;
        StoryGroup storygroup1;
        s1 = storysnap.aI();
        storygroup1 = (StoryGroup)mStories.get(s1);
        if (storygroup1 != null)
        {
            break MISSING_BLOCK_LABEL_276;
        }
        StoryGroup storygroup2;
        storygroup2 = new StoryGroup(s1);
        mStories.put(s1, storygroup2);
        StoryGroup storygroup3 = storygroup2;
_L6:
        List list2 = (List)map.get(storysnap.d());
        StorySnapExtra storysnapextra;
        if (list2 != null)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        storysnapextra = null;
_L5:
        StorySnapLogbook storysnaplogbook = new StorySnapLogbook(storysnap, list2, storysnapextra);
        storysnaplogbook.a(s1);
        storygroup3.i().add(storysnaplogbook);
        b(storysnaplogbook);
          goto _L4
        Exception exception;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
        storysnapextra = new StorySnapExtra(list2);
          goto _L5
_L2:
        list1;
        JVM INSTR monitorexit ;
        for (Iterator iterator1 = mStories.values().iterator(); iterator1.hasNext();)
        {
            StoryGroup storygroup = (StoryGroup)iterator1.next();
            if (!(storygroup instanceof MyStoryGroup) && storygroup.m() == 0)
            {
                iterator1.remove();
            } else
            {
                Collections.sort(storygroup.i());
            }
        }

        k();
        return;
        storygroup3 = storygroup1;
          goto _L6
    }

    public void a(List list, boolean flag)
    {
        LinkedHashMap linkedhashmap;
        if (list == null)
        {
            return;
        }
        Timber.b("StoryLibrary", (new StringBuilder()).append("Updating friend stories with isDelta = ").append(flag).toString(), new Object[0]);
        linkedhashmap = new LinkedHashMap(list.size());
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            FriendStoryBook friendstorybook = (FriendStoryBook)iterator.next();
            String s1 = friendstorybook.a();
            StoryCollection storycollection = (StoryCollection)mFriendStoryCollections.get(s1);
            if (storycollection != null)
            {
                synchronized (mFriendStoriesForDatabase)
                {
                    storycollection.a(friendstorybook, mFriendStoriesForDatabase, flag);
                }
            } else
            {
                storycollection = new StoryCollection(friendstorybook);
                a(storycollection);
            }
            linkedhashmap.put(storycollection.a(), storycollection);
        }
        break MISSING_BLOCK_LABEL_173;
        exception1;
        list1;
        JVM INSTR monitorexit ;
        throw exception1;
        Map map = mFriendStoryCollections;
        map;
        JVM INSTR monitorenter ;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_195;
        }
        mFriendStoryCollections.clear();
        mFriendStoryCollections.putAll(linkedhashmap);
        map;
        JVM INSTR monitorexit ;
        k();
        s();
        return;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public StoryCollection b(String s1)
    {
        return (StoryCollection)mStoryGroupStoryCollections.get(s1);
    }

    public void b(List list)
    {
        mStories.clear();
        mStories.put("my_story_ads79sdf", MyStoryGroup.a());
        StoryGroup storygroup;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); mStories.put(storygroup.c(), storygroup))
        {
            storygroup = (StoryGroup)iterator.next();
        }

    }

    public StoryCollection c(String s1)
    {
        return (StoryCollection)mFriendStoryCollections.get(s1);
    }

    public void c()
    {
        mFriendStoryCollections.clear();
        mStoryGroupStoryCollections.clear();
        mMyPostedStorySnapLogbooksForDatabase.clear();
        mFriendStoriesForDatabase.clear();
        UserPrefs.ak();
    }

    public void c(List list)
    {
        mFriendStoryCollections.clear();
        mFriendStoriesForDatabase.clear();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            StorySnap storysnap = (StorySnap)iterator.next();
            if (!storysnap.aC())
            {
                mFriendStoriesForDatabase.add(storysnap);
                StoryCollection storycollection = (StoryCollection)mFriendStoryCollections.get(storysnap.aB());
                if (storycollection == null)
                {
                    storycollection = new StoryCollection();
                    storycollection.a(storysnap.aB());
                    mFriendStoryCollections.put(storysnap.aB(), storycollection);
                }
                storycollection.a(storysnap);
            }
        } while (true);
        Map map = mFriendStoryCollections;
        map;
        JVM INSTR monitorenter ;
        for (Iterator iterator1 = mFriendStoryCollections.entrySet().iterator(); iterator1.hasNext(); ((StoryCollection)((java.util.Map.Entry)iterator1.next()).getValue()).x()) { }
        break MISSING_BLOCK_LABEL_199;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        map;
        JVM INSTR monitorexit ;
        s();
        return;
    }

    public List d()
    {
        r();
        return mPostToStories;
    }

    public void d(String s1)
    {
        mFriendStoryCollections.remove(s1);
        Iterator iterator = mFriendStoriesForDatabase.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (TextUtils.equals(((StorySnap)iterator.next()).aB(), s1))
            {
                iterator.remove();
            }
        } while (true);
    }

    public void e()
    {
        boolean flag = false;
        Map map = mFriendStoryCollections;
        map;
        JVM INSTR monitorenter ;
        Iterator iterator = mFriendStoryCollections.entrySet().iterator();
_L5:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if (!((StoryCollection)((java.util.Map.Entry)iterator.next()).getValue()).n()) goto _L4; else goto _L3
_L3:
        iterator.remove();
        boolean flag1;
        flag1 = true;
        break MISSING_BLOCK_LABEL_100;
_L2:
        map;
        JVM INSTR monitorexit ;
        if (flag)
        {
            BusProvider.a().a(new SanitizeStoriesFragmentEvent());
        }
        return;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        flag1 = flag;
        flag = flag1;
          goto _L5
    }

    public List f()
    {
        ArrayList arraylist;
        synchronized (mPostToStories)
        {
            arraylist = new ArrayList(mPostToStories);
        }
        return arraylist;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ArrayList g()
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = mStories.values().iterator(); iterator.hasNext(); arraylist.addAll(((StoryGroup)iterator.next()).i())) { }
        return arraylist;
    }

    public List h()
    {
        ArrayList arraylist;
        synchronized (mMyPostedStorySnapLogbooksForDatabase)
        {
            arraylist = new ArrayList(mMyPostedStorySnapLogbooksForDatabase);
        }
        return arraylist;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void i()
    {
        Iterator iterator = mStories.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            StoryGroup storygroup = (StoryGroup)iterator.next();
            if (storygroup.f())
            {
                (new GetSharedStoryDescriptionTask(storygroup.c())).executeOnExecutor(ScExecutors.b, new String[0]);
            }
        } while (true);
    }

    public List j()
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap(mStories);
        linkedhashmap.remove("my_story_ads79sdf");
        return new ArrayList(linkedhashmap.values());
    }

    public void k()
    {
        Iterator iterator = mStories.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            StoryGroup storygroup = (StoryGroup)iterator.next();
            String s1 = storygroup.c();
            mStoryGroupStoryCollections.remove(s1);
            List list = storygroup.i();
            if (list.size() != 0)
            {
                ArrayList arraylist = new ArrayList(list.size());
                for (Iterator iterator1 = list.iterator(); iterator1.hasNext(); arraylist.add(((StorySnapLogbook)iterator1.next()).e())) { }
                StoryCollection storycollection = new StoryCollection(arraylist);
                storycollection.a(true);
                mStoryGroupStoryCollections.put(s1, storycollection);
            }
        } while (true);
    }

    public Map l()
    {
        return mStories;
    }

    public Collection m()
    {
        return mFriendStoryCollections.values();
    }

    public int n()
    {
        int i1 = 0;
        Map map = mFriendStoryCollections;
        map;
        JVM INSTR monitorenter ;
        Iterator iterator = mFriendStoryCollections.values().iterator();
_L3:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        StoryCollection storycollection = (StoryCollection)iterator.next();
        int j1;
        Exception exception;
        if (!storycollection.v() && !storycollection.N())
        {
            j1 = i1 + 1;
        } else
        {
            j1 = i1;
        }
        break MISSING_BLOCK_LABEL_83;
_L2:
        map;
        JVM INSTR monitorexit ;
        return i1;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        i1 = j1;
          goto _L3
    }

    public void o()
    {
        Map map = mFriendStoryCollections;
        map;
        JVM INSTR monitorenter ;
        for (Iterator iterator = mFriendStoryCollections.values().iterator(); iterator.hasNext(); ((StoryCollection)iterator.next()).a(true)) { }
        break MISSING_BLOCK_LABEL_52;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        map;
        JVM INSTR monitorexit ;
    }

    public List p()
    {
        return new ArrayList(mFriendStoriesForDatabase);
    }

    public List q()
    {
        ArrayList arraylist;
        ArrayList arraylist1;
        ArrayList arraylist2;
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        arraylist2 = new ArrayList();
        Map map = mFriendStoryCollections;
        map;
        JVM INSTR monitorenter ;
        Iterator iterator = mFriendStoryCollections.keySet().iterator();
_L2:
        StoryCollection storycollection;
        do
        {
            String s1;
            do
            {
                if (!iterator.hasNext())
                {
                    break MISSING_BLOCK_LABEL_203;
                }
                s1 = (String)iterator.next();
            } while (TextUtils.equals(s1, UserPrefs.k()));
            storycollection = (StoryCollection)mFriendStoryCollections.get(s1);
        } while (storycollection == null);
        if (storycollection.y().isEmpty()) goto _L2; else goto _L1
_L1:
        Object obj;
        if (!storycollection.M())
        {
            break MISSING_BLOCK_LABEL_169;
        }
        obj = new SponsoredStoryCollection(storycollection);
_L3:
        if (!((RecentStoryCollection) (obj)).N())
        {
            break MISSING_BLOCK_LABEL_193;
        }
        if (!((RecentStoryCollection) (obj)).O())
        {
            break MISSING_BLOCK_LABEL_183;
        }
        arraylist2.add(obj);
          goto _L2
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        obj = new RecentStoryCollection(storycollection);
          goto _L3
        arraylist1.add(obj);
          goto _L2
        arraylist.add(obj);
          goto _L2
        map;
        JVM INSTR monitorexit ;
        Collections.sort(arraylist);
        Collections.sort(arraylist1);
        Collections.sort(arraylist2);
        arraylist.addAll(arraylist1);
        arraylist.addAll(arraylist2);
        return arraylist;
    }
}
