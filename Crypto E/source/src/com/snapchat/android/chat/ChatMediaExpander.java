// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import android.view.View;
import android.widget.ListView;
import com.snapchat.android.model.chat.ChatFeedItem;

public class ChatMediaExpander
{

    private final ListView a;
    private int b;

    public ChatMediaExpander(ListView listview)
    {
        a = listview;
    }

    public void a()
    {
        int i = a.getFirstVisiblePosition();
        int j = a.getLastVisiblePosition();
        for (int k = i; k <= j; k++)
        {
            com.snapchat.android.fragments.chat.ChatConversationAdapter.MessageViewHolder messageviewholder = (com.snapchat.android.fragments.chat.ChatConversationAdapter.MessageViewHolder)a.getChildAt(k - i).getTag();
            if (messageviewholder != null)
            {
                messageviewholder.b();
            }
        }

    }

    public void a(int i)
    {
        b = i;
    }

    public boolean a(ChatFeedItem chatfeeditem, ChatFeedItem chatfeeditem1)
    {
        return chatfeeditem != null && chatfeeditem.ar() || chatfeeditem1 != null && chatfeeditem1.ar();
    }

    public boolean b()
    {
        int i = a.getFirstVisiblePosition();
        int j = a.getLastVisiblePosition();
        for (int k = i; k <= j; k++)
        {
            com.snapchat.android.fragments.chat.ChatConversationAdapter.MessageViewHolder messageviewholder = (com.snapchat.android.fragments.chat.ChatConversationAdapter.MessageViewHolder)a.getChildAt(k - i).getTag();
            if (messageviewholder != null && messageviewholder.C)
            {
                return true;
            }
        }

        return false;
    }
}
