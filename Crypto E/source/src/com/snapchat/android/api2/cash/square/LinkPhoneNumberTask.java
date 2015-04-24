// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import android.text.TextUtils;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareBlockerRequestTask, SquareBlockerResponsePayload

public class LinkPhoneNumberTask extends SquareBlockerRequestTask
{
    class RequestPayload
    {

        final String phoneNumber;
        final String signature;
        final LinkPhoneNumberTask this$0;

        RequestPayload()
        {
            this$0 = LinkPhoneNumberTask.this;
            super();
            phoneNumber = LinkPhoneNumberTask.a(LinkPhoneNumberTask.this);
            signature = LinkPhoneNumberTask.b(LinkPhoneNumberTask.this);
        }
    }


    private final String mPaymentId;
    private final String mPhoneNumber;
    private final String mSignature;

    public LinkPhoneNumberTask(String s, String s1, SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback)
    {
        this(null, s, s1, squareblockerrequestcallback);
    }

    public LinkPhoneNumberTask(String s, String s1, String s2, SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback)
    {
        super(squareblockerrequestcallback);
        mPhoneNumber = s1;
        mSignature = s2;
        mPaymentId = s;
        a(com/snapchat/android/api2/cash/square/SquareBlockerResponsePayload, this);
    }

    static String a(LinkPhoneNumberTask linkphonenumbertask)
    {
        return linkphonenumbertask.mPhoneNumber;
    }

    static String b(LinkPhoneNumberTask linkphonenumbertask)
    {
        return linkphonenumbertask.mSignature;
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
