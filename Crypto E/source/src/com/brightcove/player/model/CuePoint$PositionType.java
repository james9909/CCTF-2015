// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;


// Referenced classes of package com.brightcove.player.model:
//            CuePoint

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES AFTER;
    public static final .VALUES BEFORE;
    public static final .VALUES POINT_IN_TIME;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/brightcove/player/model/CuePoint$PositionType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        BEFORE = new <init>("BEFORE", 0);
        POINT_IN_TIME = new <init>("POINT_IN_TIME", 1);
        AFTER = new <init>("AFTER", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = BEFORE;
        aclone[1] = POINT_IN_TIME;
        aclone[2] = AFTER;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
