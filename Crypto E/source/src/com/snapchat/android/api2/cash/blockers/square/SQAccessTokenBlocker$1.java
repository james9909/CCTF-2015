// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.cash.CashAuthManager;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.chat.ChatUtils;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQAccessTokenBlocker

class val.transaction
    implements com.snapchat.android.api2.cash.BasicScCashRequestTaskCallback
{

    final SQAccessTokenBlocker this$0;
    final CashTransaction val$transaction;

    public void a(com.snapchat.android.api2.cash.tatus tatus, int i)
    {
        Object aobj[] = new Object[2];
        aobj[0] = tatus.name();
        aobj[1] = Integer.valueOf(i);
        Timber.b("SQAccessTokenBlocker", "CASH-LOG: FAILED resolve SQAccessTokenBlocker status[%s] statusCode[%d]", aobj);
        if (val$transaction != null)
        {
            if (ChatUtils.c(val$transaction.d()))
            {
                AnalyticsEvents.a("GENERATE_SQUARE_ACCESS_TOKEN_FAILED", i);
            } else
            {
                AnalyticsEvents.b("GENERATE_SQUARE_ACCESS_TOKEN_FAILED", i);
            }
        }
        mCashErrorReporter.a(val$transaction, tatus);
        SQAccessTokenBlocker.a(SQAccessTokenBlocker.this, null, false);
    }

    public void a(ScCashResponsePayload sccashresponsepayload)
    {
        Timber.b("SQAccessTokenBlocker", "CASH-LOG: SUCCESS resolve SQAccessTokenBlocker", new Object[0]);
        com.snapchat.android.api2.cash.enTask.ResponsePayload responsepayload = (com.snapchat.android.api2.cash.enTask.ResponsePayload)sccashresponsepayload;
        mCashAuthManager.a(responsepayload.accessToken);
        SQAccessTokenBlocker.this.a(null, true);
    }

    ayload()
    {
        this$0 = final_sqaccesstokenblocker;
        val$transaction = CashTransaction.this;
        super();
    }
}
