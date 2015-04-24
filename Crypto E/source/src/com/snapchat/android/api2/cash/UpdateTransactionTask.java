// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.BaseRetriableScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;

public class UpdateTransactionTask extends BaseRetriableScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    class RequestPayload extends AuthPayload
    {

        String conversationId;
        Boolean saved;
        final UpdateTransactionTask this$0;
        String transactionId;
        Integer version;

        RequestPayload()
        {
            this$0 = UpdateTransactionTask.this;
            super();
            transactionId = UpdateTransactionTask.a(UpdateTransactionTask.this);
            conversationId = UpdateTransactionTask.b(UpdateTransactionTask.this);
            saved = UpdateTransactionTask.c(UpdateTransactionTask.this);
            version = UpdateTransactionTask.d(UpdateTransactionTask.this);
        }
    }

    public static interface UpdateTransactionTaskCallback
    {

        public abstract void a();

        public abstract void a(int i);
    }


    private final UpdateTransactionTaskCallback mCallback;
    private final String mConversationId;
    private final Boolean mSaved;
    private final String mTransactionId;
    private final Integer mVersion;

    public UpdateTransactionTask(String s, String s1, Boolean boolean1, Integer integer, UpdateTransactionTaskCallback updatetransactiontaskcallback)
    {
        super(BaseRetriableScRequestTask.EXPONENTIAL_STRATEGY);
        mTransactionId = s;
        mConversationId = s1;
        mSaved = boolean1;
        mVersion = integer;
        mCallback = updatetransactiontaskcallback;
        a(java/lang/Boolean, this);
    }

    static String a(UpdateTransactionTask updatetransactiontask)
    {
        return updatetransactiontask.mTransactionId;
    }

    static String b(UpdateTransactionTask updatetransactiontask)
    {
        return updatetransactiontask.mConversationId;
    }

    static Boolean c(UpdateTransactionTask updatetransactiontask)
    {
        return updatetransactiontask.mSaved;
    }

    static Integer d(UpdateTransactionTask updatetransactiontask)
    {
        return updatetransactiontask.mVersion;
    }

    public void a(Boolean boolean1, NetworkResult networkresult)
    {
        if (networkresult.h() && boolean1 != null && boolean1.booleanValue())
        {
            mCallback.a();
            return;
        } else
        {
            mCallback.a(networkresult.j());
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((Boolean)obj, networkresult);
    }

    public Object b()
    {
        return new RequestPayload();
    }

    protected String d()
    {
        return "/cash/update_transaction";
    }
}
