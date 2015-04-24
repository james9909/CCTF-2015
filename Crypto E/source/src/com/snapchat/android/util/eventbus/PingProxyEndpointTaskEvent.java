// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.android.model.ProxyEndpoint;

public class PingProxyEndpointTaskEvent
{

    private boolean a;
    private ProxyEndpoint b;

    public PingProxyEndpointTaskEvent(boolean flag, ProxyEndpoint proxyendpoint)
    {
        b = proxyendpoint;
        a = flag;
    }

    public boolean a()
    {
        return a;
    }

    public ProxyEndpoint b()
    {
        return b;
    }
}
