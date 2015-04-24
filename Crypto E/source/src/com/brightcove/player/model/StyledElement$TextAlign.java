// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;


// Referenced classes of package com.brightcove.player.model:
//            StyledElement

public static final class _cls9 extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CENTER;
    public static final .VALUES END;
    public static final .VALUES LEFT;
    public static final .VALUES RIGHT;
    public static final .VALUES START;
    public static final .VALUES UNDEFINED;

    public static _cls9 valueOf(String s)
    {
        return (_cls9)Enum.valueOf(com/brightcove/player/model/StyledElement$TextAlign, s);
    }

    public static _cls9[] values()
    {
        return (_cls9[])$VALUES.clone();
    }

    static 
    {
        UNDEFINED = new <init>("UNDEFINED", 0);
        START = new <init>("START", 1);
        LEFT = new <init>("LEFT", 2);
        CENTER = new <init>("CENTER", 3);
        RIGHT = new <init>("RIGHT", 4);
        END = new <init>("END", 5);
        n_3B_.clone aclone[] = new <init>[6];
        aclone[0] = UNDEFINED;
        aclone[1] = START;
        aclone[2] = LEFT;
        aclone[3] = CENTER;
        aclone[4] = RIGHT;
        aclone[5] = END;
        $VALUES = aclone;
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }
}
