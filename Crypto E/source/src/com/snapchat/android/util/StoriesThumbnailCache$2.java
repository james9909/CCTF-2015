// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.snapchat.android.fragments.stories.StoriesListItem;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StoryThumbnailLoadedEvent;
import com.squareup.otto.Bus;
import java.util.List;

// Referenced classes of package com.snapchat.android.util:
//            BuildPieSliceTask, StoriesThumbnailCache

class Item extends BuildPieSliceTask
{

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
            StoriesThumbnailCache.a(c).put(a, new umbnailCacheEntry(c, bitmap, b));
            BusProvider.a().a(new StoryThumbnailLoadedEvent(a));
            return;
        }
    }

    protected void onPostExecute(Object obj)
    {
        a((Bitmap)obj);
    }

    Item(StoriesThumbnailCache storiesthumbnailcache, Context context, List list, StoriesListItem storieslistitem, String s, List list1)
    {
        c = storiesthumbnailcache;
        a = s;
        b = list1;
        super(context, list, storieslistitem);
    }
}
