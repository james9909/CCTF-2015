// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.server.chat.ChatMessage;
import com.snapchat.android.util.LocalizationUtils;

// Referenced classes of package com.snapchat.android.model.chat:
//            Chat, ChatConversation

public class ChatUnknown extends Chat
{
    public static class Builder extends Chat.Builder
    {

        public ChatUnknown a()
        {
            return new ChatUnknown(this);
        }

        public Builder(String s1, String s2)
        {
            super(s1, s2);
        }
    }


    private static final String TYPE = "unknown";

    private ChatUnknown(Builder builder)
    {
        super(builder);
        D();
    }


    public ChatUnknown(ChatMessage chatmessage)
    {
        super(chatmessage);
        D();
    }

    private void D()
    {
        Object aobj[] = new Object[1];
        aobj[0] = J();
        mStatusText = LocalizationUtils.a(0x7f0c0218, aobj);
        B();
    }

    public boolean X()
    {
        return true;
    }

    public int a(ChatConversation chatconversation)
    {
        return ChatFeedItem.FeedIconPriority.MOST_RECENT.ordinal();
    }

    public String a()
    {
        return SnapchatApplication.e().getResources().getString(0x7f0c018b);
    }

    public long b(ChatConversation chatconversation)
    {
        return ae();
    }

    public boolean c()
    {
        return false;
    }

    public String e()
    {
        return "unknown";
    }

    public boolean j()
    {
        return true;
    }

    public void s()
    {
    }
}
