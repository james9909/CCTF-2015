// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;


// Referenced classes of package com.snapchat.android.util.debug:
//            ReleaseManager

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
        return ()Enum.valueOf(com/snapchat/android/util/debug/ReleaseManager$ReleaseMode, s);
    }

    public static [] values()
    {
        return ([])f.clone();
    }

    static 
    {
        a = new <init>("DEBUG", 0);
        b = new <init>("PERF", 1);
        c = new <init>("ALPHA", 2);
        d = new <init>("BETA", 3);
        e = new <init>("PRODUCTION", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        f = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
