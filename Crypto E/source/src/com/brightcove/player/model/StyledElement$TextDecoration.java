// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;


// Referenced classes of package com.brightcove.player.model:
//            StyledElement

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES LINETHROUGH;
    public static final .VALUES NOLINETHROUGH;
    public static final .VALUES NONE;
    public static final .VALUES NOOVERLINE;
    public static final .VALUES NOUNDERLINE;
    public static final .VALUES OVERLINE;
    public static final .VALUES UNDERLINE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/brightcove/player/model/StyledElement$TextDecoration, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NONE = new <init>("NONE", 0);
        UNDERLINE = new <init>("UNDERLINE", 1);
        NOUNDERLINE = new <init>("NOUNDERLINE", 2);
        LINETHROUGH = new <init>("LINETHROUGH", 3);
        NOLINETHROUGH = new <init>("NOLINETHROUGH", 4);
        OVERLINE = new <init>("OVERLINE", 5);
        NOOVERLINE = new <init>("NOOVERLINE", 6);
        n_3B_.clone aclone[] = new <init>[7];
        aclone[0] = NONE;
        aclone[1] = UNDERLINE;
        aclone[2] = NOUNDERLINE;
        aclone[3] = LINETHROUGH;
        aclone[4] = NOLINETHROUGH;
        aclone[5] = OVERLINE;
        aclone[6] = NOOVERLINE;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
