// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import com.snapchat.android.model.server.ServerCashTransaction;
import com.snapchat.data.gson.GenericSnap;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ServerChatConversation, ChatMessage

public static class 
{

    public ServerCashTransaction cash_transaction;
    public ChatMessage chat_message;
    public String iter_token;
    public GenericSnap snap;

    public String toString()
    {
        return (new StringBuilder()).append("ChatOrSnapMessage{snap=").append(snap).append(", chat_message=").append(chat_message).append(", cash_transaction=").append(cash_transaction).append(", iter_token='").append(iter_token).append('\'').append('}').toString();
    }

    public ()
    {
    }
}
