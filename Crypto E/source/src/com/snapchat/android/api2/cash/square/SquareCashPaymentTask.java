// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.framework.NetworkResult;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareRequestTask, SquareCashPaymentCallback

public abstract class SquareCashPaymentTask extends SquareRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{

    private static final String TAG = "SquareCashPaymentTask";
    private final SquareCashPaymentCallback mCallback;

    protected SquareCashPaymentTask(SquareCashPaymentCallback squarecashpaymentcallback)
    {
        mCallback = squarecashpaymentcallback;
        a(com/snapchat/android/api2/cash/square/data/CashPayment, this);
    }

    public void a(CashPayment cashpayment, NetworkResult networkresult)
    {
        Object aobj[] = new Object[2];
        aobj[0] = getClass().getSimpleName();
        aobj[1] = Integer.valueOf(networkresult.j());
        Timber.b("SquareCashPaymentTask", "CASH-LOG: %s finished with status code %d", aobj);
        if (networkresult.j() == 200 && cashpayment != null)
        {
            mCallback.a(cashpayment);
            return;
        } else
        {
            mCallback.a(networkresult.j());
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((CashPayment)obj, networkresult);
    }
}
