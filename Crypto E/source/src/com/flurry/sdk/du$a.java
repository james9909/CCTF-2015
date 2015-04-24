// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;


// Referenced classes of package com.flurry.sdk:
//            du

public static final class > extends Enum
{

    public static final h a;
    public static final h b;
    public static final h c;
    public static final h d;
    public static final h e;
    public static final h f;
    public static final h g;
    private static final h h[];

    public static > valueOf(String s)
    {
        return (>)Enum.valueOf(com/flurry/sdk/du$a, s);
    }

    public static Of[] values()
    {
        return (Of[])h.clone();
    }

    static 
    {
        a = new <init>("kCreated", 0);
        b = new <init>("kDestroyed", 1);
        c = new <init>("kPaused", 2);
        d = new <init>("kResumed", 3);
        e = new <init>("kStarted", 4);
        f = new <init>("kStopped", 5);
        g = new <init>("kSaveState", 6);
        one aone[] = new <init>[7];
        aone[0] = a;
        aone[1] = b;
        aone[2] = c;
        aone[3] = d;
        aone[4] = e;
        aone[5] = f;
        aone[6] = g;
        h = aone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
