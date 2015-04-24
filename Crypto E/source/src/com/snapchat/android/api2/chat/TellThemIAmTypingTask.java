// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.chat;

import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.BasicScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.GsonWrapper;
import java.util.List;

public class TellThemIAmTypingTask extends BasicScRequestTask
{
    public class RequestPayload extends AuthPayload
    {

        private String recipientUsernames;
        final TellThemIAmTypingTask this$0;

        public RequestPayload(List list)
        {
            this$0 = TellThemIAmTypingTask.this;
            super();
            recipientUsernames = TellThemIAmTypingTask.a(TellThemIAmTypingTask.this).a(list);
        }
    }


    public static final String CHAT_TYPING_PATH = "/bq/chat_typing";
    private static final String TAG = "TellThemIAmTypingTask";
    private ChatConversation mConversation;

    public TellThemIAmTypingTask(ChatConversation chatconversation)
    {
        mConversation = chatconversation;
        mConversation.l(true);
    }

    static GsonWrapper a(TellThemIAmTypingTask tellthemiamtypingtask)
    {
        return tellthemiamtypingtask.mGsonWrapper;
    }

    public void a(NetworkResult networkresult)
    {
        super.a(networkresult);
        mConversation.l(false);
    }

    public Object b()
    {
        return e();
    }

    protected String d()
    {
        return "/bq/chat_typing";
    }

    public RequestPayload e()
    {
        return new RequestPayload(mConversation.aj());
    }
}
