// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import android.text.TextUtils;
import com.snapchat.android.model.server.chat.ConversationMessage;
import com.snapchat.android.model.server.chat.ConversationMessageResponse;
import com.snapchat.android.model.server.chat.SCMessage;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.snapchat.android.util.chat:
//            ChatReceivedMessageListener

public class SecureChatMessageAckTracker
    implements ChatReceivedMessageListener
{

    private final ConcurrentHashMap a = new ConcurrentHashMap(16, 0.75F, 2);
    private final ConcurrentHashMap b = new ConcurrentHashMap(16, 0.75F, 2);
    private final ScheduledExecutorService c;
    private final long d;

    public SecureChatMessageAckTracker(ScheduledExecutorService scheduledexecutorservice, long l)
    {
        c = scheduledexecutorservice;
        d = l;
    }

    private void a(ConversationMessageResponse conversationmessageresponse)
    {
        SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback;
label0:
        {
            securechatwritecompletedcallback = (SecureChatService.SecureChatWriteCompletedCallback)b.remove(conversationmessageresponse.getAckId());
            if (securechatwritecompletedcallback != null)
            {
                if (!conversationmessageresponse.isSuccessful())
                {
                    break label0;
                }
                securechatwritecompletedcallback.a(true, SecureChatService.Protocol.b, SecureChatService.SecureChatWriteCompletedCallback.Status.a, null);
            }
            return;
        }
        securechatwritecompletedcallback.a(false, SecureChatService.Protocol.b, SecureChatService.SecureChatWriteCompletedCallback.Status.l, conversationmessageresponse.getFailureReason());
    }

    static void a(SecureChatMessageAckTracker securechatmessageacktracker, String s)
    {
        securechatmessageacktracker.b(s);
    }

    private void b(String s)
    {
        SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback = (SecureChatService.SecureChatWriteCompletedCallback)b.remove(s);
        if (securechatwritecompletedcallback != null)
        {
            securechatwritecompletedcallback.a(false, SecureChatService.Protocol.b, SecureChatService.SecureChatWriteCompletedCallback.Status.k, "Message timed out");
        }
    }

    private void c(String s)
    {
        c.schedule(new Runnable(s) {

            final String a;
            final SecureChatMessageAckTracker b;

            public void run()
            {
                SecureChatMessageAckTracker.a(b, a);
            }

            
            {
                b = SecureChatMessageAckTracker.this;
                a = s;
                super();
            }
        }, d, TimeUnit.MILLISECONDS);
    }

    public void a(SCMessage scmessage)
    {
        if (TextUtils.equals(scmessage.getType(), "conversation_message_response"))
        {
            a((ConversationMessageResponse)scmessage);
        }
    }

    public void a(SCMessage scmessage, SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback)
    {
        if ((scmessage instanceof ConversationMessage) && ((ConversationMessage)scmessage).needsACK())
        {
            b.put(scmessage.getId(), securechatwritecompletedcallback);
            c(scmessage.getId());
            return;
        } else
        {
            a.put(scmessage.getId(), securechatwritecompletedcallback);
            return;
        }
    }

    public void a(String s)
    {
        SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback = (SecureChatService.SecureChatWriteCompletedCallback)a.remove(s);
        if (securechatwritecompletedcallback != null)
        {
            securechatwritecompletedcallback.a(true, SecureChatService.Protocol.b, SecureChatService.SecureChatWriteCompletedCallback.Status.a, null);
        }
    }

    public void a(String s, SecureChatService.SecureChatWriteCompletedCallback.Status status, String s1)
    {
        SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback = (SecureChatService.SecureChatWriteCompletedCallback)a.remove(s);
        if (securechatwritecompletedcallback != null)
        {
            securechatwritecompletedcallback.a(false, SecureChatService.Protocol.b, status, s1);
        }
        SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback1 = (SecureChatService.SecureChatWriteCompletedCallback)b.remove(s);
        if (securechatwritecompletedcallback1 != null)
        {
            securechatwritecompletedcallback1.a(false, SecureChatService.Protocol.b, status, s1);
        }
    }
}
