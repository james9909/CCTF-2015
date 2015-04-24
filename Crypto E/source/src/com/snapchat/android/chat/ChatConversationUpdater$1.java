// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;

// Referenced classes of package com.snapchat.android.chat:
//            ChatConversationUpdater, ChatGapDetector

class a
    implements Runnable
{

    final String a;
    final ChatConversationUpdater b;

    public void run()
    {
        if (ChatConversationUpdater.a(b).b(a))
        {
            ChatConversationUpdater.b(b).a(a, true);
        }
    }

    askExecutor(ChatConversationUpdater chatconversationupdater, String s)
    {
        b = chatconversationupdater;
        a = s;
        super();
    }
}
