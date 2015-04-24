// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;


// Referenced classes of package com.snapchat.android.api2.cash:
//            ScCashResponsePayload

public static final class A extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES INVALID_AMOUNT;
    public static final .VALUES LOCKED_ACCOUNT;
    public static final .VALUES NON_US_USER;
    public static final .VALUES NO_NETWORK;
    public static final .VALUES NO_VERIFIED_AGE;
    public static final .VALUES NO_VERIFIED_PHONE;
    public static final .VALUES OK;
    public static final .VALUES SERVICE_NOT_AVAILABLE_TO_RECIPIENT;
    public static final .VALUES UNDER_AGE_LIMIT;
    public static final .VALUES UNKNOWN;

    public static A valueOf(String s)
    {
        return (A)Enum.valueOf(com/snapchat/android/api2/cash/ScCashResponsePayload$Status, s);
    }

    public static A[] values()
    {
        return (A[])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        OK = new <init>("OK", 1);
        NO_VERIFIED_PHONE = new <init>("NO_VERIFIED_PHONE", 2);
        NON_US_USER = new <init>("NON_US_USER", 3);
        LOCKED_ACCOUNT = new <init>("LOCKED_ACCOUNT", 4);
        INVALID_AMOUNT = new <init>("INVALID_AMOUNT", 5);
        SERVICE_NOT_AVAILABLE_TO_RECIPIENT = new <init>("SERVICE_NOT_AVAILABLE_TO_RECIPIENT", 6);
        UNDER_AGE_LIMIT = new <init>("UNDER_AGE_LIMIT", 7);
        NO_VERIFIED_AGE = new <init>("NO_VERIFIED_AGE", 8);
        NO_NETWORK = new <init>("NO_NETWORK", 9);
        s_3B_.clone aclone[] = new <init>[10];
        aclone[0] = UNKNOWN;
        aclone[1] = OK;
        aclone[2] = NO_VERIFIED_PHONE;
        aclone[3] = NON_US_USER;
        aclone[4] = LOCKED_ACCOUNT;
        aclone[5] = INVALID_AMOUNT;
        aclone[6] = SERVICE_NOT_AVAILABLE_TO_RECIPIENT;
        aclone[7] = UNDER_AGE_LIMIT;
        aclone[8] = NO_VERIFIED_AGE;
        aclone[9] = NO_NETWORK;
        $VALUES = aclone;
    }

    private A(String s, int i)
    {
        super(s, i);
    }
}
