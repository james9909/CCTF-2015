// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.GenerateSquareAccessTokenTask;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.cash.CashAuthManager;
import com.snapchat.android.cash.CashAuthToken;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.chat.ChatUtils;
import java.util.List;

public class SQAccessTokenBlocker extends Blocker
{

    private static final String TAG = "SQAccessTokenBlocker";
    protected CashAuthManager mCashAuthManager;
    protected CashErrorReporter mCashErrorReporter;
    private boolean mForced;

    public SQAccessTokenBlocker()
    {
        mForced = false;
        SnapchatApplication.e().a(this);
    }

    public SQAccessTokenBlocker(boolean flag)
    {
        this();
        mForced = flag;
    }

    static void a(SQAccessTokenBlocker sqaccesstokenblocker, List list, boolean flag)
    {
        sqaccesstokenblocker.b(list, flag);
    }

    protected GenerateSquareAccessTokenTask a(com.snapchat.android.api2.cash.BasicScCashRequestTask.BasicScCashRequestTaskCallback basicsccashrequesttaskcallback)
    {
        return new GenerateSquareAccessTokenTask(basicsccashrequesttaskcallback);
    }

    public void a(final CashTransaction transaction)
    {
        Timber.b("SQAccessTokenBlocker", "CASH-LOG: ATTEMPT resolve SQAccessTokenBlocker", new Object[0]);
        if (!mForced)
        {
            CashAuthToken cashauthtoken = mCashAuthManager.a();
            if (cashauthtoken != null && !cashauthtoken.c())
            {
                a(null, true);
                return;
            }
        }
        a(new com.snapchat.android.api2.cash.BasicScCashRequestTask.BasicScCashRequestTaskCallback() {

            final SQAccessTokenBlocker this$0;
            final CashTransaction val$transaction;

            public void a(com.snapchat.android.api2.cash.ScCashResponsePayload.Status status, int i)
            {
                Object aobj[] = new Object[2];
                aobj[0] = status.name();
                aobj[1] = Integer.valueOf(i);
                Timber.b("SQAccessTokenBlocker", "CASH-LOG: FAILED resolve SQAccessTokenBlocker status[%s] statusCode[%d]", aobj);
                if (transaction != null)
                {
                    if (ChatUtils.c(transaction.d()))
                    {
                        AnalyticsEvents.a("GENERATE_SQUARE_ACCESS_TOKEN_FAILED", i);
                    } else
                    {
                        AnalyticsEvents.b("GENERATE_SQUARE_ACCESS_TOKEN_FAILED", i);
                    }
                }
                mCashErrorReporter.a(transaction, status);
                SQAccessTokenBlocker.a(SQAccessTokenBlocker.this, null, false);
            }

            public void a(ScCashResponsePayload sccashresponsepayload)
            {
                Timber.b("SQAccessTokenBlocker", "CASH-LOG: SUCCESS resolve SQAccessTokenBlocker", new Object[0]);
                com.snapchat.android.api2.cash.GenerateSquareAccessTokenTask.ResponsePayload responsepayload = (com.snapchat.android.api2.cash.GenerateSquareAccessTokenTask.ResponsePayload)sccashresponsepayload;
                mCashAuthManager.a(responsepayload.accessToken);
                SQAccessTokenBlocker.this.a(null, true);
            }

            
            {
                this$0 = SQAccessTokenBlocker.this;
                transaction = cashtransaction;
                super();
            }
        }).g();
    }

    protected void a(List list, boolean flag)
    {
        super.a(list, flag);
    }

    public BlockerOrder c()
    {
        return BlockerOrder.SQ_ACCESS_TOKEN_BLOCKER;
    }
}
