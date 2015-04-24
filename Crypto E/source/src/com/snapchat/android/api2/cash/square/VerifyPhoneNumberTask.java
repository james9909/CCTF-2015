// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import android.text.TextUtils;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareBlockerRequestTask, SquareBlockerResponsePayload

public class VerifyPhoneNumberTask extends SquareBlockerRequestTask
{
    class RequestPayload
    {

        final String phoneNumber;
        final VerifyPhoneNumberTask this$0;
        final String verificationCode;

        RequestPayload()
        {
            this$0 = VerifyPhoneNumberTask.this;
            super();
            phoneNumber = VerifyPhoneNumberTask.a(VerifyPhoneNumberTask.this);
            verificationCode = VerifyPhoneNumberTask.b(VerifyPhoneNumberTask.this);
        }
    }


    private final String mPaymentId;
    private final String mPhoneNumber;
    private final String mVerificationCode;

    public VerifyPhoneNumberTask(String s, String s1, SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback)
    {
        this(null, s, s1, squareblockerrequestcallback);
    }

    public VerifyPhoneNumberTask(String s, String s1, String s2, SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback)
    {
        super(squareblockerrequestcallback);
        mPhoneNumber = s1;
        mVerificationCode = s2;
        mPaymentId = s;
        a(com/snapchat/android/api2/cash/square/SquareBlockerResponsePayload, this);
    }

    static String a(VerifyPhoneNumberTask verifyphonenumbertask)
    {
        return verifyphonenumbertask.mPhoneNumber;
    }

    static String b(VerifyPhoneNumberTask verifyphonenumbertask)
    {
        return verifyphonenumbertask.mVerificationCode;
    }

    public Object b()
    {
        return new RequestPayload();
    }

    public String e()
    {
        if (!TextUtils.isEmpty(mPaymentId))
        {
            return (new StringBuilder()).append("cash/payments/").append(mPaymentId).append("/phone-number").toString();
        } else
        {
            return "cash/phone-number";
        }
    }
}
