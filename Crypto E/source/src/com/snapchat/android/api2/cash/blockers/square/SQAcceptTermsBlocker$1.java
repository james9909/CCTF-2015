// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.square.SquareBlockerResponsePayload;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.chat.ChatUtils;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQAcceptTermsBlocker

class val.transaction
    implements com.snapchat.android.api2.cash.square.k.SquareBlockerRequestCallback
{

    final SQAcceptTermsBlocker this$0;
    final CashTransaction val$transaction;

    public void a(SquareBlockerResponsePayload squareblockerresponsepayload)
    {
        java.util.List list = null;
        if (squareblockerresponsepayload != null)
        {
            SQPaymentBlockers sqpaymentblockers = squareblockerresponsepayload.blockers;
            list = null;
            if (sqpaymentblockers != null)
            {
                boolean flag = squareblockerresponsepayload.blockers.a();
                list = null;
                if (flag)
                {
                    list = squareblockerresponsepayload.blockers.b();
                }
            }
            if (val$transaction != null && squareblockerresponsepayload.payment != null)
            {
                val$transaction.a(SquareProvider.a(squareblockerresponsepayload.payment.f(), squareblockerresponsepayload.payment.h()));
            }
        }
        UserPrefs.U();
        SQAcceptTermsBlocker.a(SQAcceptTermsBlocker.this, list, true);
    }

    public void a(SquareBlockerResponsePayload squareblockerresponsepayload, int i)
    {
        java.util.List list = SquareProvider.a(SQAcceptTermsBlocker.this, i);
        if (list != null)
        {
            SQAcceptTermsBlocker.b(SQAcceptTermsBlocker.this, list, true);
            return;
        }
        if (val$transaction != null)
        {
            if (ChatUtils.c(val$transaction.d()))
            {
                AnalyticsEvents.a("SQUARE_ACCEPT_TERMS_FAILED", i);
                mCashErrorReporter.a(val$transaction, 0x7f0c0152, new Object[0]);
            } else
            {
                AnalyticsEvents.b("SQUARE_ACCEPT_TERMS_FAILED", i);
            }
        }
        SQAcceptTermsBlocker.c(SQAcceptTermsBlocker.this, null, false);
    }

    lockerRequestCallback()
    {
        this$0 = final_sqaccepttermsblocker;
        val$transaction = CashTransaction.this;
        super();
    }
}
