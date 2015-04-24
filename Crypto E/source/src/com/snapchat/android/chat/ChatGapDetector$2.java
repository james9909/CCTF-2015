// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.snapchat.android.chat:
//            ChatGapDetector

class a
    implements Runnable
{

    final String a;
    final ChatGapDetector b;

    public void run()
    {
        ChatGapDetector.a(b).remove(a);
        if (b.c(a))
        {
            Timber.f("ChatGapDetector", "CHAT-LOG: Executing conversation refresh", new Object[0]);
            ChatGapDetector.b(b).a(a, false);
            return;
        } else
        {
            Timber.f("ChatGapDetector", "CHAT-LOG: Not executing conversation refresh because connection seqNum gap is filled", new Object[0]);
            return;
        }
    }

    ionPageTaskExecutor(ChatGapDetector chatgapdetector, String s)
    {
        b = chatgapdetector;
        a = s;
        super();
    }
}
