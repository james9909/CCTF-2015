// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.square.SquareCashPaymentCallback;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CardStatus;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.ListUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQInitiatePaymentBlocker, SQConfirmBlocker, SQCardFormBlocker

class val.transaction
    implements SquareCashPaymentCallback
{

    final SQInitiatePaymentBlocker this$0;
    final CashTransaction val$transaction;

    public void a(int i)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        Timber.b("SQInitiatePaymentBlocker", "CASH-LOG: FAILED SQInitiatePaymentBlocker statusCode[%d]", aobj);
        List list = SquareProvider.a(SQInitiatePaymentBlocker.this, i);
        if (list != null)
        {
            SQInitiatePaymentBlocker.d(SQInitiatePaymentBlocker.this, list, true);
            return;
        } else
        {
            AnalyticsEvents.a("SQUARE_INITIATE_PAYMENT_FAILED", i);
            mCashErrorReporter.a(val$transaction, 0x7f0c0152, new Object[0]);
            SQInitiatePaymentBlocker.e(SQInitiatePaymentBlocker.this, null, false);
            return;
        }
    }

    public void a(CashPayment cashpayment)
    {
        com.snapchat.android.model.Status status;
        Object aobj[] = new Object[2];
        aobj[0] = cashpayment;
        aobj[1] = cashpayment.f().r();
        Timber.b("SQInitiatePaymentBlocker", "CASH-LOG: SUCCESS SQInitiatePaymentBlocker %s status[%s]", aobj);
        status = SquareProvider.a(cashpayment.f(), cashpayment.h());
        val$transaction.a(status);
        if (cashpayment.f() != com.snapchat.android.api2.cash.square.data.r._cls1.val.transaction) goto _L2; else goto _L1
_L1:
        mSquareProvider.a(val$transaction, cashpayment.h());
        if (status != com.snapchat.android.model.Status.SENDER_CANCELED) goto _L4; else goto _L3
_L3:
        SQInitiatePaymentBlocker.a(SQInitiatePaymentBlocker.this);
_L6:
        return;
_L4:
        SQInitiatePaymentBlocker.a(SQInitiatePaymentBlocker.this, null, true);
        return;
_L2:
        SQPaymentBlockers sqpaymentblockers;
        List list;
        boolean flag;
label0:
        {
            sqpaymentblockers = cashpayment.g();
            if (sqpaymentblockers != null)
            {
                list = sqpaymentblockers.b();
                Iterator iterator1 = list.iterator();
                Blocker blocker;
                do
                {
                    if (!iterator1.hasNext())
                    {
                        break label0;
                    }
                    blocker = (Blocker)iterator1.next();
                } while (!(blocker instanceof SQConfirmBlocker));
                Timber.b("SQInitiatePaymentBlocker", "CASH-LOG: SQInitiatePaymentBlocker SUCCESS came back with confirm blocker. Attempting autoresolution.", new Object[0]);
                List list1 = ListUtils.a(blocker);
                SQInitiatePaymentBlocker.b(SQInitiatePaymentBlocker.this, list1, true);
                return;
            }
            list = null;
        }
        if (list == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
        } while (((Blocker)iterator.next()).d());
        flag = false;
_L7:
        SQInitiatePaymentBlocker.c(SQInitiatePaymentBlocker.this, list, flag);
        if (sqpaymentblockers != null)
        {
            SQCardFormBlocker sqcardformblocker = sqpaymentblockers.e();
            if (sqcardformblocker != null && sqcardformblocker.f() == CardStatus.EXPIRED)
            {
                AnalyticsEvents.q("CARD_EXPIRED");
                mCashErrorReporter.a(val$transaction, 0x7f0c014e, new Object[0]);
                return;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
        flag = true;
          goto _L7
        if (true) goto _L6; else goto _L8
_L8:
    }

    ()
    {
        this$0 = final_sqinitiatepaymentblocker;
        val$transaction = CashTransaction.this;
        super();
    }
}
