// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square.data;


// Referenced classes of package com.snapchat.android.api2.cash.square.data:
//            Money, SQPaymentBlockers, CashCustomer

public class CashPayment
{
    public static final class Action extends Enum
    {

        private static final Action $VALUES[];
        public static final Action SEND;

        public static Action valueOf(String s)
        {
            return (Action)Enum.valueOf(com/snapchat/android/api2/cash/square/data/CashPayment$Action, s);
        }

        public static Action[] values()
        {
            return (Action[])$VALUES.clone();
        }

        static 
        {
            SEND = new Action("SEND", 0);
            Action aaction[] = new Action[1];
            aaction[0] = SEND;
            $VALUES = aaction;
        }

        private Action(String s, int i1)
        {
            super(s, i1);
        }
    }

    public static final class CancellationReason extends Enum
    {

        private static final CancellationReason $VALUES[];
        public static final CancellationReason DECLINED;
        public static final CancellationReason EXPIRED_WAITING_ON_RECIPIENT;
        public static final CancellationReason EXPIRED_WAITING_ON_SENDER;
        public static final CancellationReason LIMIT_EXCEEDED;
        public static final CancellationReason OTHER;
        public static final CancellationReason RECIPIENT_CANCELED;
        public static final CancellationReason SENDER_CANCELED;
        public static final CancellationReason SQUARE_CANCELED;

        public static CancellationReason valueOf(String s)
        {
            return (CancellationReason)Enum.valueOf(com/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason, s);
        }

        public static CancellationReason[] values()
        {
            return (CancellationReason[])$VALUES.clone();
        }

        static 
        {
            SENDER_CANCELED = new CancellationReason("SENDER_CANCELED", 0);
            RECIPIENT_CANCELED = new CancellationReason("RECIPIENT_CANCELED", 1);
            SQUARE_CANCELED = new CancellationReason("SQUARE_CANCELED", 2);
            LIMIT_EXCEEDED = new CancellationReason("LIMIT_EXCEEDED", 3);
            DECLINED = new CancellationReason("DECLINED", 4);
            OTHER = new CancellationReason("OTHER", 5);
            EXPIRED_WAITING_ON_SENDER = new CancellationReason("EXPIRED_WAITING_ON_SENDER", 6);
            EXPIRED_WAITING_ON_RECIPIENT = new CancellationReason("EXPIRED_WAITING_ON_RECIPIENT", 7);
            CancellationReason acancellationreason[] = new CancellationReason[8];
            acancellationreason[0] = SENDER_CANCELED;
            acancellationreason[1] = RECIPIENT_CANCELED;
            acancellationreason[2] = SQUARE_CANCELED;
            acancellationreason[3] = LIMIT_EXCEEDED;
            acancellationreason[4] = DECLINED;
            acancellationreason[5] = OTHER;
            acancellationreason[6] = EXPIRED_WAITING_ON_SENDER;
            acancellationreason[7] = EXPIRED_WAITING_ON_RECIPIENT;
            $VALUES = acancellationreason;
        }

        private CancellationReason(String s, int i1)
        {
            super(s, i1);
        }
    }

    public static final class State extends Enum
    {

        private static final State $VALUES[];
        public static final State CANCELED;
        public static final State COMPLETED;
        public static final State PENDING;
        public static final State WAITING_ON_RECIPIENT;
        public static final State WAITING_ON_SENDER;

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/snapchat/android/api2/cash/square/data/CashPayment$State, s);
        }

        public static State[] values()
        {
            return (State[])$VALUES.clone();
        }

        static 
        {
            WAITING_ON_SENDER = new State("WAITING_ON_SENDER", 0);
            WAITING_ON_RECIPIENT = new State("WAITING_ON_RECIPIENT", 1);
            PENDING = new State("PENDING", 2);
            COMPLETED = new State("COMPLETED", 3);
            CANCELED = new State("CANCELED", 4);
            State astate[] = new State[5];
            astate[0] = WAITING_ON_SENDER;
            astate[1] = WAITING_ON_RECIPIENT;
            astate[2] = PENDING;
            astate[3] = COMPLETED;
            astate[4] = CANCELED;
            $VALUES = astate;
        }

        private State(String s, int i1)
        {
            super(s, i1);
        }
    }


    private Action mAction;
    private Money mAmount;
    private SQPaymentBlockers mBlockers;
    private CancellationReason mCancellationReason;
    private String mCapturedAt;
    private String mCreatedAt;
    private String mId;
    private String mPaidOutAt;
    private String mReachedRecipientAt;
    private CashCustomer mRecipient;
    private String mRefundedAt;
    private CashCustomer mSender;
    private State mState;

    public CashPayment()
    {
    }

    public String a()
    {
        return mId;
    }

    public Action b()
    {
        return mAction;
    }

    public CashCustomer c()
    {
        return mSender;
    }

    public CashCustomer d()
    {
        return mRecipient;
    }

    public Money e()
    {
        return mAmount;
    }

    public State f()
    {
        return mState;
    }

    public SQPaymentBlockers g()
    {
        return mBlockers;
    }

    public CancellationReason h()
    {
        return mCancellationReason;
    }

    public String i()
    {
        return mCreatedAt;
    }

    public String j()
    {
        return mCapturedAt;
    }

    public String k()
    {
        return mPaidOutAt;
    }

    public String l()
    {
        return mRefundedAt;
    }

    public String m()
    {
        return mReachedRecipientAt;
    }

    public String toString()
    {
        return (new StringBuilder()).append("CashPayment{mId='").append(mId).append('\'').append(", mAction=").append(mAction).append(", mSender=").append(mSender).append(", mRecipient=").append(mRecipient).append(", mAmount=").append(mAmount).append(", mState=").append(mState).append(", mBlockers=").append(mBlockers).append(", mCancellationReason=").append(mCancellationReason).append(", mCreatedAt='").append(mCreatedAt).append('\'').append(", mCapturedAt='").append(mCapturedAt).append('\'').append(", mPaidOutAt='").append(mPaidOutAt).append('\'').append(", mRefundedAt='").append(mRefundedAt).append('\'').append('}').toString();
    }
}
