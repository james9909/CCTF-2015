// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.api2.cash.square.SquareCashPaymentCallback;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQRetrieveReceivingCashPaymentBlocker

class val.transaction
    implements SquareCashPaymentCallback
{

    final SQRetrieveReceivingCashPaymentBlocker this$0;
    final CashTransaction val$transaction;

    public void a(int i)
    {
        List list = SquareProvider.a(SQRetrieveReceivingCashPaymentBlocker.this, i);
        if (list != null)
        {
            b(list, true);
            return;
        } else
        {
            b(null, false);
            return;
        }
    }

    public void a(CashPayment cashpayment)
    {
        val$transaction.a(SquareProvider.a(cashpayment.f(), cashpayment.h()));
        SQPaymentBlockers sqpaymentblockers = cashpayment.g();
        List list = null;
        if (sqpaymentblockers != null)
        {
            list = sqpaymentblockers.b();
        }
        if (list != null && !list.isEmpty())
        {
            SQRetrieveReceivingCashPaymentBlocker.this.a(list, true);
            return;
        } else
        {
            SQRetrieveReceivingCashPaymentBlocker.this.a();
            return;
        }
    }

    ()
    {
        this$0 = final_sqretrievereceivingcashpaymentblocker;
        val$transaction = CashTransaction.this;
        super();
    }
}
