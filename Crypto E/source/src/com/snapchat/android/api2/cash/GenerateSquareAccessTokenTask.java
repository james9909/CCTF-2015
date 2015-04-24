// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.cash.CashAuthToken;

// Referenced classes of package com.snapchat.android.api2.cash:
//            BasicScCashRequestTask, ScCashResponsePayload

public class GenerateSquareAccessTokenTask extends BasicScCashRequestTask
{
    public static class ResponsePayload extends ScCashResponsePayload
    {

        public CashAuthToken accessToken;

        public ResponsePayload()
        {
        }
    }


    public GenerateSquareAccessTokenTask(BasicScCashRequestTask.BasicScCashRequestTaskCallback basicsccashrequesttaskcallback)
    {
        super(basicsccashrequesttaskcallback);
        a(com/snapchat/android/api2/cash/GenerateSquareAccessTokenTask$ResponsePayload, this);
    }

    protected String d()
    {
        return "/cash/generate_access_token";
    }
}
