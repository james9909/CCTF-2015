// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import android.content.res.Resources;
import android.view.View;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.server.chat.ChatMessage;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.model.chat:
//            Chat, ChatConversation

public class ChatScreenshot extends Chat
{
    public static class Builder extends Chat.Builder
    {

        public ChatScreenshot a()
        {
            return new ChatScreenshot(this);
        }

        public Builder(String s, String s1)
        {
            super(s, s1);
        }
    }


    public static final String TYPE = "screenshot";

    private ChatScreenshot(Builder builder)
    {
        super(builder);
        mStatusText = SnapchatApplication.e().getString(0x7f0c018b).toUpperCase(Locale.getDefault());
    }


    public ChatScreenshot(ChatMessage chatmessage)
    {
        super(chatmessage);
        mStatusText = SnapchatApplication.e().getString(0x7f0c018b).toUpperCase(Locale.getDefault());
    }

    public boolean X()
    {
        return true;
    }

    public int a(ChatConversation chatconversation)
    {
        return ChatFeedItem.FeedIconPriority.MOST_RECENT.ordinal();
    }

    public ChatFeedItem.FeedIconResource a(View view, ChatConversation chatconversation)
    {
        super.a(view, chatconversation);
        return new ChatFeedItem.FeedIconResource(0x7f020036);
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
        return "screenshot";
    }

    public boolean j()
    {
        return false;
    }
}
