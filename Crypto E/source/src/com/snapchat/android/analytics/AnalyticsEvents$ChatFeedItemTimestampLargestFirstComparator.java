// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.Comparator;

// Referenced classes of package com.snapchat.android.analytics:
//            AnalyticsEvents

static class 
    implements Comparator
{

    public int a(ChatFeedItem chatfeeditem, ChatFeedItem chatfeeditem1)
    {
        return (int)((chatfeeditem1.ae() - chatfeeditem.ae()) % 0x7fffffffL);
    }

    public int compare(Object obj, Object obj1)
    {
        return a((ChatFeedItem)obj, (ChatFeedItem)obj1);
    }

    ()
    {
    }
}
