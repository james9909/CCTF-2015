// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


public final class me
{

    private static boolean cd(int i)
    {
        return android.os.Build.VERSION.SDK_INT >= i;
    }

    public static boolean kq()
    {
        return cd(11);
    }

    public static boolean kr()
    {
        return cd(12);
    }

    public static boolean ks()
    {
        return cd(13);
    }

    public static boolean kt()
    {
        return cd(14);
    }

    public static boolean ku()
    {
        return cd(16);
    }

    public static boolean kv()
    {
        return cd(17);
    }

    public static boolean kw()
    {
        return cd(19);
    }

    public static boolean kx()
    {
        return "L".equals(android.os.Build.VERSION.CODENAME) || cd(21);
    }
}
