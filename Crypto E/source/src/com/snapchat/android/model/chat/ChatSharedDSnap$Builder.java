// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import com.snapchat.android.model.server.chat.ChatMessage;

// Referenced classes of package com.snapchat.android.model.chat:
//            ChatSharedDSnap

public static class 
{

    private ChatMessage mChatMessage;

    static ChatMessage a( )
    {
        return .mChatMessage;
    }

    public mChatMessage a(ChatMessage chatmessage)
    {
        mChatMessage = chatmessage;
        return this;
    }

    public ChatSharedDSnap a()
    {
        return new ChatSharedDSnap(this);
    }

    public ()
    {
    }
}
