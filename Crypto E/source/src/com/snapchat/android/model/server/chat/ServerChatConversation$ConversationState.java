// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import java.util.Map;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ServerChatConversation

public static class 
{

    public Map user_chat_releases;
    public Map user_sequences;
    public Map user_snap_releases;

    public String toString()
    {
        return (new StringBuilder()).append("ConversationState{user_sequences=").append(user_sequences).append(", user_chat_releases=").append(user_chat_releases).append(", user_snap_releases=").append(user_snap_releases).append('}').toString();
    }

    public ()
    {
    }
}
