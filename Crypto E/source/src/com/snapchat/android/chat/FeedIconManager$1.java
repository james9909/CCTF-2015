// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.Comparator;

// Referenced classes of package com.snapchat.android.chat:
//            FeedIconManager

class a
    implements Comparator
{

    final ChatConversation a;
    final FeedIconManager b;

    public int a(ChatFeedItem chatfeeditem, ChatFeedItem chatfeeditem1)
    {
        long l = chatfeeditem.c(a);
        long l1 = chatfeeditem1.c(a) - l;
        if (l1 < 0L)
        {
            return -1;
        }
        return l1 <= 0L ? 0 : 1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((ChatFeedItem)obj, (ChatFeedItem)obj1);
    }

    tion(FeedIconManager feediconmanager, ChatConversation chatconversation)
    {
        b = feediconmanager;
        a = chatconversation;
        super();
    }
}
