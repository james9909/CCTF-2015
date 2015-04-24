// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;


// Referenced classes of package com.googlecode.mp4parser.authoring.tracks:
//            H264TrackImpl

public static final class  extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    public static final f e;
    private static final f f[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType, s);
    }

    public static [] values()
    {
         a1[] = f;
        int i = a1.length;
         a2[] = new f[i];
        System.arraycopy(a1, 0, a2, 0, i);
        return a2;
    }

    static 
    {
        a = new <init>("P", 0);
        b = new <init>("B", 1);
        c = new <init>("I", 2);
        d = new <init>("SP", 3);
        e = new <init>("SI", 4);
        f af[] = new <init>[5];
        af[0] = a;
        af[1] = b;
        af[2] = c;
        af[3] = d;
        af[4] = e;
        f = af;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
