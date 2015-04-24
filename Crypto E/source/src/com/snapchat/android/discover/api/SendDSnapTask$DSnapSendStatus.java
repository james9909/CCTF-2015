// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.api;


// Referenced classes of package com.snapchat.android.discover.api:
//            SendDSnapTask

public static final class  extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    private static final g g[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus, s);
    }

    public static [] values()
    {
        return ([])g.clone();
    }

    static 
    {
        a = new <init>("UNSEND", 0);
        b = new <init>("SUCCESS", 1);
        c = new <init>("FAILED_NOT_A_FRIEND", 2);
        d = new <init>("FAILED_TRANSIENT", 3);
        e = new <init>("FAILED_INVALID_SEQUENCE", 4);
        f = new <init>("NO_NETWORK", 5);
        s_3B_.clone aclone[] = new <init>[6];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        aclone[5] = f;
        g = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
