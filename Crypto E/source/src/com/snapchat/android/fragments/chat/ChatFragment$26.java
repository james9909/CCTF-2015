// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import com.snapchat.android.chat.ChatMessageReleaser;
import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements Runnable
{

    final ChatConversation a;
    final ChatFragment b;

    public void run()
    {
        if (ChatFragment.M(b).c(a))
        {
            ChatFragment.M(b).a(ChatFragment.h(b), com.snapchat.android.model.server.chat.eleaseType.RELEASE);
        }
    }

    e.ReleaseType(ChatFragment chatfragment, ChatConversation chatconversation)
    {
        b = chatfragment;
        a = chatconversation;
        super();
    }
}
