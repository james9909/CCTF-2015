// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.square.SquareCashPaymentCallback;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.ListUtils;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQRetrieveSendingCashPaymentBlocker, SQInitiatePaymentBlocker

class val.transaction
    implements SquareCashPaymentCallback
{

    final SQRetrieveSendingCashPaymentBlocker this$0;
    final CashTransaction val$transaction;

    public void a(int i)
    {
        if (i == 404)
        {
            SQRetrieveSendingCashPaymentBlocker.this.a(ListUtils.a(new SQInitiatePaymentBlocker()), true);
            return;
        }
        java.util.List list = SquareProvider.a(SQRetrieveSendingCashPaymentBlocker.this, i);
        if (list != null)
        {
            b(list, true);
            return;
        } else
        {
            AnalyticsEvents.a("SQUARE_RETRIEVE_PAYMENT_FAILED", i);
            mCashErrorReporter.a(val$transaction, 0x7f0c0152, new Object[0]);
            b(null, false);
            return;
        }
    }

    public void a(CashPayment cashpayment)
    {
        if (cashpayment.f() == com.snapchat.android.api2.cash.square.data.r)
        {
            com.snapchat.android.api2.cash.square.data.r r = cashpayment.h();
            mSquareProvider.a(val$transaction, r);
            if (r != com.snapchat.android.api2.cash.square.data.CANCELED && r != com.snapchat.android.api2.cash.square.data.NT_CANCELED)
            {
                SQRetrieveSendingCashPaymentBlocker.a(SQRetrieveSendingCashPaymentBlocker.this);
                return;
            }
        }
        val$transaction.a(SquareProvider.a(cashpayment.f(), cashpayment.h()));
        SQPaymentBlockers sqpaymentblockers = cashpayment.g();
        java.util.List list = null;
        if (sqpaymentblockers != null)
        {
            list = sqpaymentblockers.b();
        }
        SQRetrieveSendingCashPaymentBlocker.this.a(list, true);
    }

    ()
    {
        this$0 = final_sqretrievesendingcashpaymentblocker;
        val$transaction = CashTransaction.this;
        super();
    }
}
