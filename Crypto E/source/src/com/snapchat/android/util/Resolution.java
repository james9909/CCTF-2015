// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;


public class Resolution
{

    protected final int a;
    protected final int b;

    public Resolution(int i, int j)
    {
        a = i;
        b = j;
    }

    public int a()
    {
        return a;
    }

    public Resolution a(double d1)
    {
        return new Resolution((int)(d1 * (double)a), (int)(d1 * (double)b));
    }

    public boolean a(Resolution resolution)
    {
        return b > resolution.b() && a > resolution.a() || a > resolution.b() && b > resolution.a();
    }

    public int b()
    {
        return b;
    }

    public double c()
    {
        return (double)a / (double)b;
    }

    public int d()
    {
        return a * b;
    }

    public boolean e()
    {
        return b >= 720 && a >= 720;
    }

    public boolean equals(Object obj)
    {
        Resolution resolution;
        if (obj instanceof Resolution)
        {
            if (a == (resolution = (Resolution)obj).a && b == resolution.b && getClass().equals(resolution.getClass()))
            {
                return true;
            }
        }
        return false;
    }

    public int hashCode()
    {
        return 41 * (41 + a) + a;
    }
}
