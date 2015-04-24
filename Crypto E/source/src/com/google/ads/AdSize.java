// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;


public final class AdSize
{

    public static final AdSize a = new AdSize(-1, -2, "mb");
    public static final AdSize b = new AdSize(320, 50, "mb");
    public static final AdSize c = new AdSize(300, 250, "as");
    public static final AdSize d = new AdSize(468, 60, "as");
    public static final AdSize e = new AdSize(728, 90, "as");
    public static final AdSize f = new AdSize(160, 600, "as");
    private final com.google.android.gms.ads.AdSize g;

    private AdSize(int i, int j, String s)
    {
        this(new com.google.android.gms.ads.AdSize(i, j));
    }

    public AdSize(com.google.android.gms.ads.AdSize adsize)
    {
        g = adsize;
    }

    public int a()
    {
        return g.getWidth();
    }

    public int b()
    {
        return g.getHeight();
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof AdSize))
        {
            return false;
        } else
        {
            AdSize adsize = (AdSize)obj;
            return g.equals(adsize.g);
        }
    }

    public int hashCode()
    {
        return g.hashCode();
    }

    public String toString()
    {
        return g.toString();
    }

}
