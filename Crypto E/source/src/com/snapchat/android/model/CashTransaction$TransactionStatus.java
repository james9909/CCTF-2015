// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            CashTransaction

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CANCELED;
    public static final .VALUES COMPLETED;
    public static final .VALUES EXPIRED;
    public static final .VALUES INITIATED;
    public static final .VALUES RECIPIENT_CANCELED;
    public static final .VALUES SENDER_CANCELED;
    public static final .VALUES WAITING_ON_RECIPIENT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/CashTransaction$TransactionStatus, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        INITIATED = new <init>("INITIATED", 0);
        WAITING_ON_RECIPIENT = new <init>("WAITING_ON_RECIPIENT", 1);
        COMPLETED = new <init>("COMPLETED", 2);
        EXPIRED = new <init>("EXPIRED", 3);
        CANCELED = new <init>("CANCELED", 4);
        RECIPIENT_CANCELED = new <init>("RECIPIENT_CANCELED", 5);
        SENDER_CANCELED = new <init>("SENDER_CANCELED", 6);
        s_3B_.clone aclone[] = new <init>[7];
        aclone[0] = INITIATED;
        aclone[1] = WAITING_ON_RECIPIENT;
        aclone[2] = COMPLETED;
        aclone[3] = EXPIRED;
        aclone[4] = CANCELED;
        aclone[5] = RECIPIENT_CANCELED;
        aclone[6] = SENDER_CANCELED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
