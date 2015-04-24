// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import android.text.style.URLSpan;
import android.view.View;
import com.snapchat.android.model.chat.ISavableChatFeedItem;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatLinkClickedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.util.chat:
//            UrlType

public class SnapchatUrlSpan extends URLSpan
{

    private ISavableChatFeedItem a;
    private UrlType b;

    public SnapchatUrlSpan(String s, ISavableChatFeedItem isavablechatfeeditem, UrlType urltype)
    {
        super(s);
        a = isavablechatfeeditem;
        b = urltype;
    }

    public UrlType a()
    {
        return b;
    }

    public ISavableChatFeedItem b()
    {
        return a;
    }

    public void onClick(View view)
    {
        BusProvider.a().a(new ChatLinkClickedEvent(this));
    }
}
