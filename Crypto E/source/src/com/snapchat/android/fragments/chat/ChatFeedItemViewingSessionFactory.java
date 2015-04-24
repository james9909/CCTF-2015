// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.view.View;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatSharedDSnap;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatVideoViewingSession, ChatImageViewingSession, ChatFeedItemViewingSession

public class ChatFeedItemViewingSessionFactory
{

    public ChatFeedItemViewingSessionFactory()
    {
    }

    private ChatFeedItemViewingSession a(ChatSharedDSnap chatshareddsnap, View view)
    {
        if (chatshareddsnap.G() == com.snapchat.android.model.chat.ChatSharedDSnap.MediaType.VIDEO)
        {
            return new ChatVideoViewingSession(view);
        } else
        {
            return new ChatImageViewingSession(view);
        }
    }

    public ChatFeedItemViewingSession a(ChatFeedItem chatfeeditem, View view)
    {
        if (chatfeeditem instanceof ChatSharedDSnap)
        {
            return a((ChatSharedDSnap)chatfeeditem, view);
        } else
        {
            return null;
        }
    }
}
