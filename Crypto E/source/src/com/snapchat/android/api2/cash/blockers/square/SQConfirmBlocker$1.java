// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.square.SquareBlockerResponsePayload;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.model.CashTransaction;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQConfirmBlocker, SQRetrieveSendingCashPaymentBlocker

class val.transaction
    implements com.snapchat.android.api2.cash.square.tTask.SquareBlockerRequestCallback
{

    final SQConfirmBlocker this$0;
    final CashTransaction val$transaction;

    public void a(SquareBlockerResponsePayload squareblockerresponsepayload)
    {
        Object aobj[] = new Object[1];
        aobj[0] = val$transaction.b();
        Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]", aobj);
        if (squareblockerresponsepayload == null) goto _L2; else goto _L1
_L1:
        if (squareblockerresponsepayload.blockers == null || !squareblockerresponsepayload.blockers.a()) goto _L4; else goto _L3
_L3:
        List list1;
        Iterator iterator;
        list1 = squareblockerresponsepayload.blockers.b();
        iterator = list1.iterator();
_L8:
        if (!iterator.hasNext()) goto _L6; else goto _L5
_L5:
        if (((Blocker)iterator.next()).d()) goto _L8; else goto _L7
_L7:
        boolean flag;
        List list;
        flag = false;
        list = list1;
_L11:
        CashPayment cashpayment = squareblockerresponsepayload.payment;
        if (cashpayment != null)
        {
            com.snapchat.android.model.nsactionStatus nsactionstatus = SquareProvider.a(cashpayment.f(), cashpayment.h());
            val$transaction.a(nsactionstatus);
            if (cashpayment.f() == com.snapchat.android.api2.cash.square.data.ANCELED)
            {
                mSquareProvider.a(val$transaction, cashpayment.h());
                if (nsactionstatus == com.snapchat.android.model.nsactionStatus.SENDER_CANCELED)
                {
                    SQConfirmBlocker.a(SQConfirmBlocker.this);
                    return;
                } else
                {
                    SQConfirmBlocker.a(SQConfirmBlocker.this, null, true);
                    return;
                }
            }
        }
          goto _L9
_L2:
        flag = true;
        list = null;
_L9:
        SQConfirmBlocker.b(SQConfirmBlocker.this, list, flag);
        return;
_L6:
        flag = true;
        list = list1;
        continue; /* Loop/switch isn't completed */
_L4:
        flag = true;
        list = null;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public void a(SquareBlockerResponsePayload squareblockerresponsepayload, int i)
    {
        Object aobj[] = new Object[2];
        aobj[0] = val$transaction.b();
        aobj[1] = Integer.valueOf(i);
        Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]", aobj);
        List list = SquareProvider.a(SQConfirmBlocker.this, i);
        if (list != null)
        {
            SQConfirmBlocker.c(SQConfirmBlocker.this, list, true);
            return;
        }
        val$transaction.g(null);
        ErrorType errortype;
        if (squareblockerresponsepayload != null)
        {
            errortype = squareblockerresponsepayload.a();
        } else
        {
            errortype = null;
        }
        if (ErrorType.isNonRecoverableError(errortype))
        {
            SQConfirmBlocker sqconfirmblocker = SQConfirmBlocker.this;
            Blocker ablocker[] = new Blocker[1];
            ablocker[0] = new SQRetrieveSendingCashPaymentBlocker();
            SQConfirmBlocker.d(sqconfirmblocker, Arrays.asList(ablocker), true);
            return;
        } else
        {
            AnalyticsEvents.a("SQUARE_SECURITY_CODE_VERIFICATION_FAILED", i);
            mCashErrorReporter.a(val$transaction, 0x7f0c0152, new Object[0]);
            SQConfirmBlocker.e(SQConfirmBlocker.this, null, false);
            return;
        }
    }

    ()
    {
        this$0 = final_sqconfirmblocker;
        val$transaction = CashTransaction.this;
        super();
    }
}
