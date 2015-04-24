// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning.tasks;


// Referenced classes of package com.brightcove.player.captioning.tasks:
//            LoadCaptionsTask

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES TTML;
    public static final .VALUES WEBVTT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        TTML = new <init>("TTML", 0);
        WEBVTT = new <init>("WEBVTT", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = TTML;
        aclone[1] = WEBVTT;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
