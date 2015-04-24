// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;


// Referenced classes of package com.brightcove.player.model:
//            StyledElement

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES BOLD;
    public static final .VALUES NORMAL;
    public static final .VALUES UNDEFINED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/brightcove/player/model/StyledElement$FontWeight, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNDEFINED = new <init>("UNDEFINED", 0);
        NORMAL = new <init>("NORMAL", 1);
        BOLD = new <init>("BOLD", 2);
        t_3B_.clone aclone[] = new <init>[3];
        aclone[0] = UNDEFINED;
        aclone[1] = NORMAL;
        aclone[2] = BOLD;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
