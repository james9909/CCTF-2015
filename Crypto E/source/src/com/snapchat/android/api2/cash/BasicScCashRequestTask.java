// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.BaseRetriableScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;

// Referenced classes of package com.snapchat.android.api2.cash:
//            ScCashResponsePayload

public abstract class BasicScCashRequestTask extends BaseRetriableScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public static interface BasicScCashRequestTaskCallback
    {

        public abstract void a(ScCashResponsePayload.Status status, int i);

        public abstract void a(ScCashResponsePayload sccashresponsepayload);
    }


    private static final String TAG = "BasicScCashRequestTask";
    private final BasicScCashRequestTaskCallback mCallback;

    protected BasicScCashRequestTask(BasicScCashRequestTaskCallback basicsccashrequesttaskcallback)
    {
        mCallback = basicsccashrequesttaskcallback;
    }

    public void a(ScCashResponsePayload sccashresponsepayload, NetworkResult networkresult)
    {
        Object aobj[] = new Object[2];
        aobj[0] = getClass().getSimpleName();
        aobj[1] = Integer.valueOf(networkresult.j());
        Timber.b("BasicScCashRequestTask", "CASH-LOG: %s finished with status code %d", aobj);
        if (networkresult.g() == null)
        {
            if (networkresult.h() && sccashresponsepayload != null)
            {
                if (sccashresponsepayload.a() == ScCashResponsePayload.Status.OK)
                {
                    mCallback.a(sccashresponsepayload);
                    return;
                } else
                {
                    mCallback.a(sccashresponsepayload.status, networkresult.j());
                    return;
                }
            } else
            {
                mCallback.a(ScCashResponsePayload.Status.UNKNOWN, networkresult.j());
                return;
            }
        } else
        {
            mCallback.a(ScCashResponsePayload.Status.NO_NETWORK, 0);
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((ScCashResponsePayload)obj, networkresult);
    }
}
