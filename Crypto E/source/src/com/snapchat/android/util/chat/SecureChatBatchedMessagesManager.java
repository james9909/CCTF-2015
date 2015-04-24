// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.chat.PostChatsTask;
import com.snapchat.android.model.server.chat.ChatMessage;
import com.snapchat.android.model.server.chat.ConversationMessage;
import com.snapchat.android.model.server.chat.MessageStateMessage;
import com.snapchat.android.model.server.chat.ReleaseMessage;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class SecureChatBatchedMessagesManager
{

    private static SecureChatBatchedMessagesManager a;
    private final Handler b = new Handler(Looper.getMainLooper());
    private final List c = new ArrayList();
    private final Map d = new HashMap();
    private final Set e = new HashSet();

    private SecureChatBatchedMessagesManager()
    {
    }

    public static SecureChatBatchedMessagesManager a()
    {
        com/snapchat/android/util/chat/SecureChatBatchedMessagesManager;
        JVM INSTR monitorenter ;
        SecureChatBatchedMessagesManager securechatbatchedmessagesmanager;
        if (a == null)
        {
            a = new SecureChatBatchedMessagesManager();
        }
        securechatbatchedmessagesmanager = a;
        com/snapchat/android/util/chat/SecureChatBatchedMessagesManager;
        JVM INSTR monitorexit ;
        return securechatbatchedmessagesmanager;
        Exception exception;
        exception;
        throw exception;
    }

    private List a(MessageStateMessage messagestatemessage)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = c.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ConversationMessage conversationmessage = (ConversationMessage)iterator.next();
            if (conversationmessage.getType().equals("message_state"))
            {
                MessageStateMessage messagestatemessage1 = (MessageStateMessage)conversationmessage;
                if (messagestatemessage1.getChatMessageId().equals(messagestatemessage.getChatMessageId()))
                {
                    arraylist.add(messagestatemessage1);
                }
            }
        } while (true);
        return arraylist;
    }

    private List a(ReleaseMessage releasemessage)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = c.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ConversationMessage conversationmessage = (ConversationMessage)iterator.next();
            if (conversationmessage.getType().equals("message_release"))
            {
                ReleaseMessage releasemessage1 = (ReleaseMessage)conversationmessage;
                if (releasemessage1.getHeader().getConvId().equals(releasemessage.getHeader().getConvId()))
                {
                    arraylist.add(releasemessage1);
                }
            }
        } while (true);
        return arraylist;
    }

    private void a(ConversationMessage conversationmessage)
    {
        String s = conversationmessage.getType();
        if (!s.equals("message_release")) goto _L2; else goto _L1
_L1:
        List list = a((ReleaseMessage)conversationmessage);
_L4:
        if (list != null && !list.isEmpty())
        {
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                ConversationMessage conversationmessage1 = (ConversationMessage)iterator.next();
                c.remove(conversationmessage1);
                SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback = (SecureChatService.SecureChatWriteCompletedCallback)d.remove(conversationmessage1.getId());
                if (securechatwritecompletedcallback != null)
                {
                    securechatwritecompletedcallback.a(false, SecureChatService.Protocol.a, SecureChatService.SecureChatWriteCompletedCallback.Status.d, "");
                }
            } while (true);
        }
        break; /* Loop/switch isn't completed */
_L2:
        boolean flag = s.equals("message_state");
        list = null;
        if (flag)
        {
            list = a((MessageStateMessage)conversationmessage);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void a(SecureChatBatchedMessagesManager securechatbatchedmessagesmanager)
    {
        securechatbatchedmessagesmanager.c();
    }

    static Map b(SecureChatBatchedMessagesManager securechatbatchedmessagesmanager)
    {
        return securechatbatchedmessagesmanager.d;
    }

    public static void b()
    {
        com/snapchat/android/util/chat/SecureChatBatchedMessagesManager;
        JVM INSTR monitorenter ;
        a = null;
        com/snapchat/android/util/chat/SecureChatBatchedMessagesManager;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static Set c(SecureChatBatchedMessagesManager securechatbatchedmessagesmanager)
    {
        return securechatbatchedmessagesmanager.e;
    }

    private void c()
    {
        if (!c.isEmpty())
        {
            ArrayList arraylist = new ArrayList(c);
            c.clear();
            HashSet hashset = new HashSet();
            ConversationMessage conversationmessage;
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); Timber.f("SecureChatBatchedMessagesManager", "CHAT-LOG: ATTEMPT sending message as a part of batch over HTTP %s", new Object[] {
    conversationmessage
}))
            {
                conversationmessage = (ConversationMessage)iterator.next();
                if (conversationmessage instanceof ChatMessage)
                {
                    hashset.add(conversationmessage.getHeader().getConvId());
                }
            }

            e.addAll(hashset);
            (new PostChatsTask(arraylist, new SecureChatService.SecureChatWriteCompletedCallback(arraylist, hashset) {

                final List a;
                final Set b;
                final SecureChatBatchedMessagesManager c;

                public void a(boolean flag, SecureChatService.Protocol protocol, SecureChatService.SecureChatWriteCompletedCallback.Status status, String s)
                {
                    Iterator iterator1 = a.iterator();
                    do
                    {
                        if (!iterator1.hasNext())
                        {
                            break;
                        }
                        ConversationMessage conversationmessage1 = (ConversationMessage)iterator1.next();
                        SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback = (SecureChatService.SecureChatWriteCompletedCallback)SecureChatBatchedMessagesManager.b(c).remove(conversationmessage1.getId());
                        if (securechatwritecompletedcallback != null)
                        {
                            securechatwritecompletedcallback.a(flag, SecureChatService.Protocol.a, status, s);
                        }
                    } while (true);
                    SecureChatBatchedMessagesManager.c(c).removeAll(b);
                }

            
            {
                c = SecureChatBatchedMessagesManager.this;
                a = list;
                b = set;
                super();
            }
            })).g();
        }
    }

    public void a(ConversationMessage conversationmessage, SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback)
    {
        if (conversationmessage instanceof ChatMessage)
        {
            String s = conversationmessage.getHeader().getConvId();
            if (e.contains(s))
            {
                securechatwritecompletedcallback.a(false, SecureChatService.Protocol.a, SecureChatService.SecureChatWriteCompletedCallback.Status.e, "");
                return;
            }
        }
        b.removeCallbacksAndMessages(null);
        a(conversationmessage);
        c.add(conversationmessage);
        if (securechatwritecompletedcallback != null)
        {
            d.put(conversationmessage.getId(), securechatwritecompletedcallback);
        }
        b.postDelayed(new Runnable() {

            final SecureChatBatchedMessagesManager a;

            public void run()
            {
                SecureChatBatchedMessagesManager.a(a);
            }

            
            {
                a = SecureChatBatchedMessagesManager.this;
                super();
            }
        }, 500L);
    }
}
