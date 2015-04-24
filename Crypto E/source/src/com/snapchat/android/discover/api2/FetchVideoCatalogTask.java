// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.api2;

import android.os.Bundle;
import com.snapchat.android.api2.framework.BaseRetriableScRequestTask;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import com.snapchat.android.util.HttpUtils;

public class FetchVideoCatalogTask extends BaseRetriableScRequestTask
{

    private final DiscoverEndpointManager a;
    private final String b;

    FetchVideoCatalogTask(DiscoverEndpointManager discoverendpointmanager, String s)
    {
        a = discoverendpointmanager;
        b = s;
    }

    public FetchVideoCatalogTask(String s)
    {
        this(DiscoverEndpointManager.a(), s);
    }

    public Object b()
    {
        return null;
    }

    public HttpMethod c()
    {
        return HttpMethod.GET;
    }

    public String d()
    {
        Bundle bundle = new Bundle();
        bundle.putString("edition", b);
        bundle.putString("platform", "android");
        return HttpUtils.a(a.c(), bundle);
    }
}
