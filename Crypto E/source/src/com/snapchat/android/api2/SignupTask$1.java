// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.api2.framework.NetworkResult;

// Referenced classes of package com.snapchat.android.api2:
//            SignupTask

class workResult
    implements Runnable
{

    final SignupTask this$0;
    final NetworkResult val$networkResult;
    final sponsePayload val$responsePayload;

    public void run()
    {
        b(val$responsePayload, val$networkResult);
    }

    workResult()
    {
        this$0 = final_signuptask;
        val$responsePayload = sponsepayload;
        val$networkResult = NetworkResult.this;
        super();
    }
}
