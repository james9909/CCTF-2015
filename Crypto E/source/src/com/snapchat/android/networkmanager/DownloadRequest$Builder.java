// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager;

import android.os.Bundle;
import com.snapchat.android.util.HttpUtils;
import com.snapchat.android.util.system.Clock;
import com.snapchat.android.util.system.ClockProvider;

// Referenced classes of package com.snapchat.android.networkmanager:
//            DownloadPriority, DownloadRequest

public static class a
{

    private final Clock a;
    private DownloadPriority b;
    private DownloadPriority c;
    private boolean d;
    private String e;
    private String f;
    private Bundle g;

    public a a(Bundle bundle)
    {
        g = bundle;
        return this;
    }

    public g a(DownloadPriority downloadpriority)
    {
        b = downloadpriority;
        return this;
    }

    public b a(String s)
    {
        e = s;
        return this;
    }

    public e a(boolean flag)
    {
        d = flag;
        return this;
    }

    public DownloadRequest a()
    {
        if (e == null)
        {
            throw new IllegalArgumentException("url cannot be null");
        } else
        {
            return new DownloadRequest(HttpUtils.a(e, g), f, b, c, d, a.b(), null);
        }
    }

    public a b(DownloadPriority downloadpriority)
    {
        c = downloadpriority;
        return this;
    }

    public c b(String s)
    {
        f = s;
        return this;
    }

    public A()
    {
        this((new ClockProvider()).a());
    }

    protected <init>(Clock clock)
    {
        b = DownloadPriority.a;
        c = DownloadPriority.a;
        d = false;
        a = clock;
    }
}
