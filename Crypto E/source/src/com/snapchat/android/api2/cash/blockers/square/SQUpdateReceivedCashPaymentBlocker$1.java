// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.square.SquareCashPaymentCallback;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQUpdateReceivedCashPaymentBlocker

class val.transaction
    implements SquareCashPaymentCallback
{

    final SQUpdateReceivedCashPaymentBlocker this$0;
    final CashTransaction val$transaction;

    public void a(int i)
    {
        Object aobj[] = new Object[2];
        aobj[0] = val$transaction.b();
        aobj[1] = Integer.valueOf(i);
        Timber.b("SQUpdateReceivedCashPaymentBlocker", "CASH-LOG: SQUpdateReceivedCashPaymentBlocker FAILED to retrieve cash payment id[%s] statusCode[%d]", aobj);
        SQUpdateReceivedCashPaymentBlocker.this.a(null, false);
    }

    public void a(CashPayment cashpayment)
    {
        Timber.b("SQUpdateReceivedCashPaymentBlocker", "CASH-LOG: SQUpdateReceivedCashPaymentBlocker RECEIVED cash payment %s", new Object[] {
            cashpayment
        });
        SQPaymentBlockers sqpaymentblockers = cashpayment.g();
        java.util.List list = null;
        if (sqpaymentblockers != null)
        {
            list = sqpaymentblockers.b();
        }
        val$transaction.a(SquareProvider.a(cashpayment.f(), cashpayment.h()));
        SQUpdateReceivedCashPaymentBlocker.this.a(list, false);
        BusProvider.a().a(new ChatUpdatedEvent(val$transaction.a(), val$transaction.b()));
    }

    Y()
    {
        this$0 = final_squpdatereceivedcashpaymentblocker;
        val$transaction = CashTransaction.this;
        super();
    }
}
