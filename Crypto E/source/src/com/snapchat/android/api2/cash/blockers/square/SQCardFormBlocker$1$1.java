// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.CardInputError;
import com.snapchat.android.api2.cash.blockers.ValidatedCardInputCallback;
import com.snapchat.android.api2.cash.square.LinkCardTask;
import com.snapchat.android.api2.cash.square.SquareBlockerResponsePayload;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.cash.CashCardManager;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQCardFormBlocker

class this._cls1
    implements com.snapchat.android.api2.cash.square.sk.SquareBlockerRequestCallback
{

    final is._cls0 this$1;

    public void a(SquareBlockerResponsePayload squareblockerresponsepayload)
    {
        Timber.b("SQCardFormBlocker", "CASH-LOG: SUCCESS resolve SQCardFormBlocker", new Object[0]);
        if (squareblockerresponsepayload != null)
        {
            com.snapchat.android.api2.cash.square.ayload ayload = (com.snapchat.android.api2.cash.square.ayload)squareblockerresponsepayload;
            mCashCardManager.a(ayload.cardToken);
            List list;
            if (squareblockerresponsepayload.blockers != null && squareblockerresponsepayload.blockers.a())
            {
                list = squareblockerresponsepayload.blockers.b();
            } else
            {
                list = null;
            }
            if (SQCardFormBlocker.a(_fld0) != null && squareblockerresponsepayload.payment != null)
            {
                SQCardFormBlocker.a(_fld0).a(SquareProvider.a(squareblockerresponsepayload.payment.f(), squareblockerresponsepayload.payment.h()));
            }
            mSquareProvider.b();
            callback.b();
            SQCardFormBlocker.a(_fld0, list, true);
            return;
        } else
        {
            callback.a(SQCardFormBlocker.a(_fld0, null));
            return;
        }
    }

    public void a(SquareBlockerResponsePayload squareblockerresponsepayload, int i)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        Timber.b("SQCardFormBlocker", "CASH-LOG: FAILED resolve SQCardFormBlocker statusCode[%d]", aobj);
        if (i == 404 && SQCardFormBlocker.a(_fld0) != null)
        {
            SQCardFormBlocker.a(_fld0, null);
            (new LinkCardTask(pan, expiry, cvv, zip, this)).g();
            return;
        }
        if (i == 401 && !SQCardFormBlocker.b(_fld0))
        {
            SQCardFormBlocker.a(_fld0, true);
            SQCardFormBlocker.a(_fld0, pan, expiry, cvv, zip, callback, true);
            return;
        }
        if (i != 429) goto _L2; else goto _L1
_L1:
        ErrorType errortype = ErrorType.TOO_MANY_ATTEMPTS;
_L4:
        callback.a(SQCardFormBlocker.a(_fld0, errortype));
        return;
_L2:
        if (i == 0)
        {
            errortype = ErrorType.NETWORK_FAILURE;
        } else
        {
            errortype = null;
            if (squareblockerresponsepayload != null)
            {
                errortype = squareblockerresponsepayload.a();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    l.zip()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1

/* anonymous class */
    class SQCardFormBlocker._cls1
        implements com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener
    {

        final SQCardFormBlocker this$0;
        final ValidatedCardInputCallback val$callback;
        final String val$cvv;
        final String val$expiry;
        final String val$pan;
        final String val$zip;

        public void a(Blocker blocker)
        {
            Timber.c("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker dismissed when trying to get access token", new Object[0]);
            callback.a(CardInputError.UNKNOWN);
        }

        public void a(Blocker blocker, List list, boolean flag)
        {
            SQCardFormBlocker._cls1._cls1 _lcls1 = new SQCardFormBlocker._cls1._cls1();
            if (SQCardFormBlocker.a(SQCardFormBlocker.this) != null && !SQCardFormBlocker.a(SQCardFormBlocker.this).h())
            {
                (new LinkCardTask(SQCardFormBlocker.a(SQCardFormBlocker.this).b(), pan, expiry, cvv, zip, _lcls1)).g();
                return;
            } else
            {
                (new LinkCardTask(pan, expiry, cvv, zip, _lcls1)).g();
                return;
            }
        }

        public void b(Blocker blocker)
        {
            Timber.c("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker hard failed when trying to get access token", new Object[0]);
            callback.a(CardInputError.UNKNOWN);
        }

        public void b(Blocker blocker, List list, boolean flag)
        {
            Timber.c("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker failed to get access token", new Object[0]);
            callback.a(CardInputError.UNKNOWN);
            SQCardFormBlocker.b(SQCardFormBlocker.this, list, flag);
        }

            
            {
                this$0 = final_sqcardformblocker;
                callback = validatedcardinputcallback;
                pan = s;
                expiry = s1;
                cvv = s2;
                zip = String.this;
                super();
            }
    }

}
