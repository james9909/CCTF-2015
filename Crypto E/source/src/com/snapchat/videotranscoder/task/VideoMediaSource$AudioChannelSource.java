// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;


// Referenced classes of package com.snapchat.videotranscoder.task:
//            VideoMediaSource

public static final class  extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    private static final d d[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource, s);
    }

    public static [] values()
    {
        return ([])d.clone();
    }

    static 
    {
        a = new <init>("ORIGINAL", 0);
        b = new <init>("SILENCE", 1);
        c = new <init>("DISABLED", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        d = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}