// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;


// Referenced classes of package com.snapchat.android.camera:
//            VideoEvent

public static final class  extends Enum
{

    public static final c a;
    public static final c b;
    private static final c c[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/camera/VideoEvent$Type, s);
    }

    public static [] values()
    {
        return ([])c.clone();
    }

    static 
    {
        a = new <init>("MAX_FILE_SIZE_REACHED", 0);
        b = new <init>("MAX_DURATION_REACHED", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = a;
        aclone[1] = b;
        c = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
