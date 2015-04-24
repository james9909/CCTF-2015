// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square.data;


// Referenced classes of package com.snapchat.android.api2.cash.square.data:
//            CashPayment

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CANCELED;
    public static final .VALUES COMPLETED;
    public static final .VALUES PENDING;
    public static final .VALUES WAITING_ON_RECIPIENT;
    public static final .VALUES WAITING_ON_SENDER;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/api2/cash/square/data/CashPayment$State, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        WAITING_ON_SENDER = new <init>("WAITING_ON_SENDER", 0);
        WAITING_ON_RECIPIENT = new <init>("WAITING_ON_RECIPIENT", 1);
        PENDING = new <init>("PENDING", 2);
        COMPLETED = new <init>("COMPLETED", 3);
        CANCELED = new <init>("CANCELED", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = WAITING_ON_SENDER;
        aclone[1] = WAITING_ON_RECIPIENT;
        aclone[2] = PENDING;
        aclone[3] = COMPLETED;
        aclone[4] = CANCELED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
