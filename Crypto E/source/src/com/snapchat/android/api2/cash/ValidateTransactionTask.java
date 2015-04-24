// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.api2.AuthPayload;

// Referenced classes of package com.snapchat.android.api2.cash:
//            BasicScCashRequestTask, ScCashResponsePayload

public class ValidateTransactionTask extends BasicScCashRequestTask
{
    class RequestPayload extends AuthPayload
    {

        final int amount;
        final String currencyCode;
        final boolean isRain;
        final String message;
        final String recipient;
        final ValidateTransactionTask this$0;

        RequestPayload()
        {
            this$0 = ValidateTransactionTask.this;
            super();
            recipient = ValidateTransactionTask.a(ValidateTransactionTask.this);
            amount = ValidateTransactionTask.b(ValidateTransactionTask.this);
            currencyCode = ValidateTransactionTask.c(ValidateTransactionTask.this).name();
            message = ValidateTransactionTask.d(ValidateTransactionTask.this);
            isRain = ValidateTransactionTask.e(ValidateTransactionTask.this);
        }
    }

    public static class ResponsePayload extends ScCashResponsePayload
    {

        public long createdAt;
        public String recipientId;
        public String senderId;
        public String signature;
        public String transactionId;

        public ResponsePayload()
        {
        }
    }


    private final int mAmount;
    private final com.snapchat.android.util.CashUtils.CurrencyCode mCurrencyCode;
    private final boolean mIsRain;
    private final String mMessage;
    private final String mRecipient;

    public ValidateTransactionTask(String s, int i, com.snapchat.android.util.CashUtils.CurrencyCode currencycode, String s1, boolean flag, BasicScCashRequestTask.BasicScCashRequestTaskCallback basicsccashrequesttaskcallback)
    {
        super(basicsccashrequesttaskcallback);
        mRecipient = s;
        mAmount = i;
        mCurrencyCode = currencycode;
        mMessage = s1;
        mIsRain = flag;
        a(com/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload, this);
    }

    static String a(ValidateTransactionTask validatetransactiontask)
    {
        return validatetransactiontask.mRecipient;
    }

    static int b(ValidateTransactionTask validatetransactiontask)
    {
        return validatetransactiontask.mAmount;
    }

    static com.snapchat.android.util.CashUtils.CurrencyCode c(ValidateTransactionTask validatetransactiontask)
    {
        return validatetransactiontask.mCurrencyCode;
    }

    static String d(ValidateTransactionTask validatetransactiontask)
    {
        return validatetransactiontask.mMessage;
    }

    static boolean e(ValidateTransactionTask validatetransactiontask)
    {
        return validatetransactiontask.mIsRain;
    }

    public Object b()
    {
        return new RequestPayload();
    }

    protected String d()
    {
        return "/cash/validate_transaction";
    }
}
