// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.pipeline;


// Referenced classes of package com.snapchat.videotranscoder.pipeline:
//            Mixer

public static final class A extends Enum
{

    public static final c a;
    public static final c b;
    private static final c c[];

    public static A valueOf(String s)
    {
        return (A)Enum.valueOf(com/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo, s);
    }

    public static A[] values()
    {
        return (A[])c.clone();
    }

    static 
    {
        a = new <init>("YES", 0);
        b = new <init>("NO", 1);
        o_3B_.clone aclone[] = new <init>[2];
        aclone[0] = a;
        aclone[1] = b;
        c = aclone;
    }

    private A(String s, int i)
    {
        super(s, i);
    }
}
