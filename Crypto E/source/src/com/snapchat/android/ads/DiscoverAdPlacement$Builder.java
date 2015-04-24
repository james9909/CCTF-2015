// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ads;


// Referenced classes of package com.snapchat.android.ads:
//            DiscoverAdPlacement

public static class 
{

    private String a;
    private String b;
    private int c;
    private int d;

    public  a()
    {
        c = 0;
        return this;
    }

    public c a(int i)
    {
        c = i;
        return this;
    }

    public c a(String s)
    {
        a = s;
        return this;
    }

    public a b(int i)
    {
        d = i;
        return this;
    }

    public d b(String s)
    {
        b = s;
        return this;
    }

    public DiscoverAdPlacement b()
    {
        if (a == null)
        {
            throw new IllegalArgumentException("editionName should not be null.");
        }
        if (b == null)
        {
            throw new IllegalArgumentException("channelName should not be null.");
        } else
        {
            return new DiscoverAdPlacement(a, b, c, d, null);
        }
    }

    public ()
    {
    }
}
