// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.square.ConfirmPaymentTask;
import com.snapchat.android.api2.cash.square.SquareBlockerResponsePayload;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.model.CashTransaction;
import java.util.Arrays;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQConfirmBlocker, SQRetrieveSendingCashPaymentBlocker

class this._cls1
    implements com.snapchat.android.api2.cash.square.ask.SquareBlockerRequestCallback
{

    final l.fragment this$1;

    public void a(SquareBlockerResponsePayload squareblockerresponsepayload)
    {
        Object aobj[] = new Object[1];
        aobj[0] = transaction.b();
        Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]", aobj);
        fragment.d();
        if (squareblockerresponsepayload != null)
        {
            java.util.List list;
            CashPayment cashpayment;
            if (squareblockerresponsepayload.blockers != null && squareblockerresponsepayload.blockers.a())
            {
                list = squareblockerresponsepayload.blockers.b();
            } else
            {
                list = null;
            }
            cashpayment = squareblockerresponsepayload.payment;
            if (cashpayment != null)
            {
                com.snapchat.android.model.actionStatus actionstatus = SquareProvider.a(cashpayment.f(), cashpayment.h());
                transaction.a(actionstatus);
                if (cashpayment.f() == com.snapchat.android.api2.cash.square.data.CELED)
                {
                    mSquareProvider.a(transaction, cashpayment.h());
                    if (actionstatus == com.snapchat.android.model.actionStatus.SENDER_CANCELED)
                    {
                        SQConfirmBlocker.b(_fld0);
                        return;
                    } else
                    {
                        SQConfirmBlocker.f(_fld0, null, true);
                        return;
                    }
                }
            }
        } else
        {
            list = null;
        }
        SQConfirmBlocker.g(_fld0, list, true);
    }

    public void a(SquareBlockerResponsePayload squareblockerresponsepayload, int i)
    {
        Object aobj[] = new Object[2];
        aobj[0] = transaction.b();
        aobj[1] = Integer.valueOf(i);
        Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]", aobj);
        java.util.List list = SquareProvider.a(_fld0, i);
        if (list != null)
        {
            SQConfirmBlocker.h(_fld0, list, true);
            return;
        }
        com.snapchat.android.api2.cash.square.data.ErrorType errortype;
        if (squareblockerresponsepayload != null)
        {
            errortype = squareblockerresponsepayload.a();
        } else
        {
            errortype = null;
        }
        transaction.g(null);
        fragment.a(errortype, i);
    }

    l.fragment()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2

/* anonymous class */
    class SQConfirmBlocker._cls2
        implements com.snapchat.android.fragments.cash.SecurityCodeFragment.SecurityCodeCallback
    {

        final SQConfirmBlocker this$0;
        final SecurityCodeFragment val$fragment;
        final CashTransaction val$transaction;

        public void a()
        {
            Timber.b("SQConfirmBlocker", "CASH-LOG: SQConfirmBlocker SecurityCodeFragment CANCELED", new Object[0]);
            SQConfirmBlocker.c(SQConfirmBlocker.this);
        }

        public void a(String s)
        {
            transaction.g(s);
            Timber.b("SQConfirmBlocker", "CASH-LOG: SQConfirmBlocker ENTERED security code", new Object[0]);
            SQConfirmBlocker.this.a(transaction.b(), s, new SQConfirmBlocker._cls2._cls1()).g();
        }

        public void b()
        {
            SQConfirmBlocker sqconfirmblocker = SQConfirmBlocker.this;
            Blocker ablocker[] = new Blocker[1];
            ablocker[0] = new SQRetrieveSendingCashPaymentBlocker();
            SQConfirmBlocker.i(sqconfirmblocker, Arrays.asList(ablocker), true);
        }

            
            {
                this$0 = final_sqconfirmblocker;
                transaction = cashtransaction;
                fragment = SecurityCodeFragment.this;
                super();
            }
    }

}
