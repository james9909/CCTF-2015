// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import android.media.MediaPlayer;
import com.snapchat.android.Timber;
import com.snapchat.android.model.ReceivedSnap;

// Referenced classes of package com.snapchat.android.rendering.video:
//            VideoSnapRenderer

class a
    implements android.media.tionListener
{

    final VideoSnapRenderer a;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        String s = VideoSnapRenderer.e();
        Object aobj[] = new Object[1];
        aobj[0] = VideoSnapRenderer.b(a).d();
        Timber.c(s, "Completed %s", aobj);
        VideoSnapRenderer.e(a).b();
    }

    ererListener(VideoSnapRenderer videosnaprenderer)
    {
        a = videosnaprenderer;
        super();
    }
}
