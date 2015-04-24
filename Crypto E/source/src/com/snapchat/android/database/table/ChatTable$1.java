// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.chat.FeedIconManager;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.database.table:
//            ChatTable

static final class b
    implements Runnable
{

    final Chat a;
    final String b;

    public void run()
    {
        if (a.K().equals(com.snapchat.android.model.chat.FeedItem.SendReceiveStatus.SENDING))
        {
            a.a(com.snapchat.android.model.chat.FeedItem.SendReceiveStatus.FAILED);
            com.snapchat.android.model.chat.ChatConversation chatconversation = ConversationUtils.a(b);
            if (chatconversation != null)
            {
                FeedIconManager.a().a(chatconversation, false);
            }
            BusProvider.a().a(new UpdateFeedEvent());
            BusProvider.a().a(new ChatUpdatedEvent(a.I(), a.d()));
        }
    }

    ent(Chat chat, String s)
    {
        a = chat;
        b = s;
        super();
    }
}
