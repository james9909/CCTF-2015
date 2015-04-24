// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.Timber;
import com.snapchat.android.model.server.ServerCashTransaction;
import com.snapchat.android.util.chat.ChatUtils;
import java.util.UUID;

public class CashTransaction
{
    public static class Builder
    {

        private int mAmount;
        private String mCashRecipientId;
        private String mCashSenderId;
        private long mCreatedAt;
        private com.snapchat.android.util.CashUtils.CurrencyCode mCurrencyCode;
        private boolean mFromRain;
        private String mId;
        private boolean mIsFromServer;
        private String mMessage;
        private String mProvider;
        private String mRecipient;
        private String mSender;
        private TransactionStatus mStatus;
        private long mUpdatedAt;

        public static CashTransaction a(ServerCashTransaction servercashtransaction)
        {
            Builder builder = new Builder(servercashtransaction.mSenderUsername, servercashtransaction.mRecipientUsername, servercashtransaction.mAmount);
            builder.c(servercashtransaction.mTransactionId).a(servercashtransaction.mCashSenderId).b(servercashtransaction.mCashRecipientId).a(com.snapchat.android.util.CashUtils.CurrencyCode.valueOf(servercashtransaction.mCurrencyCode)).d(servercashtransaction.mMessage).b(servercashtransaction.mCreatedTimestamp).a(servercashtransaction.mUpdatedTimestamp).e(servercashtransaction.mProvider).b(true).a(servercashtransaction.mFromRain);
            if (servercashtransaction.mTransactionStatusCode >= 0 && servercashtransaction.mTransactionStatusCode < TransactionStatus.values().length)
            {
                builder.a(TransactionStatus.values()[servercashtransaction.mTransactionStatusCode]);
            }
            CashTransaction cashtransaction = builder.a();
            CashTransaction.d(cashtransaction, servercashtransaction.mIsViewedBySender);
            CashTransaction.e(cashtransaction, servercashtransaction.mIsViewedByRecipient);
            CashTransaction.f(cashtransaction, servercashtransaction.mIsSavedBySender);
            CashTransaction.a(cashtransaction, servercashtransaction.mSenderSaveVersion);
            CashTransaction.g(cashtransaction, servercashtransaction.mIsSavedByRecipient);
            CashTransaction.b(cashtransaction, servercashtransaction.mRecipientSaveVersion);
            return cashtransaction;
        }

        public Builder a(long l1)
        {
            mUpdatedAt = l1;
            return this;
        }

        public Builder a(TransactionStatus transactionstatus)
        {
            mStatus = transactionstatus;
            return this;
        }

        public Builder a(com.snapchat.android.util.CashUtils.CurrencyCode currencycode)
        {
            mCurrencyCode = currencycode;
            return this;
        }

        public Builder a(String s1)
        {
            mCashSenderId = s1;
            return this;
        }

        public Builder a(boolean flag)
        {
            mFromRain = flag;
            return this;
        }

        public CashTransaction a()
        {
            CashTransaction cashtransaction = new CashTransaction(mSender, mRecipient, mAmount);
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

        public Builder b(long l1)
        {
            mCreatedAt = l1;
            return this;
        }

        public Builder b(String s1)
        {
            mCashRecipientId = s1;
            return this;
        }

        public Builder b(boolean flag)
        {
            mIsFromServer = flag;
            return this;
        }

        public Builder c(String s1)
        {
            mId = s1;
            return this;
        }

        public Builder d(String s1)
        {
            mMessage = s1;
            return this;
        }

        public Builder e(String s1)
        {
            mProvider = s1;
            return this;
        }

        public Builder(String s1, String s2, int i1)
        {
            mSender = s1;
            mRecipient = s2;
            mAmount = i1;
            mCurrencyCode = com.snapchat.android.util.CashUtils.CurrencyCode.USD;
            mCreatedAt = System.currentTimeMillis();
            mUpdatedAt = mCreatedAt;
            mStatus = TransactionStatus.INITIATED;
        }
    }

    public static final class TransactionStatus extends Enum
    {

        private static final TransactionStatus $VALUES[];
        public static final TransactionStatus CANCELED;
        public static final TransactionStatus COMPLETED;
        public static final TransactionStatus EXPIRED;
        public static final TransactionStatus INITIATED;
        public static final TransactionStatus RECIPIENT_CANCELED;
        public static final TransactionStatus SENDER_CANCELED;
        public static final TransactionStatus WAITING_ON_RECIPIENT;

        public static TransactionStatus valueOf(String s1)
        {
            return (TransactionStatus)Enum.valueOf(com/snapchat/android/model/CashTransaction$TransactionStatus, s1);
        }

        public static TransactionStatus[] values()
        {
            return (TransactionStatus[])$VALUES.clone();
        }

        static 
        {
            INITIATED = new TransactionStatus("INITIATED", 0);
            WAITING_ON_RECIPIENT = new TransactionStatus("WAITING_ON_RECIPIENT", 1);
            COMPLETED = new TransactionStatus("COMPLETED", 2);
            EXPIRED = new TransactionStatus("EXPIRED", 3);
            CANCELED = new TransactionStatus("CANCELED", 4);
            RECIPIENT_CANCELED = new TransactionStatus("RECIPIENT_CANCELED", 5);
            SENDER_CANCELED = new TransactionStatus("SENDER_CANCELED", 6);
            TransactionStatus atransactionstatus[] = new TransactionStatus[7];
            atransactionstatus[0] = INITIATED;
            atransactionstatus[1] = WAITING_ON_RECIPIENT;
            atransactionstatus[2] = COMPLETED;
            atransactionstatus[3] = EXPIRED;
            atransactionstatus[4] = CANCELED;
            atransactionstatus[5] = RECIPIENT_CANCELED;
            atransactionstatus[6] = SENDER_CANCELED;
            $VALUES = atransactionstatus;
        }

        private TransactionStatus(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private static final String TAG = com/snapchat/android/model/CashTransaction.getSimpleName();
    private int mAmount;
    private String mCashRecipientId;
    private String mCashSenderId;
    private String mConversationId;
    private long mCreatedTimestamp;
    private com.snapchat.android.util.CashUtils.CurrencyCode mCurrencyCode;
    private boolean mFromRain;
    private boolean mIsFromServer;
    private boolean mIsInFlight;
    private boolean mIsInvisible;
    private boolean mIsSavedByRecipient;
    private boolean mIsSavedBySender;
    private boolean mIsViewedByRecipient;
    private boolean mIsViewedBySender;
    private String mMessage;
    private String mProvider;
    private String mRecipientBankStatementMessage;
    private int mRecipientSaveVersion;
    private String mRecipientUsername;
    private String mSecurityCode;
    private String mSenderBankStatementMessage;
    private int mSenderSaveVersion;
    private String mSenderUsername;
    private String mSignature;
    private String mTransactionId;
    private TransactionStatus mTransactionStatus;
    private long mUpdatedTimestamp;

    private CashTransaction(String s1, String s2, int i1)
    {
        mSenderUsername = s1;
        mRecipientUsername = s2;
        mAmount = i1;
        mConversationId = ChatUtils.a(mSenderUsername, mRecipientUsername);
    }


    static int a(CashTransaction cashtransaction, int i1)
    {
        cashtransaction.mSenderSaveVersion = i1;
        return i1;
    }

    static long a(CashTransaction cashtransaction, long l1)
    {
        cashtransaction.mCreatedTimestamp = l1;
        return l1;
    }

    static TransactionStatus a(CashTransaction cashtransaction, TransactionStatus transactionstatus)
    {
        cashtransaction.mTransactionStatus = transactionstatus;
        return transactionstatus;
    }

    static com.snapchat.android.util.CashUtils.CurrencyCode a(CashTransaction cashtransaction, com.snapchat.android.util.CashUtils.CurrencyCode currencycode)
    {
        cashtransaction.mCurrencyCode = currencycode;
        return currencycode;
    }

    static String a(CashTransaction cashtransaction, String s1)
    {
        cashtransaction.mCashSenderId = s1;
        return s1;
    }

    static boolean a(CashTransaction cashtransaction, boolean flag)
    {
        cashtransaction.mFromRain = flag;
        return flag;
    }

    static int b(CashTransaction cashtransaction, int i1)
    {
        cashtransaction.mRecipientSaveVersion = i1;
        return i1;
    }

    static long b(CashTransaction cashtransaction, long l1)
    {
        cashtransaction.mUpdatedTimestamp = l1;
        return l1;
    }

    static String b(CashTransaction cashtransaction, String s1)
    {
        cashtransaction.mCashRecipientId = s1;
        return s1;
    }

    static boolean b(CashTransaction cashtransaction, boolean flag)
    {
        cashtransaction.mIsInvisible = flag;
        return flag;
    }

    static String c(CashTransaction cashtransaction, String s1)
    {
        cashtransaction.mMessage = s1;
        return s1;
    }

    static boolean c(CashTransaction cashtransaction, boolean flag)
    {
        cashtransaction.mIsFromServer = flag;
        return flag;
    }

    static String d(CashTransaction cashtransaction, String s1)
    {
        cashtransaction.mProvider = s1;
        return s1;
    }

    static boolean d(CashTransaction cashtransaction, boolean flag)
    {
        cashtransaction.mIsViewedBySender = flag;
        return flag;
    }

    static boolean e(CashTransaction cashtransaction, boolean flag)
    {
        cashtransaction.mIsViewedByRecipient = flag;
        return flag;
    }

    static boolean f(CashTransaction cashtransaction, boolean flag)
    {
        cashtransaction.mIsSavedBySender = flag;
        return flag;
    }

    static boolean g(CashTransaction cashtransaction, boolean flag)
    {
        cashtransaction.mIsSavedByRecipient = flag;
        return flag;
    }

    public String A()
    {
        return mSenderBankStatementMessage;
    }

    public String B()
    {
        return mRecipientBankStatementMessage;
    }

    public String a()
    {
        return mConversationId;
    }

    public void a(int i1)
    {
        mAmount = i1;
    }

    public void a(long l1)
    {
        mCreatedTimestamp = l1;
    }

    public void a(TransactionStatus transactionstatus)
    {
        String s1 = TAG;
        Object aobj[] = new Object[5];
        aobj[0] = transactionstatus.name();
        aobj[1] = b();
        aobj[2] = d();
        aobj[3] = f();
        aobj[4] = j();
        Timber.b(s1, "CASH-LOG: SETTING transaction status to %s id[%s] sender[%s] recipient[%s] amount[%s]", aobj);
        mTransactionStatus = transactionstatus;
    }

    public void a(CashTransaction cashtransaction)
    {
        c(cashtransaction.q());
        if (t() < cashtransaction.t())
        {
            e(cashtransaction.s());
            b(cashtransaction.t());
        }
    }

    public void a(String s1)
    {
        mTransactionId = s1;
    }

    public void a(boolean flag)
    {
        mIsInFlight = flag;
    }

    public String b()
    {
        return mTransactionId;
    }

    public void b(int i1)
    {
        mSenderSaveVersion = i1;
    }

    public void b(long l1)
    {
        mUpdatedTimestamp = l1;
    }

    public void b(CashTransaction cashtransaction)
    {
        d(cashtransaction.r());
        if (v() < cashtransaction.v())
        {
            f(cashtransaction.u());
            c(cashtransaction.v());
        }
    }

    public void b(String s1)
    {
        mCashSenderId = s1;
    }

    public void b(boolean flag)
    {
        mIsFromServer = flag;
    }

    public String c()
    {
        return mCashSenderId;
    }

    public void c(int i1)
    {
        mRecipientSaveVersion = i1;
    }

    public void c(String s1)
    {
        mCashRecipientId = s1;
    }

    public void c(boolean flag)
    {
        mIsViewedBySender = flag;
    }

    public String d()
    {
        return mSenderUsername;
    }

    public void d(String s1)
    {
        mSignature = s1;
    }

    public void d(boolean flag)
    {
        mIsViewedByRecipient = flag;
    }

    public String e()
    {
        return mCashRecipientId;
    }

    public void e(String s1)
    {
        mProvider = s1;
    }

    public void e(boolean flag)
    {
        mIsSavedBySender = flag;
    }

    public String f()
    {
        return mRecipientUsername;
    }

    public void f(String s1)
    {
        mMessage = s1;
    }

    public void f(boolean flag)
    {
        mIsSavedByRecipient = flag;
    }

    public int g()
    {
        return mAmount;
    }

    public void g(String s1)
    {
        mSecurityCode = s1;
    }

    public void h(String s1)
    {
        mSenderBankStatementMessage = s1;
    }

    public boolean h()
    {
        return mIsInFlight;
    }

    public void i(String s1)
    {
        mRecipientBankStatementMessage = s1;
    }

    public boolean i()
    {
        return mIsFromServer;
    }

    public String j()
    {
        if (g() % 100 == 0)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(g() / 100);
            return String.format("%d", aobj1);
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = Float.valueOf((float)g() / 100F);
            return String.format("%.2f", aobj);
        }
    }

    public com.snapchat.android.util.CashUtils.CurrencyCode k()
    {
        return mCurrencyCode;
    }

    public String l()
    {
        return mMessage;
    }

    public long m()
    {
        return mCreatedTimestamp;
    }

    public long n()
    {
        return mUpdatedTimestamp;
    }

    public TransactionStatus o()
    {
        return mTransactionStatus;
    }

    public boolean p()
    {
        return mIsInvisible;
    }

    public boolean q()
    {
        return mIsViewedBySender;
    }

    public boolean r()
    {
        return mIsViewedByRecipient;
    }

    public boolean s()
    {
        return mIsSavedBySender;
    }

    public int t()
    {
        return mSenderSaveVersion;
    }

    public boolean u()
    {
        return mIsSavedByRecipient;
    }

    public int v()
    {
        return mRecipientSaveVersion;
    }

    public boolean w()
    {
        return mFromRain;
    }

    public String x()
    {
        return mProvider;
    }

    public String y()
    {
        return mSignature;
    }

    public String z()
    {
        return mSecurityCode;
    }

}
