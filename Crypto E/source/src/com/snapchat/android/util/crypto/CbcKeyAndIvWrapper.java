// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.system.Clock;

public class CbcKeyAndIvWrapper
{

    protected Clock a;
    private String b;
    private String c;
    private String d;
    private long e;

    public CbcKeyAndIvWrapper(String s, String s1)
    {
        this(s, s1, null);
    }

    public CbcKeyAndIvWrapper(String s, String s1, String s2)
    {
        SnapchatApplication.e().a(this);
        b = s;
        c = s1;
        d = s2;
        e = a.b();
    }

    public CbcKeyAndIvWrapper(String s, String s1, String s2, long l)
    {
        SnapchatApplication.e().a(this);
        b = s;
        c = s1;
        d = s2;
        e = l;
    }

    public String a()
    {
        return b;
    }

    public String b()
    {
        return c;
    }

    public String c()
    {
        return d;
    }

    public long d()
    {
        return e;
    }
}
