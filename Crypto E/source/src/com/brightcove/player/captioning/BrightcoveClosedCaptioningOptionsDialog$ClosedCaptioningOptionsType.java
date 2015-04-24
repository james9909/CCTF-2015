// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;


// Referenced classes of package com.brightcove.player.captioning:
//            BrightcoveClosedCaptioningOptionsDialog

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES BACKGROUND;
    public static final .VALUES EDGE_COLOR;
    public static final .VALUES EDGE_TYPE;
    public static final .VALUES FONT;
    public static final .VALUES HIGHLIGHT;
    public static final .VALUES TEXT_COLOR;
    public static final .VALUES TEXT_SIZE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        FONT = new <init>("FONT", 0);
        TEXT_SIZE = new <init>("TEXT_SIZE", 1);
        TEXT_COLOR = new <init>("TEXT_COLOR", 2);
        EDGE_TYPE = new <init>("EDGE_TYPE", 3);
        EDGE_COLOR = new <init>("EDGE_COLOR", 4);
        HIGHLIGHT = new <init>("HIGHLIGHT", 5);
        BACKGROUND = new <init>("BACKGROUND", 6);
        e_3B_.clone aclone[] = new <init>[7];
        aclone[0] = FONT;
        aclone[1] = TEXT_SIZE;
        aclone[2] = TEXT_COLOR;
        aclone[3] = EDGE_TYPE;
        aclone[4] = EDGE_COLOR;
        aclone[5] = HIGHLIGHT;
        aclone[6] = BACKGROUND;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
