// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.NetworkResult;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareRequestTask, SquareBlockerResponsePayload

public abstract class SquareBlockerRequestTask extends SquareRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public static interface SquareBlockerRequestCallback
    {

        public abstract void a(SquareBlockerResponsePayload squareblockerresponsepayload);

        public abstract void a(SquareBlockerResponsePayload squareblockerresponsepayload, int i);
    }


    private static final String TAG = "SquareBlockerRequestTask";
    private final SquareBlockerRequestCallback mCallback;

    protected SquareBlockerRequestTask(SquareBlockerRequestCallback squareblockerrequestcallback)
    {
        mCallback = squareblockerrequestcallback;
    }

    public void a(SquareBlockerResponsePayload squareblockerresponsepayload, NetworkResult networkresult)
    {
        Object aobj[] = new Object[2];
        aobj[0] = getClass().getSimpleName();
        aobj[1] = Integer.valueOf(networkresult.j());
        Timber.b("SquareBlockerRequestTask", "CASH-LOG: %s finished with status code %d", aobj);
        if (networkresult.j() == 200)
        {
            mCallback.a(squareblockerresponsepayload);
            return;
        } else
        {
            mCallback.a(squareblockerresponsepayload, networkresult.j());
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((SquareBlockerResponsePayload)obj, networkresult);
    }
}
