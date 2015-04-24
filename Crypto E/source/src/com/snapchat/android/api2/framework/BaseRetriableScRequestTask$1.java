// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.api2.framework:
//            BaseRetriableScRequestTask

class this._cls0
    implements Runnable
{

    final BaseRetriableScRequestTask this$0;

    public void run()
    {
        Object aobj[] = new Object[2];
        aobj[0] = getClass().getSimpleName();
        aobj[1] = Integer.valueOf(mCurrentRetryAttempt);
        Timber.b("BaseRetriableScRequestTask", "NETWORK-LOG: %s is executing for %d attempt", aobj);
        g();
    }

    ()
    {
        this$0 = BaseRetriableScRequestTask.this;
        super();
    }
}
