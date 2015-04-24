// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import android.text.TextUtils;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareBlockerRequestTask, SquareBlockerResponsePayload

public class LinkCardTask extends SquareBlockerRequestTask
{
    class RequestPayload
    {

        final String expiration;
        final String pan;
        final String postalCode;
        final String securityCode;
        final LinkCardTask this$0;

        RequestPayload()
        {
            this$0 = LinkCardTask.this;
            super();
            pan = LinkCardTask.a(LinkCardTask.this);
            expiration = LinkCardTask.b(LinkCardTask.this);
            securityCode = LinkCardTask.c(LinkCardTask.this);
            postalCode = LinkCardTask.d(LinkCardTask.this);
        }
    }

    public static class ResponsePayload extends SquareBlockerResponsePayload
    {

        public String cardToken;

        public ResponsePayload()
        {
        }
    }


    private final String mExpiration;
    private final String mPan;
    private final String mPaymentId;
    private final String mPostalCode;
    private final String mSecurityCode;

    public LinkCardTask(String s, String s1, String s2, String s3, SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback)
    {
        this(null, s, s1, s2, s3, squareblockerrequestcallback);
    }

    public LinkCardTask(String s, String s1, String s2, String s3, String s4, SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback)
    {
        super(squareblockerrequestcallback);
        mPan = s1;
        mExpiration = s2;
        mSecurityCode = s3;
        mPostalCode = s4;
        mPaymentId = s;
        a(com/snapchat/android/api2/cash/square/LinkCardTask$ResponsePayload, this);
    }

    static String a(LinkCardTask linkcardtask)
    {
        return linkcardtask.mPan;
    }

    static String b(LinkCardTask linkcardtask)
    {
        return linkcardtask.mExpiration;
    }

    static String c(LinkCardTask linkcardtask)
    {
        return linkcardtask.mSecurityCode;
    }

    static String d(LinkCardTask linkcardtask)
    {
        return linkcardtask.mPostalCode;
    }

    public Object b()
    {
        return new RequestPayload();
    }

    public String e()
    {
        if (!TextUtils.isEmpty(mPaymentId))
        {
            return (new StringBuilder()).append("cash/payments/").append(mPaymentId).append("/card").toString();
        } else
        {
            return "cash/card";
        }
    }
}
