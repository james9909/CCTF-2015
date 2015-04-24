// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.media.MediaPlayer;
import android.widget.MediaController;

// Referenced classes of package com.snapchat.android.ui:
//            TextureVideoView

class a
    implements android.media.redListener
{

    final TextureVideoView a;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        int i;
        TextureVideoView.c(a, 2);
        TextureVideoView.a(a, true);
        TextureVideoView.b(a, false);
        TextureVideoView.c(a, false);
        if (TextureVideoView.c(a) != null)
        {
            TextureVideoView.c(a).onPrepared(TextureVideoView.d(a));
        }
        if (TextureVideoView.e(a) != null)
        {
            TextureVideoView.e(a).setEnabled(true);
        }
        TextureVideoView.a(a, mediaplayer.getVideoWidth());
        TextureVideoView.b(a, mediaplayer.getVideoHeight());
        i = TextureVideoView.f(a);
        if (i != 0)
        {
            a.seekTo(i);
        }
        if (TextureVideoView.a(a) == 0 || TextureVideoView.b(a) == 0) goto _L2; else goto _L1
_L1:
        if (TextureVideoView.g(a) != 3) goto _L4; else goto _L3
_L3:
        a.start();
        if (TextureVideoView.e(a) != null)
        {
            TextureVideoView.e(a).show();
        }
_L6:
        return;
_L4:
        if (!a.isPlaying() && (i != 0 || a.getCurrentPosition() > 0) && TextureVideoView.e(a) != null)
        {
            TextureVideoView.e(a).show(0);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (TextureVideoView.g(a) == 3)
        {
            a.start();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    r(TextureVideoView texturevideoview)
    {
        a = texturevideoview;
        super();
    }
}
