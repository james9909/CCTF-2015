// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.RetrieveCashPaymentTask;
import com.snapchat.android.api2.cash.square.SquareCashPaymentCallback;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.squareup.otto.Bus;
import java.util.List;

public class SQUpdateReceivedCashPaymentBlocker extends Blocker
{

    private static final String TAG = "SQUpdateReceivedCashPaymentBlocker";

    public SQUpdateReceivedCashPaymentBlocker()
    {
    }

    protected RetrieveCashPaymentTask a(String s, SquareCashPaymentCallback squarecashpaymentcallback)
    {
        return new RetrieveCashPaymentTask(s, squarecashpaymentcallback);
    }

    public void a(final CashTransaction transaction)
    {
        a(transaction.b(), new SquareCashPaymentCallback() {

            final SQUpdateReceivedCashPaymentBlocker this$0;
            final CashTransaction val$transaction;

            public void a(int i)
            {
                Object aobj[] = new Object[2];
                aobj[0] = transaction.b();
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
                List list = null;
                if (sqpaymentblockers != null)
                {
                    list = sqpaymentblockers.b();
                }
                transaction.a(SquareProvider.a(cashpayment.f(), cashpayment.h()));
                SQUpdateReceivedCashPaymentBlocker.this.a(list, false);
                BusProvider.a().a(new ChatUpdatedEvent(transaction.a(), transaction.b()));
            }

            
            {
                this$0 = SQUpdateReceivedCashPaymentBlocker.this;
                transaction = cashtransaction;
                super();
            }
        }).g();
    }

    protected void a(List list, boolean flag)
    {
        super.a(list, flag);
    }

    protected void b(List list, boolean flag)
    {
        super.b(list, flag);
    }

    public BlockerOrder c()
    {
        return BlockerOrder.SQ_UPDATE_RECEIVED_CASH_PAYMENT_BLOCKER;
    }
}
