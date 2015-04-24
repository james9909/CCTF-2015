// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;


// Referenced classes of package com.google.android.gms.common.api:
//            ResultCallback, c, Status, e, 
//            GoogleApiClient, Result

class Mt
    implements ResultCallback
{

    final GoogleApiClient Mt;
    final c RH;
    final e RK;
    final boolean RL;

    public void l(Status status)
    {
        if (status.isSuccess() && RH.isConnected())
        {
            RH.reconnect();
        }
        RK.b(status);
        if (RL)
        {
            Mt.disconnect();
        }
    }

    public void onResult(Result result)
    {
        l((Status)result);
    }

    leApiClient(c c1, e e1, boolean flag, GoogleApiClient googleapiclient)
    {
        RH = c1;
        RK = e1;
        RL = flag;
        Mt = googleapiclient;
        super();
    }
}
