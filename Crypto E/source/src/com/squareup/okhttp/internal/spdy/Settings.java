// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.util.Arrays;

public final class Settings
{

    private int a;
    private int b;
    private int c;
    private final int d[] = new int[10];

    public Settings()
    {
    }

    Settings a(int i, int j, int k)
    {
        if (i >= d.length)
        {
            return this;
        }
        int l = 1 << i;
        a = l | a;
        if ((j & 1) != 0)
        {
            b = l | b;
        } else
        {
            b = b & ~l;
        }
        if ((j & 2) != 0)
        {
            c = l | c;
        } else
        {
            c = c & ~l;
        }
        d[i] = k;
        return this;
    }

    void a()
    {
        c = 0;
        b = 0;
        a = 0;
        Arrays.fill(d, 0);
    }

    void a(Settings settings)
    {
        int i = 0;
        while (i < 10) 
        {
            if (settings.a(i))
            {
                a(i, settings.c(i), settings.b(i));
            }
            i++;
        }
    }

    boolean a(int i)
    {
        return (1 << i & a) != 0;
    }

    int b()
    {
        return Integer.bitCount(a);
    }

    int b(int i)
    {
        return d[i];
    }

    int c()
    {
        if ((2 & a) != 0)
        {
            return d[1];
        } else
        {
            return -1;
        }
    }

    int c(int i)
    {
        boolean flag = g(i);
        int j = 0;
        if (flag)
        {
            j = 2;
        }
        if (f(i))
        {
            j |= 1;
        }
        return j;
    }

    int d(int i)
    {
        if ((0x20 & a) != 0)
        {
            i = d[5];
        }
        return i;
    }

    int e(int i)
    {
        if ((0x80 & a) != 0)
        {
            i = d[7];
        }
        return i;
    }

    boolean f(int i)
    {
        return (1 << i & b) != 0;
    }

    boolean g(int i)
    {
        return (1 << i & c) != 0;
    }
}
