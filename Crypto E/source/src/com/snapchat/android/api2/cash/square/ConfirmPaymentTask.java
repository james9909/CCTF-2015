// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;


// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareBlockerRequestTask, SquareBlockerResponsePayload

public class ConfirmPaymentTask extends SquareBlockerRequestTask
{
    class RequestPayload
    {

        final String passcode;
        final ConfirmPaymentTask this$0;

        RequestPayload()
        {
            this$0 = ConfirmPaymentTask.this;
            super();
            passcode = ConfirmPaymentTask.a(ConfirmPaymentTask.this);
        }
    }


    private final String mPasscode;
    private final String mPaymentId;

    public ConfirmPaymentTask(String s, String s1, SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback)
    {
        super(squareblockerrequestcallback);
        mPaymentId = s;
        mPasscode = s1;
        a(com/snapchat/android/api2/cash/square/SquareBlockerResponsePayload, this);
    }

    static String a(ConfirmPaymentTask confirmpaymenttask)
    {
        return confirmpaymenttask.mPasscode;
    }

    public Object b()
    {
        return new RequestPayload();
    }

    public String e()
    {
        return (new StringBuilder()).append("cash/payments/").append(mPaymentId).append("/confirm").toString();
    }
}
