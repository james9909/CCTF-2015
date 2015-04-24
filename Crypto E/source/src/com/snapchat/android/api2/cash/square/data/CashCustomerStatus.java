// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square.data;

import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.square.data:
//            SQPaymentBlockers, CardSummary, CashCustomer

public class CashCustomerStatus
{

    private SQPaymentBlockers mBlockers;
    private CardSummary mCardSummary;
    private CashCustomer mCustomer;
    private int mNumberOfPayments;
    private boolean mPasswordConfirmationEnabled;
    private List mPayments;

    public CashCustomerStatus()
    {
        mNumberOfPayments = 0;
    }

    public SQPaymentBlockers a()
    {
        return mBlockers;
    }

    public CardSummary b()
    {
        return mCardSummary;
    }

    public CashCustomer c()
    {
        return mCustomer;
    }

    public boolean d()
    {
        return mPasswordConfirmationEnabled;
    }

    public List e()
    {
        return mPayments;
    }

    public int f()
    {
        return mNumberOfPayments;
    }
}
