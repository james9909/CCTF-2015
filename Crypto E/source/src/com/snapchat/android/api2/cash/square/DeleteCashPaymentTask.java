// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareRequestTask

public class DeleteCashPaymentTask extends SquareRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{

    private static final String TAG = "DeleteCashPaymentTask";
    private final CashTransaction mCashTransaction;

    public DeleteCashPaymentTask(CashTransaction cashtransaction)
    {
        a(com/snapchat/android/api2/cash/square/data/CashPayment, this);
        mCashTransaction = cashtransaction;
    }

    public void a(CashPayment cashpayment, NetworkResult networkresult)
    {
        if (networkresult != null && networkresult.j() == 200)
        {
            Object aobj1[] = new Object[3];
            aobj1[0] = mCashTransaction.b();
            aobj1[1] = mCashTransaction.d();
            aobj1[2] = mCashTransaction.j();
            Timber.c("DeleteCashPaymentTask", "CASH-LOG: SUCCESS deleted transaction id[%s] sender[%s] amount[%s]", aobj1);
            mCashTransaction.a(com.snapchat.android.model.CashTransaction.TransactionStatus.RECIPIENT_CANCELED);
            BusProvider.a().a(new ChatUpdatedEvent(mCashTransaction.a(), mCashTransaction.b()));
            return;
        } else
        {
            Object aobj[] = new Object[3];
            aobj[0] = mCashTransaction.b();
            aobj[1] = mCashTransaction.d();
            aobj[2] = mCashTransaction.j();
            Timber.c("DeleteCashPaymentTask", "CASH-LOG: FAILED deleting transaction id[%s] sender[%s] amount[%s]", aobj);
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((CashPayment)obj, networkresult);
    }

    public Object b()
    {
        return null;
    }

    public HttpMethod c()
    {
        return HttpMethod.DELETE;
    }

    public String e()
    {
        return (new StringBuilder()).append("cash/payments/").append(mCashTransaction.b()).toString();
    }
}
