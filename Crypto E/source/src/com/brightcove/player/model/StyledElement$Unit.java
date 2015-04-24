// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;


// Referenced classes of package com.brightcove.player.model:
//            StyledElement

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES EMS;
    public static final .VALUES PERCENT;
    public static final .VALUES PX;
    public static final .VALUES UNDEFINED;

    public static  fromString(String s)
    {
        if (s == null)
        {
            return UNDEFINED;
        }
        if (s.equals("%"))
        {
            return PERCENT;
        } else
        {
            return valueOf(s);
        }
    }

    public static valueOf valueOf(String s)
    {
        return (valueOf)Enum.valueOf(com/brightcove/player/model/StyledElement$Unit, s);
    }

    public static valueOf[] values()
    {
        return (valueOf[])$VALUES.clone();
    }

    static 
    {
        UNDEFINED = new <init>("UNDEFINED", 0);
        EMS = new <init>("EMS", 1);
        PERCENT = new <init>("PERCENT", 2);
        PX = new <init>("PX", 3);
        t_3B_.clone aclone[] = new <init>[4];
        aclone[0] = UNDEFINED;
        aclone[1] = EMS;
        aclone[2] = PERCENT;
        aclone[3] = PX;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
