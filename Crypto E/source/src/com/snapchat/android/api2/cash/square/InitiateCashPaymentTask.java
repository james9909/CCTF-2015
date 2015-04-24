// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.api2.cash.square.data.CashCustomer;
import com.snapchat.android.api2.cash.square.data.CashCustomization;
import com.snapchat.android.api2.cash.square.data.CashPaymentExtras;
import com.snapchat.android.api2.cash.square.data.Money;
import com.snapchat.android.model.CashTransaction;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareCashPaymentTask, SquareCashPaymentCallback

public class InitiateCashPaymentTask extends SquareCashPaymentTask
{
    class RequestPayload
    {

        private String action;
        private String cardToken;
        private CashPaymentExtras extras;
        private String id;
        private Money money;
        private CashCustomer recipient;
        private CashCustomization recipientCustomization;
        private CashCustomization senderCustomization;
        private String signature;
        final InitiateCashPaymentTask this$0;

        RequestPayload()
        {
            this$0 = InitiateCashPaymentTask.this;
            super();
            id = InitiateCashPaymentTask.a(InitiateCashPaymentTask.this).b();
            action = com.snapchat.android.api2.cash.square.data.CashPayment.Action.SEND.name();
            recipient = new CashCustomer(InitiateCashPaymentTask.a(InitiateCashPaymentTask.this).f(), null, null);
            money = new Money(InitiateCashPaymentTask.a(InitiateCashPaymentTask.this).g());
            cardToken = InitiateCashPaymentTask.b(InitiateCashPaymentTask.this);
            signature = InitiateCashPaymentTask.a(InitiateCashPaymentTask.this).y();
            extras = new CashPaymentExtras(InitiateCashPaymentTask.a(InitiateCashPaymentTask.this).w());
            senderCustomization = new CashCustomization(InitiateCashPaymentTask.a(InitiateCashPaymentTask.this).A());
            recipientCustomization = new CashCustomization(InitiateCashPaymentTask.a(InitiateCashPaymentTask.this).B());
        }
    }


    private final String mCardToken;
    private final CashTransaction mCashTransaction;

    public InitiateCashPaymentTask(CashTransaction cashtransaction, String s, SquareCashPaymentCallback squarecashpaymentcallback)
    {
        super(squarecashpaymentcallback);
        mCashTransaction = cashtransaction;
        mCardToken = s;
    }

    static CashTransaction a(InitiateCashPaymentTask initiatecashpaymenttask)
    {
        return initiatecashpaymenttask.mCashTransaction;
    }

    static String b(InitiateCashPaymentTask initiatecashpaymenttask)
    {
        return initiatecashpaymenttask.mCardToken;
    }

    public Object b()
    {
        return new RequestPayload();
    }

    public String e()
    {
        return "cash/payments";
    }
}
