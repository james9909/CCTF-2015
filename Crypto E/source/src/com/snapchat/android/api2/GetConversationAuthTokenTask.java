// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.api2.framework.BasicScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.server.chat.SignedPayload;

// Referenced classes of package com.snapchat.android.api2:
//            AuthPayload

public class GetConversationAuthTokenTask extends BasicScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    class RequestPayload extends AuthPayload
    {

        final String conversationId;
        final GetConversationAuthTokenTask this$0;

        RequestPayload()
        {
            this$0 = GetConversationAuthTokenTask.this;
            super();
            conversationId = GetConversationAuthTokenTask.a(GetConversationAuthTokenTask.this);
        }
    }

    static class ResponsePayload
    {

        SignedPayload messagingAuth;

        ResponsePayload()
        {
        }
    }


    private final String mConversationId;

    public GetConversationAuthTokenTask(String s)
    {
        mConversationId = s;
        a(com/snapchat/android/api2/GetConversationAuthTokenTask$ResponsePayload, this);
    }

    static String a(GetConversationAuthTokenTask getconversationauthtokentask)
    {
        return getconversationauthtokentask.mConversationId;
    }

    public void a(ResponsePayload responsepayload, NetworkResult networkresult)
    {
        ChatConversation chatconversation;
        if (responsepayload != null && responsepayload.messagingAuth != null)
        {
            if ((chatconversation = ConversationUtils.a(mConversationId)) != null)
            {
                chatconversation.a(responsepayload.messagingAuth);
                return;
            }
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((ResponsePayload)obj, networkresult);
    }

    public Object b()
    {
        return new RequestPayload();
    }

    protected String d()
    {
        return "/loq/conversation_auth_token";
    }
}
