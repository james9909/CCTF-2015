// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.square.data.CashCustomerStatus;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.api2.framework.NetworkResult;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareRequestTask, SquareCashCustomerStatusCallback

public class RetrieveCashCustomerStatusTask extends SquareRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{

    private static final String TAG = "RetrieveCashCustomerStatusTask";
    private SquareCashCustomerStatusCallback mListener;

    public RetrieveCashCustomerStatusTask(SquareCashCustomerStatusCallback squarecashcustomerstatuscallback)
    {
        mListener = squarecashcustomerstatuscallback;
        a(com/snapchat/android/api2/cash/square/data/CashCustomerStatus, this);
    }

    public void a(CashCustomerStatus cashcustomerstatus, NetworkResult networkresult)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(networkresult.j());
        Timber.c("RetrieveCashCustomerStatusTask", "CASH-LOG: RetrieveCashCustomerStatusTask finished with status code %d", aobj);
        if (networkresult.j() == 200 && cashcustomerstatus != null)
        {
            mListener.a(cashcustomerstatus);
            return;
        } else
        {
            mListener.a(networkresult.j());
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((CashCustomerStatus)obj, networkresult);
    }

    public Object b()
    {
        return null;
    }

    public HttpMethod c()
    {
        return HttpMethod.GET;
    }

    protected String e()
    {
        return "cash";
    }
}
