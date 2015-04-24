// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.view.View;
import com.snapchat.android.ui.TextureVideoView;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFeedItemViewingSession

public class ChatVideoViewingSession
    implements ChatFeedItemViewingSession
{

    private final ChatConversationAdapter.MessageViewHolder a;

    public ChatVideoViewingSession(View view)
    {
        a = (ChatConversationAdapter.MessageViewHolder)view.getTag();
        if (a.o != null)
        {
            a.o.seekTo(0);
        }
    }

    public void a()
    {
        ViewUtils.a(a.E, 150);
        if (a.o != null && !a.o.isPlaying())
        {
            a.o.start();
        }
    }

    public void b()
    {
        ViewUtils.b(a.E, 150);
        if (a.o != null)
        {
            a.o.pause();
            a.o.seekTo(0);
        }
    }
}
