// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;


// Referenced classes of package com.brightcove.player.view:
//            BrightcoveClosedCaptioningView

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES OFF;
    public static final .VALUES ON;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        OFF = new <init>("OFF", 0);
        ON = new <init>("ON", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = OFF;
        aclone[1] = ON;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
