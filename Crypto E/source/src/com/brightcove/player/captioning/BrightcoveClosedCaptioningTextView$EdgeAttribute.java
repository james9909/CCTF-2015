// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;


// Referenced classes of package com.brightcove.player.captioning:
//            BrightcoveClosedCaptioningTextView

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES DEPRESSED;
    public static final .VALUES DROP_SHADOW;
    public static final .VALUES NONE;
    public static final .VALUES RAISED;
    public static final .VALUES UNIFORM;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NONE = new <init>("NONE", 0);
        RAISED = new <init>("RAISED", 1);
        DEPRESSED = new <init>("DEPRESSED", 2);
        UNIFORM = new <init>("UNIFORM", 3);
        DROP_SHADOW = new <init>("DROP_SHADOW", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = NONE;
        aclone[1] = RAISED;
        aclone[2] = DEPRESSED;
        aclone[3] = UNIFORM;
        aclone[4] = DROP_SHADOW;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
