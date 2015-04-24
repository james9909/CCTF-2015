// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square.data;


// Referenced classes of package com.snapchat.android.api2.cash.square.data:
//            CashPayment

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES SEND;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/api2/cash/square/data/CashPayment$Action, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SEND = new <init>("SEND", 0);
        n_3B_.clone aclone[] = new <init>[1];
        aclone[0] = SEND;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
