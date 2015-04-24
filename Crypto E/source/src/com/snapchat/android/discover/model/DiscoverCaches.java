// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.CacheType;
import com.snapchat.android.util.cache.ZipFileCache;

public class DiscoverCaches
{

    public static final Cache a;
    public static final Cache b;
    public static final Cache c;

    public DiscoverCaches()
    {
    }

    static 
    {
        a = new Cache(CacheType.l, 40000L);
        b = new ZipFileCache(CacheType.m, 10080L);
        c = new Cache(CacheType.n, 40000L);
    }
}
