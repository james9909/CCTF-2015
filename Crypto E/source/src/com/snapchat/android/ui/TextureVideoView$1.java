// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.media.MediaPlayer;

// Referenced classes of package com.snapchat.android.ui:
//            TextureVideoView

class a
    implements android.media.SizeChangedListener
{

    final TextureVideoView a;

    public void onVideoSizeChanged(MediaPlayer mediaplayer, int i, int j)
    {
        TextureVideoView.a(a, mediaplayer.getVideoWidth());
        TextureVideoView.b(a, mediaplayer.getVideoHeight());
        if (TextureVideoView.a(a) != 0 && TextureVideoView.b(a) != 0)
        {
            a.requestLayout();
        }
    }

    dListener(TextureVideoView texturevideoview)
    {
        a = texturevideoview;
        super();
    }
}
