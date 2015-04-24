// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.api2.cash.ICashCustomerProfile;
import com.snapchat.android.api2.cash.square.data.CardBrand;
import com.snapchat.android.api2.cash.square.data.CardSummary;
import com.snapchat.android.api2.cash.square.data.CashCustomer;
import com.snapchat.android.api2.cash.square.data.CashCustomerStatus;

public class SquareCustomerProfile
    implements ICashCustomerProfile
{

    private final CardSummary mCardSummary;
    private final CashCustomer mCashCustomer;
    private final CashCustomerStatus mCashCustomerStatus;

    public SquareCustomerProfile(CashCustomerStatus cashcustomerstatus)
    {
        mCashCustomerStatus = cashcustomerstatus;
        mCashCustomer = cashcustomerstatus.c();
        mCardSummary = cashcustomerstatus.b();
    }

    public String a()
    {
        if (mCashCustomer != null)
        {
            mCashCustomer.a();
        }
        return null;
    }

    public String b()
    {
        if (mCashCustomer != null)
        {
            mCashCustomer.c();
        }
        return null;
    }

    public boolean c()
    {
        return mCardSummary != null;
    }

    public boolean d()
    {
        return mCashCustomerStatus.d();
    }

    public boolean e()
    {
        CashCustomerStatus cashcustomerstatus = mCashCustomerStatus;
        boolean flag = false;
        if (cashcustomerstatus != null)
        {
            int i = mCashCustomerStatus.f();
            flag = false;
            if (i > 0)
            {
                flag = true;
            }
        }
        return flag;
    }

    public CardBrand f()
    {
        if (mCardSummary != null)
        {
            return mCardSummary.a();
        } else
        {
            return null;
        }
    }

    public String g()
    {
        if (mCardSummary != null)
        {
            return mCardSummary.b();
        } else
        {
            return null;
        }
    }
}
