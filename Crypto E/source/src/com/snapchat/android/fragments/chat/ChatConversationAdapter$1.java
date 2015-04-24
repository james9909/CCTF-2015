// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.media.MediaPlayer;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatConversationAdapter

class a
    implements android.media.ener
{

    final ChatConversationAdapter a;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        mediaplayer.seekTo(0);
        mediaplayer.setLooping(true);
    }

    (ChatConversationAdapter chatconversationadapter)
    {
        a = chatconversationadapter;
        super();
    }
}
