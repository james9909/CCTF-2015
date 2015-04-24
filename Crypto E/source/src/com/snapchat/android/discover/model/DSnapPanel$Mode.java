// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import java.util.Locale;

// Referenced classes of package com.snapchat.android.discover.model:
//            DSnapPanel

public static final class _cls9 extends Enum
{

    public static final c a;
    public static final c b;
    private static final c c[];

    public static _cls9 a(String s)
    {
        return valueOf(s.toUpperCase(Locale.ENGLISH));
    }

    public static valueOf valueOf(String s)
    {
        return (valueOf)Enum.valueOf(com/snapchat/android/discover/model/DSnapPanel$Mode, s);
    }

    public static valueOf[] values()
    {
        return (valueOf[])c.clone();
    }

    static 
    {
        a = new <init>("LOOPING", 0);
        b = new <init>("ONCE", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = a;
        aclone[1] = b;
        c = aclone;
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }
}
