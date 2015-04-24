// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;


public class InterpolationUtils
{

    private static final float a[] = {
        0.0F, -0.5F, 1.0F, -0.5F, 1.0F, 0.0F, -2.5F, 1.5F, 0.0F, 0.5F, 
        2.0F, -1.5F, 0.0F, 0.0F, -0.5F, 0.5F
    };
    private static float b[] = new float[4];
    private static float c[] = new float[4];

    public InterpolationUtils()
    {
    }

    public static float a(float f, float f1, float f2)
    {
        return f * (1.0F - f2) + f2 * f1;
    }

}
