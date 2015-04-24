// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.chat;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.BaseRetriableScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.util.GsonWrapper;
import java.util.ArrayList;
import java.util.List;

public class PostChatsTask extends BaseRetriableScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    static class RequestPayload extends AuthPayload
    {

        String mAuthToken;
        String mMessageJson;

        private RequestPayload()
        {
        }

    }

    public static class ResponsePayload
    {

        List mConversations;

        public ResponsePayload()
        {
        }
    }


    private static final String ENDPOINT = "/loq/conversation_post_messages";
    private static final String TAG = "PostChatsTask";
    private List mMessages;
    private com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback mWriteCompletedCallback;

    public PostChatsTask(List list, com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback)
    {
        mMessages = new ArrayList();
        mMessages.addAll(list);
        mWriteCompletedCallback = securechatwritecompletedcallback;
        a(com/snapchat/android/api2/chat/PostChatsTask$ResponsePayload, this);
    }

    private com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status c(NetworkResult networkresult)
    {
        com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status status = com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status.i;
        if (networkresult.j() == 500)
        {
            status = com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status.g;
        } else
        if (networkresult.j() == 0)
        {
            return com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status.b;
        }
        return status;
    }

    public void a(ResponsePayload responsepayload, NetworkResult networkresult)
    {
        if (networkresult.h())
        {
            mWriteCompletedCallback.a(true, com.snapchat.android.util.chat.SecureChatService.Protocol.a, com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status.a, "");
            if (responsepayload.mConversations != null)
            {
                ChatConversationManager.a().a(responsepayload.mConversations, false, false, hashCode());
            }
            return;
        } else
        {
            mWriteCompletedCallback.a(false, com.snapchat.android.util.chat.SecureChatService.Protocol.a, c(networkresult), networkresult.d());
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((ResponsePayload)obj, networkresult);
    }

    public Object b()
    {
        return e();
    }

    public void b(NetworkResult networkresult)
    {
        StringBuilder stringbuilder = new StringBuilder();
        StringBuilder stringbuilder1 = stringbuilder.append("PostChatsTask was");
        String s;
        if (networkresult.h())
        {
            s = " successful. ";
        } else
        {
            s = "unsuccessful. ";
        }
        stringbuilder1.append(s);
        stringbuilder.append("Response message: ").append(networkresult.d()).append(" ");
        stringbuilder.append("Network Type: ").append(networkresult.c()).append(" ");
        stringbuilder.append("Status Code: ").append(networkresult.j());
        Timber.c("PostChatsTask", stringbuilder.toString(), new Object[0]);
    }

    protected String d()
    {
        return "/loq/conversation_post_messages";
    }

    public RequestPayload e()
    {
        RequestPayload requestpayload = new RequestPayload();
        requestpayload.mUsername = UserPrefs.k();
        requestpayload.mAuthToken = UserPrefs.u();
        if (!mMessages.isEmpty())
        {
            requestpayload.mMessageJson = mGsonWrapper.a(mMessages);
        }
        return requestpayload;
    }
}
