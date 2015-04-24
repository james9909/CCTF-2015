// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square.data;


public final class ErrorType extends Enum
{

    private static final ErrorType $VALUES[];
    public static final ErrorType BLOCKED_CARD;
    public static final ErrorType CARD_BLOCKED;
    public static final ErrorType CARD_LINKED_TOO_MANY_ACCOUNTS;
    public static final ErrorType CARD_TYPE_UNSUPPORTED;
    public static final ErrorType CONFLICT_PARAMETER;
    public static final ErrorType FORBIDDEN_PARAMETER;
    public static final ErrorType INVALID_CARD_NUMBER;
    public static final ErrorType INVALID_EXPIRATION;
    public static final ErrorType INVALID_PARAMETER;
    public static final ErrorType INVALID_PASSCODE;
    public static final ErrorType INVALID_POSTAL_CODE;
    public static final ErrorType INVALID_SECURITY_CODE;
    public static final ErrorType MISSING_PARAMETER;
    public static final ErrorType NETWORK_FAILURE;
    public static final ErrorType TOO_MANY_ATTEMPTS;
    public static final ErrorType UNKNOWN;
    public static final ErrorType UNSUPPORTED_REGION;

    private ErrorType(String s, int i)
    {
        super(s, i);
    }

    public static boolean isNonRecoverableError(ErrorType errortype)
    {
        return errortype == TOO_MANY_ATTEMPTS || errortype == BLOCKED_CARD;
    }

    public static ErrorType valueOf(String s)
    {
        return (ErrorType)Enum.valueOf(com/snapchat/android/api2/cash/square/data/ErrorType, s);
    }

    public static ErrorType[] values()
    {
        return (ErrorType[])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new ErrorType("UNKNOWN", 0);
        CONFLICT_PARAMETER = new ErrorType("CONFLICT_PARAMETER", 1);
        FORBIDDEN_PARAMETER = new ErrorType("FORBIDDEN_PARAMETER", 2);
        INVALID_PARAMETER = new ErrorType("INVALID_PARAMETER", 3);
        MISSING_PARAMETER = new ErrorType("MISSING_PARAMETER", 4);
        INVALID_PASSCODE = new ErrorType("INVALID_PASSCODE", 5);
        TOO_MANY_ATTEMPTS = new ErrorType("TOO_MANY_ATTEMPTS", 6);
        BLOCKED_CARD = new ErrorType("BLOCKED_CARD", 7);
        CARD_BLOCKED = new ErrorType("CARD_BLOCKED", 8);
        CARD_LINKED_TOO_MANY_ACCOUNTS = new ErrorType("CARD_LINKED_TOO_MANY_ACCOUNTS", 9);
        CARD_TYPE_UNSUPPORTED = new ErrorType("CARD_TYPE_UNSUPPORTED", 10);
        INVALID_CARD_NUMBER = new ErrorType("INVALID_CARD_NUMBER", 11);
        INVALID_EXPIRATION = new ErrorType("INVALID_EXPIRATION", 12);
        INVALID_POSTAL_CODE = new ErrorType("INVALID_POSTAL_CODE", 13);
        INVALID_SECURITY_CODE = new ErrorType("INVALID_SECURITY_CODE", 14);
        UNSUPPORTED_REGION = new ErrorType("UNSUPPORTED_REGION", 15);
        NETWORK_FAILURE = new ErrorType("NETWORK_FAILURE", 16);
        ErrorType aerrortype[] = new ErrorType[17];
        aerrortype[0] = UNKNOWN;
        aerrortype[1] = CONFLICT_PARAMETER;
        aerrortype[2] = FORBIDDEN_PARAMETER;
        aerrortype[3] = INVALID_PARAMETER;
        aerrortype[4] = MISSING_PARAMETER;
        aerrortype[5] = INVALID_PASSCODE;
        aerrortype[6] = TOO_MANY_ATTEMPTS;
        aerrortype[7] = BLOCKED_CARD;
        aerrortype[8] = CARD_BLOCKED;
        aerrortype[9] = CARD_LINKED_TOO_MANY_ACCOUNTS;
        aerrortype[10] = CARD_TYPE_UNSUPPORTED;
        aerrortype[11] = INVALID_CARD_NUMBER;
        aerrortype[12] = INVALID_EXPIRATION;
        aerrortype[13] = INVALID_POSTAL_CODE;
        aerrortype[14] = INVALID_SECURITY_CODE;
        aerrortype[15] = UNSUPPORTED_REGION;
        aerrortype[16] = NETWORK_FAILURE;
        $VALUES = aerrortype;
    }
}
