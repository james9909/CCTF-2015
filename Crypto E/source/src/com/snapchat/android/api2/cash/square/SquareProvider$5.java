// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;


// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareProvider

static class CancellationReason
{

    static final int $SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason[];

    static 
    {
        $SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason = new int[com.snapchat.android.api2.cash.square.data.llationReason.values().length];
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason[com.snapchat.android.api2.cash.square.data.llationReason.DECLINED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason[com.snapchat.android.api2.cash.square.data.llationReason.LIMIT_EXCEEDED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason[com.snapchat.android.api2.cash.square.data.llationReason.SQUARE_CANCELED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason[com.snapchat.android.api2.cash.square.data.llationReason.OTHER.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3)
        {
            return;
        }
    }
}
