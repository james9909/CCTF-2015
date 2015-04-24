// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.support.v4.util.LruCache;

// Referenced classes of package com.snapchat.android.util:
//            StoriesThumbnailCache, SnapMediaUtils

class a extends LruCache
{

    final StoriesThumbnailCache a;

    protected int a(String s, umbnailCacheEntry umbnailcacheentry)
    {
        return (int)Math.ceil((float)SnapMediaUtils.e(umbnailCacheEntry.a(umbnailcacheentry)) / 1024F);
    }

    protected int sizeOf(Object obj, Object obj1)
    {
        return a((String)obj, (umbnailCacheEntry)obj1);
    }

    umbnailCacheEntry(StoriesThumbnailCache storiesthumbnailcache, int i)
    {
        a = storiesthumbnailcache;
        super(i);
    }
}
