// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.video;


// Referenced classes of package com.snapchat.videotranscoder.video:
//            ShaderText

public static final class  extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    private static final e e[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/videotranscoder/video/ShaderText$Type, s);
    }

    public static [] values()
    {
        return ([])e.clone();
    }

    static 
    {
        a = new <init>("NORMAL", 0);
        b = new <init>("INSTASNAP", 1);
        c = new <init>("GREYSCALE", 2);
        d = new <init>("SEPIA", 3);
        e_3B_.clone aclone[] = new <init>[4];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        e = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
