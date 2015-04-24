// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import java.util.List;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ServerChatConversation, SignedPayload

public class this._cls0
{

    public List messages;
    public SignedPayload messaging_auth;
    final ServerChatConversation this$0;

    public List getMessages()
    {
        return messages;
    }

    public String toString()
    {
        return (new StringBuilder()).append("ChatConversationMessages{messaging_auth=").append(messaging_auth).append(", messages=").append(messages).append('}').toString();
    }

    public ()
    {
        this$0 = ServerChatConversation.this;
        super();
    }
}
