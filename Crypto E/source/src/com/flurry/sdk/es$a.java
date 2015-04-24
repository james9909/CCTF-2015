// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;


// Referenced classes of package com.flurry.sdk:
//            es

public static final class d extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    private static final e e[];
    private int d;

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/flurry/sdk/es$a, s);
    }

    public static Of[] values()
    {
        return (Of[])e.clone();
    }

    public int a()
    {
        return d;
    }

    static 
    {
        a = new <init>("NONE_OR_UNKNOWN", 0, 0);
        b = new <init>("WIFI", 1, 1);
        c = new <init>("CELL", 2, 2);
        d ad[] = new <init>[3];
        ad[0] = a;
        ad[1] = b;
        ad[2] = c;
        e = ad;
    }

    private (String s, int i, int j)
    {
        super(s, i);
        d = j;
    }
}
