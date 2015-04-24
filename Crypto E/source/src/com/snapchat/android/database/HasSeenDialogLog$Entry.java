// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database;

import com.snapchat.android.util.system.Clock;

// Referenced classes of package com.snapchat.android.database:
//            HasSeenDialogLog

public static class <init>
{

    public static long a = 0x240c8400L;
    private final Clock b;
    private final String c;
    private final long d;

    public boolean a()
    {
        return b.b() - d > a;
    }

    public String b()
    {
        return c;
    }

    public long c()
    {
        return d;
    }


    protected (Clock clock, String s, long l)
    {
        b = clock;
        c = s;
        d = l;
    }

    public d(String s, long l)
    {
        this(new Clock(), s, l);
    }
}
