// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.api2.framework.HttpMethod;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareCashPaymentTask, SquareCashPaymentCallback

public class RetrieveCashPaymentTask extends SquareCashPaymentTask
{

    private String mPaymentId;

    public RetrieveCashPaymentTask(String s, SquareCashPaymentCallback squarecashpaymentcallback)
    {
        super(squarecashpaymentcallback);
        mPaymentId = s;
    }

    public Object b()
    {
        return null;
    }

    public HttpMethod c()
    {
        return HttpMethod.GET;
    }

    protected String e()
    {
        return (new StringBuilder()).append("cash/payments/").append(mPaymentId).toString();
    }
}
