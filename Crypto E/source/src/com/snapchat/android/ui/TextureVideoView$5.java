// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.media.MediaPlayer;
import android.widget.MediaController;

// Referenced classes of package com.snapchat.android.ui:
//            TextureVideoView

class a
    implements android.media.Listener
{

    final TextureVideoView a;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        TextureVideoView.c(a, -1);
        TextureVideoView.d(a, -1);
        if (TextureVideoView.e(a) != null)
        {
            TextureVideoView.e(a).hide();
        }
        if (TextureVideoView.j(a) != null)
        {
            if (!TextureVideoView.j(a).onError(TextureVideoView.d(a), i, j));
        }
        return true;
    }

    (TextureVideoView texturevideoview)
    {
        a = texturevideoview;
        super();
    }
}
