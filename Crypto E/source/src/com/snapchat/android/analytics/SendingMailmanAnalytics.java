// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.server.chat.ChatMessage;
import com.snapchat.android.model.server.chat.ConversationMessage;
import com.snapchat.android.model.server.chat.ConversationMessageResponse;
import com.snapchat.android.util.network.ConnectivityUtils;
import java.util.HashMap;

public class SendingMailmanAnalytics
{

    private final HashMap mSendingChatTimers = new HashMap();

    public SendingMailmanAnalytics()
    {
    }

    protected void a(ChatMessage chatmessage, com.snapchat.android.util.chat.SecureChatService.Protocol protocol)
    {
        EasyMetric easymetric = (EasyMetric)mSendingChatTimers.remove(chatmessage.getChatMessageId());
        if (easymetric == null)
        {
            easymetric = new EasyMetric();
        }
        easymetric.a("CHAT_SENT").a("success", Boolean.valueOf(true)).a("protocol", protocol.name()).c();
        easymetric.a("CHAT_SENT_SUCCESS").c();
        easymetric.a((new StringBuilder()).append("CHAT_").append(chatmessage.getBodyType()).append("_SENT_SUCCESS").toString()).c();
    }

    public void a(ChatMessage chatmessage, boolean flag)
    {
        EasyMetric easymetric = new EasyMetric("CHAT_SENT_ATTEMPT");
        String s;
        String s1;
        if (flag)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        easymetric.a("story_reply", s).c();
        (new EasyMetric((new StringBuilder()).append("CHAT_").append(chatmessage.getBodyType()).append("_SENT_ATTEMPT").toString())).c();
        s1 = ConnectivityUtils.d();
        mSendingChatTimers.put(chatmessage.getChatMessageId(), (new EasyMetric()).a().a("reachability", s1));
    }

    public void a(ConversationMessage conversationmessage, ConversationMessageResponse conversationmessageresponse)
    {
label0:
        {
            if (conversationmessage instanceof ChatMessage)
            {
                if (!conversationmessageresponse.isSuccessful())
                {
                    break label0;
                }
                a((ChatMessage)conversationmessage, com.snapchat.android.util.chat.SecureChatService.Protocol.b);
            }
            return;
        }
        b((ChatMessage)conversationmessage, com.snapchat.android.util.chat.SecureChatService.Protocol.b);
    }

    public void a(ConversationMessage conversationmessage, boolean flag, com.snapchat.android.util.chat.SecureChatService.Protocol protocol)
    {
label0:
        {
            if ((!conversationmessage.needsACK() || protocol == com.snapchat.android.util.chat.SecureChatService.Protocol.a) && (conversationmessage instanceof ChatMessage))
            {
                if (!flag)
                {
                    break label0;
                }
                a((ChatMessage)conversationmessage, protocol);
            }
            return;
        }
        b((ChatMessage)conversationmessage, protocol);
    }

    protected void b(ChatMessage chatmessage, com.snapchat.android.util.chat.SecureChatService.Protocol protocol)
    {
        EasyMetric easymetric = (EasyMetric)mSendingChatTimers.remove(chatmessage.getChatMessageId());
        if (easymetric == null)
        {
            easymetric = new EasyMetric();
        }
        easymetric.a("CHAT_SENT").a("success", Boolean.valueOf(false)).a("protocol", protocol.name()).c();
        easymetric.a("CHAT_SENT_FAILED").c();
        easymetric.a((new StringBuilder()).append("CHAT_").append(chatmessage.getBodyType()).append("_SENT_FAILED").toString()).c();
    }
}
