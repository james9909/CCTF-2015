// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square.data;


// Referenced classes of package com.snapchat.android.api2.cash.square.data:
//            CashPayment

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES DECLINED;
    public static final .VALUES EXPIRED_WAITING_ON_RECIPIENT;
    public static final .VALUES EXPIRED_WAITING_ON_SENDER;
    public static final .VALUES LIMIT_EXCEEDED;
    public static final .VALUES OTHER;
    public static final .VALUES RECIPIENT_CANCELED;
    public static final .VALUES SENDER_CANCELED;
    public static final .VALUES SQUARE_CANCELED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SENDER_CANCELED = new <init>("SENDER_CANCELED", 0);
        RECIPIENT_CANCELED = new <init>("RECIPIENT_CANCELED", 1);
        SQUARE_CANCELED = new <init>("SQUARE_CANCELED", 2);
        LIMIT_EXCEEDED = new <init>("LIMIT_EXCEEDED", 3);
        DECLINED = new <init>("DECLINED", 4);
        OTHER = new <init>("OTHER", 5);
        EXPIRED_WAITING_ON_SENDER = new <init>("EXPIRED_WAITING_ON_SENDER", 6);
        EXPIRED_WAITING_ON_RECIPIENT = new <init>("EXPIRED_WAITING_ON_RECIPIENT", 7);
        n_3B_.clone aclone[] = new <init>[8];
        aclone[0] = SENDER_CANCELED;
        aclone[1] = RECIPIENT_CANCELED;
        aclone[2] = SQUARE_CANCELED;
        aclone[3] = LIMIT_EXCEEDED;
        aclone[4] = DECLINED;
        aclone[5] = OTHER;
        aclone[6] = EXPIRED_WAITING_ON_SENDER;
        aclone[7] = EXPIRED_WAITING_ON_RECIPIENT;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
