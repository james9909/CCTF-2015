// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import android.media.MediaPlayer;
import com.snapchat.android.Timber;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.util.Resolution;

// Referenced classes of package com.snapchat.android.rendering.video:
//            VideoSnapRenderer

class a
    implements android.media.edListener
{

    final VideoSnapRenderer a;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        String s = VideoSnapRenderer.e();
        Object aobj[] = new Object[4];
        aobj[0] = VideoSnapRenderer.b(a).d();
        aobj[1] = Integer.valueOf(mediaplayer.getDuration());
        aobj[2] = Integer.valueOf(mediaplayer.getVideoWidth());
        aobj[3] = Integer.valueOf(mediaplayer.getVideoHeight());
        Timber.c(s, "Prepared %s, duration:%d width:%d height:%d", aobj);
        VideoSnapRenderer.a(a, mediaplayer);
        VideoSnapRenderer.d(a).setLooping(VideoSnapRenderer.c(a));
        if (VideoSnapRenderer.b(a).ao() == 2)
        {
            VideoSnapRenderer.d(a).setVolume(0.0F, 0.0F);
        }
        Resolution resolution = new Resolution(mediaplayer.getVideoWidth(), mediaplayer.getVideoHeight());
        VideoSnapRenderer.a(a, resolution);
        VideoSnapRenderer.a(a, VideoSnapRenderer.b(a), resolution);
        VideoSnapRenderer.e(a).a(VideoSnapRenderer.d(a).getDuration(), VideoSnapRenderer.d(a).getVideoWidth(), VideoSnapRenderer.d(a).getVideoHeight());
        if (android.os.T >= 17)
        {
            VideoSnapRenderer.d(a).setOnInfoListener(a.a);
            return;
        } else
        {
            VideoSnapRenderer.a(a);
            return;
        }
    }

    ererListener(VideoSnapRenderer videosnaprenderer)
    {
        a = videosnaprenderer;
        super();
    }
}
