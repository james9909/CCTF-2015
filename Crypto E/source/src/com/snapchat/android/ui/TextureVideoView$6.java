// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.media.MediaPlayer;

// Referenced classes of package com.snapchat.android.ui:
//            TextureVideoView

class a
    implements android.media.ringUpdateListener
{

    final TextureVideoView a;

    public void onBufferingUpdate(MediaPlayer mediaplayer, int i)
    {
        TextureVideoView.e(a, i);
    }

    Listener(TextureVideoView texturevideoview)
    {
        a = texturevideoview;
        super();
    }
}
