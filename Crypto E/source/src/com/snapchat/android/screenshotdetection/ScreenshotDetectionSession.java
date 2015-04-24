// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.screenshotdetection;

import com.snapchat.android.service.SnapchatServiceManager;

public abstract class ScreenshotDetectionSession
{

    protected final SnapchatServiceManager a;
    private final String b;
    private long c;
    private long d;

    public ScreenshotDetectionSession(String s, long l, long l1)
    {
        this(s, l, l1, SnapchatServiceManager.a());
    }

    ScreenshotDetectionSession(String s, long l, long l1, SnapchatServiceManager snapchatservicemanager)
    {
        b = s;
        c = l;
        d = l1;
        a = snapchatservicemanager;
    }

    public abstract String a();

    public abstract void a(long l);

    public String b()
    {
        return b;
    }

    public void b(long l)
    {
        c = l;
        d = -1L;
    }

    public void c()
    {
        d = System.currentTimeMillis();
    }

    public boolean d()
    {
        return d == -1L;
    }

    public long e()
    {
        return c;
    }

    public long f()
    {
        return d;
    }
}
