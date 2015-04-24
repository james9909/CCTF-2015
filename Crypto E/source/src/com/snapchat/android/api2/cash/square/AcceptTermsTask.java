// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import android.text.TextUtils;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareBlockerRequestTask, SquareBlockerResponsePayload

public class AcceptTermsTask extends SquareBlockerRequestTask
{

    private final String mPaymentId;

    public AcceptTermsTask(SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback)
    {
        this(null, squareblockerrequestcallback);
    }

    public AcceptTermsTask(String s, SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback)
    {
        super(squareblockerrequestcallback);
        mPaymentId = s;
        a(com/snapchat/android/api2/cash/square/SquareBlockerResponsePayload, this);
    }

    public Object b()
    {
        return null;
    }

    public String e()
    {
        if (!TextUtils.isEmpty(mPaymentId))
        {
            return (new StringBuilder()).append("cash/payments/").append(mPaymentId).append("/accept-terms").toString();
        } else
        {
            return "cash/accept-terms";
        }
    }
}
