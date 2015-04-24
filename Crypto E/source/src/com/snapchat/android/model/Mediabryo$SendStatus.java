// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            Mediabryo

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FAILED;
    public static final .VALUES SENDING;
    public static final .VALUES SENDING_ON_UPLOAD;
    public static final .VALUES SENT;
    public static final .VALUES UNSENT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/Mediabryo$SendStatus, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNSENT = new <init>("UNSENT", 0);
        SENDING = new <init>("SENDING", 1);
        SENDING_ON_UPLOAD = new <init>("SENDING_ON_UPLOAD", 2);
        SENT = new <init>("SENT", 3);
        FAILED = new <init>("FAILED", 4);
        s_3B_.clone aclone[] = new <init>[5];
        aclone[0] = UNSENT;
        aclone[1] = SENDING;
        aclone[2] = SENDING_ON_UPLOAD;
        aclone[3] = SENT;
        aclone[4] = FAILED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
