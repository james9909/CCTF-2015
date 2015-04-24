// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.BasicScRequestTask;

public class RetrieveTransactionTask extends BasicScRequestTask
{
    class RequestPayload extends AuthPayload
    {

        String conversationId;
        final RetrieveTransactionTask this$0;
        String transactionId;

        RequestPayload()
        {
            this$0 = RetrieveTransactionTask.this;
            super();
            transactionId = RetrieveTransactionTask.a(RetrieveTransactionTask.this);
            conversationId = RetrieveTransactionTask.b(RetrieveTransactionTask.this);
        }
    }


    private final String mConversationId;
    private final String mTransactionId;

    public RetrieveTransactionTask(String s, String s1)
    {
        mTransactionId = s;
        mConversationId = s1;
    }

    static String a(RetrieveTransactionTask retrievetransactiontask)
    {
        return retrievetransactiontask.mTransactionId;
    }

    static String b(RetrieveTransactionTask retrievetransactiontask)
    {
        return retrievetransactiontask.mConversationId;
    }

    public Object b()
    {
        return new RequestPayload();
    }

    protected String d()
    {
        return "/cash/transaction";
    }
}
