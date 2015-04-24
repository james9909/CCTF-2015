// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.view.View;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFeedItemViewingSession

public class ChatImageViewingSession
    implements ChatFeedItemViewingSession
{

    private final ChatConversationAdapter.MessageViewHolder a;

    public ChatImageViewingSession(View view)
    {
        a = (ChatConversationAdapter.MessageViewHolder)view.getTag();
    }

    public void a()
    {
        ViewUtils.a(a.E, 150);
    }

    public void b()
    {
        ViewUtils.b(a.E, 150);
    }
}
