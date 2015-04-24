// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.GenerateSignatureForSquarePhoneTask;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.LinkPhoneNumberTask;
import com.snapchat.android.api2.cash.square.SquareBlockerResponsePayload;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.chat.ChatUtils;
import java.util.List;

public class SQPhoneNumberBlocker extends Blocker
{

    private static final String TAG = "SQPhoneNumberBlocker";
    protected CashErrorReporter mCashErrorReporter;

    public SQPhoneNumberBlocker()
    {
        SnapchatApplication.e().a(this);
    }

    static void a(SQPhoneNumberBlocker sqphonenumberblocker, List list, boolean flag)
    {
        sqphonenumberblocker.b(list, flag);
    }

    static void b(SQPhoneNumberBlocker sqphonenumberblocker, List list, boolean flag)
    {
        sqphonenumberblocker.a(list, flag);
    }

    static void c(SQPhoneNumberBlocker sqphonenumberblocker, List list, boolean flag)
    {
        sqphonenumberblocker.b(list, flag);
    }

    static void d(SQPhoneNumberBlocker sqphonenumberblocker, List list, boolean flag)
    {
        sqphonenumberblocker.b(list, flag);
    }

    static void e(SQPhoneNumberBlocker sqphonenumberblocker, List list, boolean flag)
    {
        sqphonenumberblocker.b(list, flag);
    }

    public void a(final CashTransaction transaction)
    {
        Timber.b("SQPhoneNumberBlocker", "CASH-LOG: ATTEMPT resolve SQPhoneNumberBlocker", new Object[0]);
        (new GenerateSignatureForSquarePhoneTask(new com.snapchat.android.api2.cash.BasicScCashRequestTask.BasicScCashRequestTaskCallback() {

            final SQPhoneNumberBlocker this$0;
            final CashTransaction val$transaction;

            public void a(com.snapchat.android.api2.cash.ScCashResponsePayload.Status status, int i)
            {
                List list = SquareProvider.a(SQPhoneNumberBlocker.this, i);
                if (list != null)
                {
                    SQPhoneNumberBlocker.d(SQPhoneNumberBlocker.this, list, true);
                    return;
                }
                if (transaction != null)
                {
                    if (ChatUtils.c(transaction.d()))
                    {
                        AnalyticsEvents.a("SQUARE_PHONE_VERIFICATION_FAILED", i);
                        mCashErrorReporter.a(transaction, 0x7f0c0152, new Object[0]);
                    } else
                    {
                        AnalyticsEvents.b("SQUARE_PHONE_VERIFICATION_FAILED", i);
                    }
                }
                SQPhoneNumberBlocker.e(SQPhoneNumberBlocker.this, null, false);
            }

            public void a(ScCashResponsePayload sccashresponsepayload)
            {
                Timber.b("SQPhoneNumberBlocker", "CASH-LOG: SUCCESS received phone signature", new Object[0]);
                com.snapchat.android.api2.cash.GenerateSignatureForSquarePhoneTask.ResponsePayload responsepayload = (com.snapchat.android.api2.cash.GenerateSignatureForSquarePhoneTask.ResponsePayload)sccashresponsepayload;
                if (responsepayload.phoneNumber == null || responsepayload.signature == null)
                {
                    SQPhoneNumberBlocker.a(SQPhoneNumberBlocker.this, null, false);
                    return;
                }
                com.snapchat.android.api2.cash.square.SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback = new com.snapchat.android.api2.cash.square.SquareBlockerRequestTask.SquareBlockerRequestCallback() {

                    final _cls1 this$1;

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
                        SQPhoneNumberBlocker.b(_fld0, list, true);
                    }

                    public void a(SquareBlockerResponsePayload squareblockerresponsepayload, int i)
                    {
                        Object aobj[] = new Object[1];
                        aobj[0] = Integer.valueOf(i);
                        Timber.b("SQPhoneNumberBlocker", "CASH-LOG: FAILED resolve SQPhoneNumberBlocker statusCode[%d]", aobj);
                        SQPhoneNumberBlocker.c(_fld0, null, false);
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                };
                if (transaction != null && !transaction.h())
                {
                    (new LinkPhoneNumberTask(transaction.b(), responsepayload.phoneNumber, responsepayload.signature, squareblockerrequestcallback)).g();
                    return;
                } else
                {
                    (new LinkPhoneNumberTask(responsepayload.phoneNumber, responsepayload.signature, squareblockerrequestcallback)).g();
                    return;
                }
            }

            
            {
                this$0 = SQPhoneNumberBlocker.this;
                transaction = cashtransaction;
                super();
            }
        })).g();
    }

    public BlockerOrder c()
    {
        return BlockerOrder.SQ_PHONE_NUMBER_BLOCKER;
    }

    public boolean d()
    {
        return true;
    }
}
