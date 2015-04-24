// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import java.util.Locale;

// Referenced classes of package com.snapchat.android.discover.model:
//            DSnapPage

public static final class  extends Enum
{

    public static final c a;
    public static final c b;
    private static final c c[];

    public static  a(String s)
    {
        return valueOf(s.toUpperCase(Locale.ENGLISH));
    }

    public static valueOf valueOf(String s)
    {
        return (valueOf)Enum.valueOf(com/snapchat/android/discover/model/DSnapPage$Form, s);
    }

    public static valueOf[] values()
    {
        return (valueOf[])c.clone();
    }

    public String a()
    {
        return name();
    }

    public int b()
    {
        return ordinal();
    }

    static 
    {
        a = new <init>("TOP_SNAP", 0);
        b = new <init>("LONGFORM", 1);
        ordinal aordinal[] = new <init>[2];
        aordinal[0] = a;
        aordinal[1] = b;
        c = aordinal;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
