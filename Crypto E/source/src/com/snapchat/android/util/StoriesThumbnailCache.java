// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.support.v4.util.LruCache;
import com.snapchat.android.Timber;
import com.snapchat.android.fragments.stories.StoriesListItem;
import com.snapchat.android.fragments.stories.StoryGroupStoriesListItem;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.RecentStoryCollection;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StoryThumbnailLoadedEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.util:
//            ScExecutors, BuildPieSliceTask, SnapMediaUtils

public class StoriesThumbnailCache
{
    class ThumbnailCacheEntry
    {

        final StoriesThumbnailCache a;
        private Bitmap b;
        private long c;
        private long d;
        private long e;
        private boolean f;

        static Bitmap a(ThumbnailCacheEntry thumbnailcacheentry)
        {
            return thumbnailcacheentry.b;
        }

        static boolean a(ThumbnailCacheEntry thumbnailcacheentry, boolean flag)
        {
            thumbnailcacheentry.f = flag;
            return flag;
        }

        static boolean b(ThumbnailCacheEntry thumbnailcacheentry)
        {
            return thumbnailcacheentry.f;
        }

        public boolean a(List list)
        {
            while (((StorySnap)list.get(0)).ae() != d || ((StorySnap)list.get(-1 + list.size())).ae() != e) 
            {
                return true;
            }
            boolean flag;
            if ((SystemClock.elapsedRealtime() - c) / 60000L >= 30L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            return flag;
        }

        public ThumbnailCacheEntry(Bitmap bitmap, List list)
        {
            a = StoriesThumbnailCache.this;
            super();
            f = false;
            b = bitmap;
            c = SystemClock.elapsedRealtime();
            d = ((StorySnap)list.get(0)).ae();
            e = ((StorySnap)list.get(-1 + list.size())).ae();
        }
    }


    private static final StoriesThumbnailCache c = new StoriesThumbnailCache();
    private final StoryLibrary a;
    private LruCache b;

    private StoriesThumbnailCache()
    {
        this(StoryLibrary.a());
    }

    protected StoriesThumbnailCache(StoryLibrary storylibrary)
    {
        a = storylibrary;
        int i = (int)(0.025F * (float)(int)(Runtime.getRuntime().maxMemory() / 1024L));
        Timber.b("StoriesThumbnailCache", (new StringBuilder()).append("StoriesThumbnailCache size = ").append(i).append(" kilobytes").toString(), new Object[0]);
        b = new LruCache(i) {

            final StoriesThumbnailCache a;

            protected int a(String s, ThumbnailCacheEntry thumbnailcacheentry)
            {
                return (int)Math.ceil((float)SnapMediaUtils.e(ThumbnailCacheEntry.a(thumbnailcacheentry)) / 1024F);
            }

            protected int sizeOf(Object obj, Object obj1)
            {
                return a((String)obj, (ThumbnailCacheEntry)obj1);
            }

            
            {
                a = StoriesThumbnailCache.this;
                super(i);
            }
        };
    }

    static LruCache a(StoriesThumbnailCache storiesthumbnailcache)
    {
        return storiesthumbnailcache.b;
    }

    public static StoriesThumbnailCache a()
    {
        return c;
    }

    public Bitmap a(String s)
    {
        ThumbnailCacheEntry thumbnailcacheentry = (ThumbnailCacheEntry)b.get(s);
        if (thumbnailcacheentry == null)
        {
            return null;
        } else
        {
            return ThumbnailCacheEntry.a(thumbnailcacheentry);
        }
    }

    protected List a(StoriesListItem storieslistitem)
    {
        ArrayList arraylist = new ArrayList();
        if (!(storieslistitem instanceof StorySnapLogbook)) goto _L2; else goto _L1
_L1:
        arraylist.add(((StorySnapLogbook)storieslistitem).e());
_L4:
        return Collections.unmodifiableList(arraylist);
_L2:
        if (storieslistitem instanceof StoryGroupStoriesListItem)
        {
            Iterator iterator = ((StoryGroupStoriesListItem)storieslistitem).e().i().iterator();
            while (iterator.hasNext()) 
            {
                arraylist.add(((StorySnapLogbook)iterator.next()).e());
            }
        } else
        if (storieslistitem instanceof RecentStoryCollection)
        {
            arraylist.addAll(((RecentStoryCollection)storieslistitem).z());
        } else
        if (storieslistitem instanceof Friend)
        {
            StoryCollection storycollection = a.c(storieslistitem.a());
            if (storycollection != null)
            {
                arraylist.addAll(storycollection.m());
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(Context context, StoriesListItem storieslistitem, String s)
    {
        List list = a(storieslistitem);
        if (list != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ThumbnailCacheEntry thumbnailcacheentry;
        if (list.isEmpty())
        {
            b.remove(s);
            return;
        }
        thumbnailcacheentry = (ThumbnailCacheEntry)b.get(s);
        if (thumbnailcacheentry != null && !thumbnailcacheentry.a(list))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (thumbnailcacheentry != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        b.put(s, new ThumbnailCacheEntry(null, list));
_L4:
        (new BuildPieSliceTask(context, list, storieslistitem, s, list) {

            final String a;
            final List b;
            final StoriesThumbnailCache c;

            protected void a(Bitmap bitmap)
            {
                if (bitmap == null)
                {
                    StoriesThumbnailCache.a(c).remove(a);
                    return;
                } else
                {
                    StoriesThumbnailCache.a(c).put(a, c. new ThumbnailCacheEntry(bitmap, b));
                    BusProvider.a().a(new StoryThumbnailLoadedEvent(a));
                    return;
                }
            }

            protected void onPostExecute(Object obj)
            {
                a((Bitmap)obj);
            }

            
            {
                c = StoriesThumbnailCache.this;
                a = s;
                b = list1;
                super(context, list, storieslistitem);
            }
        }).executeOnExecutor(ScExecutors.a, new Void[0]);
        return;
        if (ThumbnailCacheEntry.b(thumbnailcacheentry)) goto _L1; else goto _L3
_L3:
        ThumbnailCacheEntry.a(thumbnailcacheentry, true);
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void a(StorySnap storysnap, Bitmap bitmap, String s)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(storysnap);
        b.put(s, new ThumbnailCacheEntry(bitmap, arraylist));
    }

}
