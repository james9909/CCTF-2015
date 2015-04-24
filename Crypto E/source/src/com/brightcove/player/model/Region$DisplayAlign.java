// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;


// Referenced classes of package com.brightcove.player.model:
//            Region

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES AFTER;
    public static final .VALUES BEFORE;
    public static final .VALUES CENTER;

    public static  fromString(String s)
    {
        return valueOf(s.toUpperCase());
    }

    public static valueOf valueOf(String s)
    {
        return (valueOf)Enum.valueOf(com/brightcove/player/model/Region$DisplayAlign, s);
    }

    public static valueOf[] values()
    {
        return (valueOf[])$VALUES.clone();
    }

    static 
    {
        BEFORE = new <init>("BEFORE", 0);
        CENTER = new <init>("CENTER", 1);
        AFTER = new <init>("AFTER", 2);
        n_3B_.clone aclone[] = new <init>[3];
        aclone[0] = BEFORE;
        aclone[1] = CENTER;
        aclone[2] = AFTER;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
