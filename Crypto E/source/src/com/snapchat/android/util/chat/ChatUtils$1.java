// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.util.chat:
//            ChatUtils

static final class a
    implements Runnable
{

    final ChatConversation a;

    public void run()
    {
        LoadConversationPageTaskExecutor.a().a(a.u(), false);
    }

    ation(ChatConversation chatconversation)
    {
        a = chatconversation;
        super();
    }
}
