// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound;


// Referenced classes of package com.facebook.rebound:
//            OrigamiValueConverter

public class SpringConfig
{

    public static SpringConfig c = a(40D, 7D);
    public double a;
    public double b;

    public SpringConfig(double d, double d1)
    {
        b = d;
        a = d1;
    }

    public static SpringConfig a(double d, double d1)
    {
        return new SpringConfig(OrigamiValueConverter.a(d), OrigamiValueConverter.c(d1));
    }

}
