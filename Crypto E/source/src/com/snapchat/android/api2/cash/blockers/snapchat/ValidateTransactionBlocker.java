// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.snapchat;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ValidateTransactionTask;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.List;

public class ValidateTransactionBlocker extends Blocker
{

    private static final String TAG = "ValidateTransactionBlocker";
    protected CashErrorReporter mCashErrorReporter;

    public ValidateTransactionBlocker()
    {
        SnapchatApplication.e().a(this);
    }

    static void a(ValidateTransactionBlocker validatetransactionblocker)
    {
        validatetransactionblocker.b();
    }

    static void a(ValidateTransactionBlocker validatetransactionblocker, List list, boolean flag)
    {
        validatetransactionblocker.a(list, flag);
    }

    static void b(ValidateTransactionBlocker validatetransactionblocker, List list, boolean flag)
    {
        validatetransactionblocker.b(list, flag);
    }

    public void a(final CashTransaction transaction)
    {
        Object aobj[] = new Object[2];
        aobj[0] = transaction.f();
        aobj[1] = transaction.j();
        Timber.b("ValidateTransactionBlocker", "CASH-LOG: ATTEMPT resolve ValidateTransactionBlocker recipient[%s] amount[%s]", aobj);
        (new ValidateTransactionTask(transaction.f(), transaction.g(), transaction.k(), transaction.l(), transaction.w(), new com.snapchat.android.api2.cash.BasicScCashRequestTask.BasicScCashRequestTaskCallback() {

            final ValidateTransactionBlocker this$0;
            final CashTransaction val$transaction;

            public void a(com.snapchat.android.api2.cash.ScCashResponsePayload.Status status, int i)
            {
                Object aobj1[] = new Object[4];
                aobj1[0] = transaction.f();
                aobj1[1] = transaction.j();
                aobj1[2] = status.name();
                aobj1[3] = Integer.valueOf(i);
                Timber.b("ValidateTransactionBlocker", "CASH-LOG: FAILED resolving ValidateTransactionBlocker recipient[%s] amount[%s] status[%s] statusCode[%d]", aobj1);
                AnalyticsEvents.a(status.name(), i);
                mCashErrorReporter.a(transaction, status);
                if (status == com.snapchat.android.api2.cash.ScCashResponsePayload.Status.INVALID_AMOUNT || status == com.snapchat.android.api2.cash.ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT)
                {
                    ValidateTransactionBlocker.a(ValidateTransactionBlocker.this);
                } else
                {
                    ValidateTransactionBlocker.b(ValidateTransactionBlocker.this, null, false);
                }
                if (status == com.snapchat.android.api2.cash.ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT)
                {
                    User user = User.c();
                    if (user != null)
                    {
                        Friend friend = user.b(transaction.f());
                        if (friend != null)
                        {
                            friend.a(status);
                        }
                    }
                }
            }

            public void a(ScCashResponsePayload sccashresponsepayload)
            {
                com.snapchat.android.api2.cash.ValidateTransactionTask.ResponsePayload responsepayload = (com.snapchat.android.api2.cash.ValidateTransactionTask.ResponsePayload)sccashresponsepayload;
                transaction.a(responsepayload.transactionId);
                transaction.c(responsepayload.recipientId);
                transaction.b(responsepayload.senderId);
                transaction.a(responsepayload.createdAt);
                transaction.b(responsepayload.createdAt);
                transaction.d(responsepayload.signature);
                transaction.a(false);
                ChatConversation chatconversation = ConversationUtils.a(transaction.a());
                if (chatconversation != null && chatconversation.T() < responsepayload.createdAt)
                {
                    chatconversation.c(responsepayload.createdAt);
                }
                Object aobj1[] = new Object[3];
                aobj1[0] = transaction.f();
                aobj1[1] = transaction.j();
                aobj1[2] = transaction.b();
                Timber.b("ValidateTransactionBlocker", "CASH-LOG: SUCCESS resolved ValidateTransactionBlocker recipient[%s] amount[%s] got transaction_id[%s]", aobj1);
                ValidateTransactionBlocker.a(ValidateTransactionBlocker.this, null, true);
            }

            
            {
                this$0 = ValidateTransactionBlocker.this;
                transaction = cashtransaction;
                super();
            }
        })).g();
    }

    public BlockerOrder c()
    {
        return BlockerOrder.VALIDATE_TRANSACTION_BLOCKER;
    }
}
