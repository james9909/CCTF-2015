// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.BaseRetriableScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.util.StringUtils;
import java.util.Collection;
import java.util.List;

public class MarkTransactionsAsViewedTask extends BaseRetriableScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public static interface MarkTransactionsAsViewedTaskCallback
    {

        public abstract void a(int i);

        public abstract void a(List list);
    }

    class RequestPayload extends AuthPayload
    {

        String conversationId;
        final MarkTransactionsAsViewedTask this$0;
        String transactionIds;

        RequestPayload()
        {
            this$0 = MarkTransactionsAsViewedTask.this;
            super();
            transactionIds = MarkTransactionsAsViewedTask.a(MarkTransactionsAsViewedTask.this);
            conversationId = MarkTransactionsAsViewedTask.b(MarkTransactionsAsViewedTask.this);
        }
    }


    private final MarkTransactionsAsViewedTaskCallback mCallback;
    private final String mConversationId;
    private final String mTransactionIds;

    public MarkTransactionsAsViewedTask(Collection collection, String s, MarkTransactionsAsViewedTaskCallback marktransactionsasviewedtaskcallback)
    {
        super(BaseRetriableScRequestTask.EXPONENTIAL_STRATEGY);
        mTransactionIds = StringUtils.a(collection, ",");
        mConversationId = s;
        mCallback = marktransactionsasviewedtaskcallback;
        a(java/util/List, this);
    }

    static String a(MarkTransactionsAsViewedTask marktransactionsasviewedtask)
    {
        return marktransactionsasviewedtask.mTransactionIds;
    }

    static String b(MarkTransactionsAsViewedTask marktransactionsasviewedtask)
    {
        return marktransactionsasviewedtask.mConversationId;
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((List)obj, networkresult);
    }

    public void a(List list, NetworkResult networkresult)
    {
        if (networkresult.h() && list != null)
        {
            mCallback.a(list);
            return;
        } else
        {
            mCallback.a(networkresult.j());
            return;
        }
    }

    public Object b()
    {
        return new RequestPayload();
    }

    protected String d()
    {
        return "/cash/mark_as_viewed";
    }
}
