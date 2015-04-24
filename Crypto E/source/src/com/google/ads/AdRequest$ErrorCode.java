// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;


// Referenced classes of package com.google.ads:
//            AdRequest

public static final class e extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    private static final f f[];
    private final String e;

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/google/ads/AdRequest$ErrorCode, s);
    }

    public static e[] values()
    {
        return (e[])f.clone();
    }

    public String toString()
    {
        return e;
    }

    static 
    {
        a = new <init>("INVALID_REQUEST", 0, "Invalid Ad request.");
        b = new <init>("NO_FILL", 1, "Ad request successful, but no ad returned due to lack of ad inventory.");
        c = new <init>("NETWORK_ERROR", 2, "A network error occurred.");
        d = new <init>("INTERNAL_ERROR", 3, "There was an internal error.");
        e ae[] = new <init>[4];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        ae[3] = d;
        f = ae;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        e = s1;
    }
}
