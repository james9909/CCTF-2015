// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;


public class ScCashResponsePayload
{
    public static final class Status extends Enum
    {

        private static final Status $VALUES[];
        public static final Status INVALID_AMOUNT;
        public static final Status LOCKED_ACCOUNT;
        public static final Status NON_US_USER;
        public static final Status NO_NETWORK;
        public static final Status NO_VERIFIED_AGE;
        public static final Status NO_VERIFIED_PHONE;
        public static final Status OK;
        public static final Status SERVICE_NOT_AVAILABLE_TO_RECIPIENT;
        public static final Status UNDER_AGE_LIMIT;
        public static final Status UNKNOWN;

        public static Status valueOf(String s)
        {
            return (Status)Enum.valueOf(com/snapchat/android/api2/cash/ScCashResponsePayload$Status, s);
        }

        public static Status[] values()
        {
            return (Status[])$VALUES.clone();
        }

        static 
        {
            UNKNOWN = new Status("UNKNOWN", 0);
            OK = new Status("OK", 1);
            NO_VERIFIED_PHONE = new Status("NO_VERIFIED_PHONE", 2);
            NON_US_USER = new Status("NON_US_USER", 3);
            LOCKED_ACCOUNT = new Status("LOCKED_ACCOUNT", 4);
            INVALID_AMOUNT = new Status("INVALID_AMOUNT", 5);
            SERVICE_NOT_AVAILABLE_TO_RECIPIENT = new Status("SERVICE_NOT_AVAILABLE_TO_RECIPIENT", 6);
            UNDER_AGE_LIMIT = new Status("UNDER_AGE_LIMIT", 7);
            NO_VERIFIED_AGE = new Status("NO_VERIFIED_AGE", 8);
            NO_NETWORK = new Status("NO_NETWORK", 9);
            Status astatus[] = new Status[10];
            astatus[0] = UNKNOWN;
            astatus[1] = OK;
            astatus[2] = NO_VERIFIED_PHONE;
            astatus[3] = NON_US_USER;
            astatus[4] = LOCKED_ACCOUNT;
            astatus[5] = INVALID_AMOUNT;
            astatus[6] = SERVICE_NOT_AVAILABLE_TO_RECIPIENT;
            astatus[7] = UNDER_AGE_LIMIT;
            astatus[8] = NO_VERIFIED_AGE;
            astatus[9] = NO_NETWORK;
            $VALUES = astatus;
        }

        private Status(String s, int i)
        {
            super(s, i);
        }
    }


    protected Status status;

    public ScCashResponsePayload()
    {
    }

    public Status a()
    {
        return status;
    }
}
