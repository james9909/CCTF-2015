// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.model.server.ServerCashTransaction;
import java.util.UUID;

// Referenced classes of package com.snapchat.android.model:
//            CashTransaction

public static class ionStatus.INITIATED
{

    private int mAmount;
    private String mCashRecipientId;
    private String mCashSenderId;
    private long mCreatedAt;
    private com.snapchat.android.util..mProvider mCurrencyCode;
    private boolean mFromRain;
    private String mId;
    private boolean mIsFromServer;
    private String mMessage;
    private String mProvider;
    private String mRecipient;
    private String mSender;
    private ionStatus mStatus;
    private long mUpdatedAt;

    public static CashTransaction a(ServerCashTransaction servercashtransaction)
    {
        ionStatus ionstatus = new <init>(servercashtransaction.mSenderUsername, servercashtransaction.mRecipientUsername, servercashtransaction.mAmount);
        ionstatus.c(servercashtransaction.mTransactionId).a(servercashtransaction.mCashSenderId).b(servercashtransaction.mCashRecipientId).a(com.snapchat.android.util.alueOf(servercashtransaction.mCurrencyCode)).d(servercashtransaction.mMessage).b(servercashtransaction.mCreatedTimestamp).a(servercashtransaction.mUpdatedTimestamp).e(servercashtransaction.mProvider).b(true).a(servercashtransaction.mFromRain);
        if (servercashtransaction.mTransactionStatusCode >= 0 && servercashtransaction.mTransactionStatusCode < ionStatus.values().length)
        {
            ionstatus.a(ionStatus.values()[servercashtransaction.mTransactionStatusCode]);
        }
        CashTransaction cashtransaction = ionstatus.a();
        CashTransaction.d(cashtransaction, servercashtransaction.mIsViewedBySender);
        CashTransaction.e(cashtransaction, servercashtransaction.mIsViewedByRecipient);
        CashTransaction.f(cashtransaction, servercashtransaction.mIsSavedBySender);
        CashTransaction.a(cashtransaction, servercashtransaction.mSenderSaveVersion);
        CashTransaction.g(cashtransaction, servercashtransaction.mIsSavedByRecipient);
        CashTransaction.b(cashtransaction, servercashtransaction.mRecipientSaveVersion);
        return cashtransaction;
    }

    public tion.mRecipientSaveVersion a(long l)
    {
        mUpdatedAt = l;
        return this;
    }

    public ionStatus a(ionStatus ionstatus)
    {
        mStatus = ionstatus;
        return this;
    }

    public mStatus a(com.snapchat.android.util. )
    {
        mCurrencyCode = ;
        return this;
    }

    public mCurrencyCode a(String s)
    {
        mCashSenderId = s;
        return this;
    }

    public mCashSenderId a(boolean flag)
    {
        mFromRain = flag;
        return this;
    }

    public CashTransaction a()
    {
        CashTransaction cashtransaction = new CashTransaction(mSender, mRecipient, mAmount, null);
        if (mId == null)
        {
            mId = UUID.randomUUID().toString();
            cashtransaction.a(true);
        }
        cashtransaction.a(mId);
        CashTransaction.a(cashtransaction, mCashSenderId);
        CashTransaction.b(cashtransaction, mCashRecipientId);
        CashTransaction.c(cashtransaction, mMessage);
        CashTransaction.a(cashtransaction, mCurrencyCode);
        CashTransaction.a(cashtransaction, mFromRain);
        CashTransaction.a(cashtransaction, mCreatedAt);
        CashTransaction.b(cashtransaction, mUpdatedAt);
        CashTransaction.b(cashtransaction, false);
        CashTransaction.a(cashtransaction, mStatus);
        CashTransaction.d(cashtransaction, mProvider);
        CashTransaction.c(cashtransaction, mIsFromServer);
        return cashtransaction;
    }

    public mIsFromServer b(long l)
    {
        mCreatedAt = l;
        return this;
    }

    public mCreatedAt b(String s)
    {
        mCashRecipientId = s;
        return this;
    }

    public mCashRecipientId b(boolean flag)
    {
        mIsFromServer = flag;
        return this;
    }

    public mIsFromServer c(String s)
    {
        mId = s;
        return this;
    }

    public mId d(String s)
    {
        mMessage = s;
        return this;
    }

    public mMessage e(String s)
    {
        mProvider = s;
        return this;
    }

    public ionStatus(String s, String s1, int i)
    {
        mSender = s;
        mRecipient = s1;
        mAmount = i;
        mCurrencyCode = com.snapchat.android.util.SD;
        mCreatedAt = System.currentTimeMillis();
        mUpdatedAt = mCreatedAt;
        mStatus = ionStatus.INITIATED;
    }
}
