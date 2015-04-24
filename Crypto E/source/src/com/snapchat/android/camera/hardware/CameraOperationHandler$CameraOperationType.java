// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware;


// Referenced classes of package com.snapchat.android.camera.hardware:
//            CameraOperationHandler

public static final class  extends Enum
{

    public static final o a;
    public static final o b;
    public static final o c;
    public static final o d;
    public static final o e;
    public static final o f;
    public static final o g;
    public static final o h;
    public static final o i;
    public static final o j;
    public static final o k;
    public static final o l;
    public static final o m;
    public static final o n;
    private static final o o[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType, s);
    }

    public static [] values()
    {
        return ([])o.clone();
    }

    static 
    {
        a = new <init>("OPEN", 0);
        b = new <init>("RELEASE", 1);
        c = new <init>("SET_PARAMETERS", 2);
        d = new <init>("GET_PARAMETERS", 3);
        e = new <init>("UNLOCK", 4);
        f = new <init>("LOCK", 5);
        g = new <init>("RECONNECT", 6);
        h = new <init>("AUTOFOCUS", 7);
        i = new <init>("START_PREVIEW", 8);
        j = new <init>("STOP_PREVIEW", 9);
        k = new <init>("SET_CALLBACK_WITH_BUFFER", 10);
        l = new <init>("SET_TEXTURE", 11);
        m = new <init>("SET_ORIENTATION", 12);
        n = new <init>("ADD_CALLBACK_BUFFER", 13);
        e_3B_.clone aclone[] = new <init>[14];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        aclone[5] = f;
        aclone[6] = g;
        aclone[7] = h;
        aclone[8] = i;
        aclone[9] = j;
        aclone[10] = k;
        aclone[11] = l;
        aclone[12] = m;
        aclone[13] = n;
        o = aclone;
    }

    private (String s, int i1)
    {
        super(s, i1);
    }
}
