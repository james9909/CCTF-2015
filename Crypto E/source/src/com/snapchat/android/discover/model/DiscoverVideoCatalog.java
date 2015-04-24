// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import com.snapchat.data.gson.discover.VideoCatalogResponse;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class DiscoverVideoCatalog
{

    private static DiscoverVideoCatalog a = new DiscoverVideoCatalog();
    private Map b;

    protected DiscoverVideoCatalog()
    {
        b = new ConcurrentHashMap();
    }

    public static DiscoverVideoCatalog a()
    {
        return a;
    }

    public VideoCatalogResponse a(String s)
    {
        return (VideoCatalogResponse)b.get(s);
    }

    public void a(String s, VideoCatalogResponse videocatalogresponse)
    {
        if (videocatalogresponse == null)
        {
            b.remove(s);
            return;
        } else
        {
            b.put(s, videocatalogresponse);
            return;
        }
    }

    public void b()
    {
        b.clear();
    }

}
