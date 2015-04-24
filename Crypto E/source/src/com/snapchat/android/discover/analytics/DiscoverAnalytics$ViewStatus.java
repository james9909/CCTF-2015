// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.analytics;


// Referenced classes of package com.snapchat.android.discover.analytics:
//            DiscoverAnalytics

public static final class  extends Enum
{

    public static final c a;
    public static final c b;
    private static final c c[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus, s);
    }

    public static [] values()
    {
        return ([])c.clone();
    }

    public boolean a()
    {
        return equals(b);
    }

    static 
    {
        a = new <init>("INCOMPLETE", 0);
        b = new <init>("COMPLETED", 1);
        b ab[] = new <init>[2];
        ab[0] = a;
        ab[1] = b;
        c = ab;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
