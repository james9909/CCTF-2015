// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square.data;

import com.snapchat.android.api2.cash.blockers.square.SQAcceptTermsBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQCardFormBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQConfirmBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQPhoneNumberBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQUrlBlocker;
import java.util.ArrayList;
import java.util.List;

public class SQPaymentBlockers
{

    private SQAcceptTermsBlocker mAcceptTermsBlocker;
    private SQCardFormBlocker mCardBlocker;
    private SQConfirmBlocker mConfirmBlocker;
    private SQPhoneNumberBlocker mPhoneNumberBlocker;
    private String mUrl;

    public SQPaymentBlockers()
    {
    }

    public boolean a()
    {
        return d() != null || e() != null || f() != null || g() != null || c() != null;
    }

    public List b()
    {
        ArrayList arraylist = new ArrayList();
        SQAcceptTermsBlocker sqaccepttermsblocker = d();
        if (sqaccepttermsblocker != null)
        {
            arraylist.add(sqaccepttermsblocker);
        }
        SQCardFormBlocker sqcardformblocker = e();
        if (sqcardformblocker != null)
        {
            arraylist.add(sqcardformblocker);
        }
        SQConfirmBlocker sqconfirmblocker = f();
        if (sqconfirmblocker != null)
        {
            arraylist.add(sqconfirmblocker);
        }
        SQPhoneNumberBlocker sqphonenumberblocker = g();
        if (sqphonenumberblocker != null)
        {
            arraylist.add(sqphonenumberblocker);
        }
        if (arraylist.isEmpty())
        {
            SQUrlBlocker squrlblocker = c();
            if (squrlblocker != null)
            {
                arraylist.add(squrlblocker);
            }
        }
        return arraylist;
    }

    public SQUrlBlocker c()
    {
        if (mUrl != null)
        {
            return new SQUrlBlocker(mUrl);
        } else
        {
            return null;
        }
    }

    public SQAcceptTermsBlocker d()
    {
        return mAcceptTermsBlocker;
    }

    public SQCardFormBlocker e()
    {
        return mCardBlocker;
    }

    public SQConfirmBlocker f()
    {
        return mConfirmBlocker;
    }

    public SQPhoneNumberBlocker g()
    {
        return mPhoneNumberBlocker;
    }
}
