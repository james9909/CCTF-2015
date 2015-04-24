// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square.data;


// Referenced classes of package com.snapchat.android.api2.cash.square.data:
//            CashCustomer

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES RECIPIENT;
    public static final .VALUES SENDER;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/api2/cash/square/data/CashCustomer$Role, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        RECIPIENT = new <init>("RECIPIENT", 0);
        SENDER = new <init>("SENDER", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = RECIPIENT;
        aclone[1] = SENDER;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
