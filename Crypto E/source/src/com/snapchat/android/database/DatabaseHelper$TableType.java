// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database;


// Referenced classes of package com.snapchat.android.database:
//            DatabaseHelper

public static final class c extends Enum
{

    public static final d a;
    public static final d b;
    private static final d d[];
    private final String c;

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/snapchat/android/database/DatabaseHelper$TableType, s);
    }

    public static c[] values()
    {
        return (c[])d.clone();
    }

    public String a()
    {
        return c;
    }

    static 
    {
        a = new <init>("TABLE", 0, "table");
        b = new <init>("VIEW", 1, "view");
        c ac[] = new <init>[2];
        ac[0] = a;
        ac[1] = b;
        d = ac;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        c = s1;
    }
}
