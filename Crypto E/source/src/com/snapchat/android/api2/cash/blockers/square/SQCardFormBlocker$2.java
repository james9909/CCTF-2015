// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.api2.cash.square.data.ErrorType;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQCardFormBlocker

static class 
{

    static final int $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[];

    static 
    {
        $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType = new int[ErrorType.values().length];
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.CARD_TYPE_UNSUPPORTED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.INVALID_CARD_NUMBER.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.INVALID_EXPIRATION.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.INVALID_SECURITY_CODE.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.UNSUPPORTED_REGION.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.INVALID_POSTAL_CODE.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.TOO_MANY_ATTEMPTS.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.BLOCKED_CARD.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.NETWORK_FAILURE.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror8)
        {
            return;
        }
    }
}
