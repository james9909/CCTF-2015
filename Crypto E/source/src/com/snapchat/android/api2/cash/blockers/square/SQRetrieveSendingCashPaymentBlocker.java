// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.RetrieveCashPaymentTask;
import com.snapchat.android.api2.cash.square.SquareCashPaymentCallback;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.ListUtils;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQInitiatePaymentBlocker

public class SQRetrieveSendingCashPaymentBlocker extends Blocker
{

    protected CashErrorReporter mCashErrorReporter;
    protected SquareProvider mSquareProvider;

    public SQRetrieveSendingCashPaymentBlocker()
    {
        SnapchatApplication.e().a(this);
    }

    static void a(SQRetrieveSendingCashPaymentBlocker sqretrievesendingcashpaymentblocker)
    {
        sqretrievesendingcashpaymentblocker.b();
    }

    protected RetrieveCashPaymentTask a(String s, SquareCashPaymentCallback squarecashpaymentcallback)
    {
        return new RetrieveCashPaymentTask(s, squarecashpaymentcallback);
    }

    public void a(final CashTransaction transaction)
    {
        a(transaction.b(), new SquareCashPaymentCallback() {

            final SQRetrieveSendingCashPaymentBlocker this$0;
            final CashTransaction val$transaction;

            public void a(int i)
            {
                if (i == 404)
                {
                    SQRetrieveSendingCashPaymentBlocker.this.a(ListUtils.a(new SQInitiatePaymentBlocker()), true);
                    return;
                }
                List list = SquareProvider.a(SQRetrieveSendingCashPaymentBlocker.this, i);
                if (list != null)
                {
                    b(list, true);
                    return;
                } else
                {
                    AnalyticsEvents.a("SQUARE_RETRIEVE_PAYMENT_FAILED", i);
                    mCashErrorReporter.a(transaction, 0x7f0c0152, new Object[0]);
                    b(null, false);
                    return;
                }
            }

            public void a(CashPayment cashpayment)
            {
                if (cashpayment.f() == com.snapchat.android.api2.cash.square.data.CashPayment.State.CANCELED)
                {
                    com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason cancellationreason = cashpayment.h();
                    mSquareProvider.a(transaction, cancellationreason);
                    if (cancellationreason != com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason.SQUARE_CANCELED && cancellationreason != com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason.RECIPIENT_CANCELED)
                    {
                        SQRetrieveSendingCashPaymentBlocker.a(SQRetrieveSendingCashPaymentBlocker.this);
                        return;
                    }
                }
                transaction.a(SquareProvider.a(cashpayment.f(), cashpayment.h()));
                SQPaymentBlockers sqpaymentblockers = cashpayment.g();
                List list = null;
                if (sqpaymentblockers != null)
                {
                    list = sqpaymentblockers.b();
                }
                SQRetrieveSendingCashPaymentBlocker.this.a(list, true);
            }

            
            {
                this$0 = SQRetrieveSendingCashPaymentBlocker.this;
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
        return BlockerOrder.SQ_RETRIEVE_SENDING_CASH_PAYMENT_BLOCKER;
    }
}
