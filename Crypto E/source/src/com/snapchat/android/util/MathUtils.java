// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.util.Random;

public final class MathUtils
{

    private static final Random a = new Random();

    private MathUtils()
    {
    }

    public static float a(float f, float f1, float f2)
    {
        return Math.min(Math.max(f2, f), f1);
    }

    public static int a(int i)
    {
        int j;
        for (j = 1; j < i; j <<= 1) { }
        return j;
    }

    public static Random a()
    {
        return a;
    }

}
