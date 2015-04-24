// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.chat;

import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.BasicScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.squareup.otto.Bus;

public class ClearConversationTask extends BasicScRequestTask
{
    public class RequestPayload extends AuthPayload
    {

        private String conversationId;
        final ClearConversationTask this$0;

        public RequestPayload(String s)
        {
            this$0 = ClearConversationTask.this;
            super();
            conversationId = s;
        }
    }


    private ChatConversation mConversation;
    private String mConversationId;

    public ClearConversationTask(ChatConversation chatconversation)
    {
        mConversation = chatconversation;
        mConversationId = chatconversation.u();
    }

    public void a(NetworkResult networkresult)
    {
        super.a(networkresult);
        if (networkresult.h())
        {
            ChatConversationManager.a().c(mConversationId);
        } else
        {
            BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c01b0));
            mConversation.m(false);
        }
        BusProvider.a().a(new UpdateFeedEvent());
    }

    public Object b()
    {
        return e();
    }

    protected String d()
    {
        return "/loq/clear_conversation";
    }

    public RequestPayload e()
    {
        return new RequestPayload(mConversationId);
    }
}
