// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;


// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            CardLinkCameraDecor

public static final class  extends Enum
{

    public static final m a;
    public static final m b;
    public static final m c;
    public static final m d;
    public static final m e;
    public static final m f;
    public static final m g;
    public static final m h;
    public static final m i;
    public static final m j;
    public static final m k;
    public static final m l;
    private static final m m[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError, s);
    }

    public static [] values()
    {
        return ([])m.clone();
    }

    static 
    {
        a = new <init>("UNKNOWN", 0);
        b = new <init>("TOO_MANY_ATTEMPTS", 1);
        c = new <init>("BLOCKED_CARD", 2);
        d = new <init>("CARD_BLOCKED", 3);
        e = new <init>("CARD_LINKED_TOO_MANY_ACCOUNTS", 4);
        f = new <init>("CARD_TYPE_UNSUPPORTED", 5);
        g = new <init>("INVALID_CARD_NUMBER", 6);
        h = new <init>("INVALID_EXPIRATION", 7);
        i = new <init>("INVALID_SECURITY_CODE", 8);
        j = new <init>("INVALID_POSTAL_CODE", 9);
        k = new <init>("UNSUPPORTED_REGION", 10);
        l = new <init>("NETWORK_FAILURE", 11);
        r_3B_.clone aclone[] = new <init>[12];
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
        m = aclone;
    }

    private (String s, int i1)
    {
        super(s, i1);
    }
}
