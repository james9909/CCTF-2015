// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.media.MediaPlayer;
import android.widget.MediaController;

// Referenced classes of package com.snapchat.android.ui:
//            TextureVideoView

class a
    implements android.media.etionListener
{

    final TextureVideoView a;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        TextureVideoView.c(a, 5);
        TextureVideoView.d(a, 5);
        if (TextureVideoView.e(a) != null)
        {
            TextureVideoView.e(a).hide();
        }
        if (TextureVideoView.h(a) != null)
        {
            TextureVideoView.h(a).onCompletion(TextureVideoView.d(a));
        }
    }

    ner(TextureVideoView texturevideoview)
    {
        a = texturevideoview;
        super();
    }
}
