// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.AcceptTermsTask;
import com.snapchat.android.api2.cash.square.SquareBlockerResponsePayload;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.chat.ChatUtils;
import java.util.List;

public class SQAcceptTermsBlocker extends Blocker
{

    protected CashErrorReporter mCashErrorReporter;

    public SQAcceptTermsBlocker()
    {
        SnapchatApplication.e().a(this);
    }

    static void a(SQAcceptTermsBlocker sqaccepttermsblocker, List list, boolean flag)
    {
        sqaccepttermsblocker.a(list, flag);
    }

    static void b(SQAcceptTermsBlocker sqaccepttermsblocker, List list, boolean flag)
    {
        sqaccepttermsblocker.b(list, flag);
    }

    static void c(SQAcceptTermsBlocker sqaccepttermsblocker, List list, boolean flag)
    {
        sqaccepttermsblocker.b(list, flag);
    }

    public void a(final CashTransaction transaction)
    {
        com.snapchat.android.api2.cash.square.SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback = new com.snapchat.android.api2.cash.square.SquareBlockerRequestTask.SquareBlockerRequestCallback() {

            final SQAcceptTermsBlocker this$0;
            final CashTransaction val$transaction;

            public void a(SquareBlockerResponsePayload squareblockerresponsepayload)
            {
                List list = null;
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
                    if (transaction != null && squareblockerresponsepayload.payment != null)
                    {
                        transaction.a(SquareProvider.a(squareblockerresponsepayload.payment.f(), squareblockerresponsepayload.payment.h()));
                    }
                }
                UserPrefs.U();
                SQAcceptTermsBlocker.a(SQAcceptTermsBlocker.this, list, true);
            }

            public void a(SquareBlockerResponsePayload squareblockerresponsepayload, int i)
            {
                List list = SquareProvider.a(SQAcceptTermsBlocker.this, i);
                if (list != null)
                {
                    SQAcceptTermsBlocker.b(SQAcceptTermsBlocker.this, list, true);
                    return;
                }
                if (transaction != null)
                {
                    if (ChatUtils.c(transaction.d()))
                    {
                        AnalyticsEvents.a("SQUARE_ACCEPT_TERMS_FAILED", i);
                        mCashErrorReporter.a(transaction, 0x7f0c0152, new Object[0]);
                    } else
                    {
                        AnalyticsEvents.b("SQUARE_ACCEPT_TERMS_FAILED", i);
                    }
                }
                SQAcceptTermsBlocker.c(SQAcceptTermsBlocker.this, null, false);
            }

            
            {
                this$0 = SQAcceptTermsBlocker.this;
                transaction = cashtransaction;
                super();
            }
        };
        if (transaction != null && !transaction.h())
        {
            (new AcceptTermsTask(transaction.b(), squareblockerrequestcallback)).g();
            return;
        } else
        {
            (new AcceptTermsTask(squareblockerrequestcallback)).g();
            return;
        }
    }

    public BlockerOrder c()
    {
        return BlockerOrder.SQ_ACCEPT_TERMS_BLOCKER;
    }

    public boolean d()
    {
        return true;
    }
}
