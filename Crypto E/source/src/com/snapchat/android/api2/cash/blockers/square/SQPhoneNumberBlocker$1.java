// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.square.LinkPhoneNumberTask;
import com.snapchat.android.api2.cash.square.SquareBlockerResponsePayload;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.chat.ChatUtils;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQPhoneNumberBlocker

class val.transaction
    implements com.snapchat.android.api2.cash.BasicScCashRequestTaskCallback
{

    final SQPhoneNumberBlocker this$0;
    final CashTransaction val$transaction;

    public void a(com.snapchat.android.api2.cash.tatus tatus, int i)
    {
        java.util.List list = SquareProvider.a(SQPhoneNumberBlocker.this, i);
        if (list != null)
        {
            SQPhoneNumberBlocker.d(SQPhoneNumberBlocker.this, list, true);
            return;
        }
        if (val$transaction != null)
        {
            if (ChatUtils.c(val$transaction.d()))
            {
                AnalyticsEvents.a("SQUARE_PHONE_VERIFICATION_FAILED", i);
                mCashErrorReporter.a(val$transaction, 0x7f0c0152, new Object[0]);
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
        com.snapchat.android.api2.cash.arePhoneTask.ResponsePayload responsepayload = (com.snapchat.android.api2.cash.arePhoneTask.ResponsePayload)sccashresponsepayload;
        if (responsepayload.phoneNumber == null || responsepayload.signature == null)
        {
            SQPhoneNumberBlocker.a(SQPhoneNumberBlocker.this, null, false);
            return;
        }
        com.snapchat.android.api2.cash.square.k.SquareBlockerRequestCallback squareblockerrequestcallback = new com.snapchat.android.api2.cash.square.SquareBlockerRequestTask.SquareBlockerRequestCallback() {

            final SQPhoneNumberBlocker._cls1 this$1;

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
                    if (transaction != null && squareblockerresponsepayload.payment != null)
                    {
                        transaction.a(SquareProvider.a(squareblockerresponsepayload.payment.f(), squareblockerresponsepayload.payment.h()));
                    }
                }
                SQPhoneNumberBlocker.b(this$0, list, true);
            }

            public void a(SquareBlockerResponsePayload squareblockerresponsepayload, int i)
            {
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(i);
                Timber.b("SQPhoneNumberBlocker", "CASH-LOG: FAILED resolve SQPhoneNumberBlocker statusCode[%d]", aobj);
                SQPhoneNumberBlocker.c(this$0, null, false);
            }

            
            {
                this$1 = SQPhoneNumberBlocker._cls1.this;
                super();
            }
        };
        if (val$transaction != null && !val$transaction.h())
        {
            (new LinkPhoneNumberTask(val$transaction.b(), responsepayload.phoneNumber, responsepayload.signature, squareblockerrequestcallback)).g();
            return;
        } else
        {
            (new LinkPhoneNumberTask(responsepayload.phoneNumber, responsepayload.signature, squareblockerrequestcallback)).g();
            return;
        }
    }

    _cls1.this._cls1()
    {
        this$0 = final_sqphonenumberblocker;
        val$transaction = CashTransaction.this;
        super();
    }
}
