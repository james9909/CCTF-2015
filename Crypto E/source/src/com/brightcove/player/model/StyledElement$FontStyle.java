// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;


// Referenced classes of package com.brightcove.player.model:
//            StyledElement

public static final class _cls9 extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ITALIC;
    public static final .VALUES NORMAL;
    public static final .VALUES UNDEFINED;

    public static _cls9 valueOf(String s)
    {
        return (_cls9)Enum.valueOf(com/brightcove/player/model/StyledElement$FontStyle, s);
    }

    public static _cls9[] values()
    {
        return (_cls9[])$VALUES.clone();
    }

    static 
    {
        UNDEFINED = new <init>("UNDEFINED", 0);
        NORMAL = new <init>("NORMAL", 1);
        ITALIC = new <init>("ITALIC", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = UNDEFINED;
        aclone[1] = NORMAL;
        aclone[2] = ITALIC;
        $VALUES = aclone;
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }
}
