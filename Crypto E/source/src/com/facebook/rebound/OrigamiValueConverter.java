// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound;


public class OrigamiValueConverter
{

    public OrigamiValueConverter()
    {
    }

    public static double a(double d1)
    {
        if (d1 == 0.0D)
        {
            return 0.0D;
        } else
        {
            return 194D + 3.6200000000000001D * (d1 - 30D);
        }
    }

    public static double b(double d1)
    {
        if (d1 == 0.0D)
        {
            return 0.0D;
        } else
        {
            return 30D + (d1 - 194D) / 3.6200000000000001D;
        }
    }

    public static double c(double d1)
    {
        if (d1 == 0.0D)
        {
            return 0.0D;
        } else
        {
            return 25D + 3D * (d1 - 8D);
        }
    }

    public static double d(double d1)
    {
        if (d1 == 0.0D)
        {
            return 0.0D;
        } else
        {
            return 8D + (d1 - 25D) / 3D;
        }
    }
}
