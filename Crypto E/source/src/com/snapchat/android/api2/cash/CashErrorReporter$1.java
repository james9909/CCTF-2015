// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;


// Referenced classes of package com.snapchat.android.api2.cash:
//            CashErrorReporter

static class d.Status
{

    static final int $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[];

    static 
    {
        $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status = new int[d.Status.values().length];
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[d.Status.NO_VERIFIED_PHONE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[d.Status.NON_US_USER.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[d.Status.INVALID_AMOUNT.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[d.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[d.Status.NO_NETWORK.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[d.Status.LOCKED_ACCOUNT.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status[d.Status.UNKNOWN.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror6)
        {
            return;
        }
    }
}
