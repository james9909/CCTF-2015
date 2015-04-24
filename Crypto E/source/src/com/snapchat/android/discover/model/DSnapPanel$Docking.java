// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import java.util.Locale;

// Referenced classes of package com.snapchat.android.discover.model:
//            DSnapPanel

public static final class  extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    private static final d d[];

    public static  a(String s)
    {
        return valueOf(s.toUpperCase(Locale.ENGLISH));
    }

    public static valueOf valueOf(String s)
    {
        return (valueOf)Enum.valueOf(com/snapchat/android/discover/model/DSnapPanel$Docking, s);
    }

    public static valueOf[] values()
    {
        return (valueOf[])d.clone();
    }

    static 
    {
        a = new <init>("TOP", 0);
        b = new <init>("CENTER", 1);
        c = new <init>("BOTTOM", 2);
        g_3B_.clone aclone[] = new <init>[3];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        d = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
