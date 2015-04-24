// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;


// Referenced classes of package com.snapchat.android.cash:
//            QuasiRandomPointGenerator

public static class A
{

    private int a;
    private int b;
    private int c;

    static int a(A a1)
    {
        return a1.a;
    }

    static int b(a a1)
    {
        return a1.b;
    }

    static int c(b b1)
    {
        return b1.c;
    }

    public c a(int i)
    {
        a = i;
        return this;
    }

    public QuasiRandomPointGenerator a()
    {
        return new QuasiRandomPointGenerator(this, null);
    }

    public a b(int i)
    {
        b = i;
        return this;
    }

    public b c(int i)
    {
        c = i;
        return this;
    }

    public A()
    {
    }
}
