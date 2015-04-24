// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.model.server.chat.ConversationMessage;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.util.chat:
//            SecureChatBatchedMessagesManager

class b
    implements mpletedCallback
{

    final List a;
    final Set b;
    final SecureChatBatchedMessagesManager c;

    public void a(boolean flag, mpletedCallback.Status status, mpletedCallback.Status status1, String s)
    {
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ConversationMessage conversationmessage = (ConversationMessage)iterator.next();
            mpletedCallback mpletedcallback = (mpletedCallback)SecureChatBatchedMessagesManager.b(c).remove(conversationmessage.getId());
            if (mpletedcallback != null)
            {
                mpletedcallback.a(flag, mpletedCallback.a, status1, s);
            }
        } while (true);
        SecureChatBatchedMessagesManager.c(c).removeAll(b);
    }

    mpletedCallback.Status(SecureChatBatchedMessagesManager securechatbatchedmessagesmanager, List list, Set set)
    {
        c = securechatbatchedmessagesmanager;
        a = list;
        b = set;
        super();
    }
}
