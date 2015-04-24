// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.GsonWrapper;

// Referenced classes of package com.snapchat.android.api2.framework:
//            OkHttpNetworkInterface, NetworkInterface

public class HyperRequestDependencyProvider
{

    protected GsonWrapper mGsonWrapper;
    protected OkHttpNetworkInterface mNetworkInterface;

    public HyperRequestDependencyProvider()
    {
        SnapchatApplication.e().a(this);
    }

    public NetworkInterface a()
    {
        return mNetworkInterface;
    }

    public GsonWrapper b()
    {
        return mGsonWrapper;
    }
}
