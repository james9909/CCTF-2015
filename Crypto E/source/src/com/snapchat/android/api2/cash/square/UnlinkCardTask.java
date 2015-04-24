// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.cash.CashCardManager;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareRequestTask

public class UnlinkCardTask extends SquareRequestTask
{
    public static interface UnlinkSuccessListener
    {

        public abstract void a();

        public abstract void a(int i);
    }


    private static final String TAG = "UnlinkCardTask";
    CashCardManager mCashCardManager;
    private UnlinkSuccessListener mUnlinkSuccessListener;

    public UnlinkCardTask(UnlinkSuccessListener unlinksuccesslistener)
    {
        mUnlinkSuccessListener = unlinksuccesslistener;
    }

    public void a(NetworkResult networkresult)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(networkresult.j());
        Timber.c("UnlinkCardTask", "CASH-LOG: UnlinkCardTask finished with status code %d", aobj);
        if (networkresult.j() == 200)
        {
            UserPrefs.T();
            mCashCardManager.b();
            mUnlinkSuccessListener.a();
            return;
        } else
        {
            mUnlinkSuccessListener.a(networkresult.j());
            return;
        }
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
        return "cash/card";
    }
}
