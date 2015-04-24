// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.chat:
//            ChatConversationUpdater, SendingMailman

class a
    implements Runnable
{

    final ChatConversation a;
    final ChatConversationUpdater b;

    public void run()
    {
        a.a(com.snapchat.android.model.chat.umberState.UPDATED);
        a.a(0);
        ChatConversationUpdater.c(b).a(a, a.X());
        ChatConversationUpdater.c(b).d(a);
    }

    uenceNumberState(ChatConversationUpdater chatconversationupdater, ChatConversation chatconversation)
    {
        b = chatconversationupdater;
        a = chatconversation;
        super();
    }
}
