// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.api2.framework.NetworkResult;

// Referenced classes of package com.snapchat.android.api2:
//            LoginTask

class tworkResult
    implements Runnable
{

    final LoginTask this$0;
    final NetworkResult val$networkResult;
    final sponsePayload val$responsePayload;

    public void run()
    {
        b(val$responsePayload, val$networkResult);
    }

    tworkResult()
    {
        this$0 = final_logintask;
        val$responsePayload = sponsepayload;
        val$networkResult = NetworkResult.this;
        super();
    }
}
