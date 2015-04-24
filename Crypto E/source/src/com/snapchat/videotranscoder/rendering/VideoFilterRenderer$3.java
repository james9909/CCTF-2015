// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.rendering;

import com.snapchat.videotranscoder.audio.AudioExtractor;
import com.snapchat.videotranscoder.audio.AudioTrackDecoder;

// Referenced classes of package com.snapchat.videotranscoder.rendering:
//            VideoFilterRenderer, VideoFilterDecoder

class a
    implements Runnable
{

    final VideoFilterRenderer a;

    public void run()
    {
        if (VideoFilterRenderer.c(a) != null)
        {
            VideoFilterRenderer.c(a).e();
        }
        if (VideoFilterRenderer.e(a) != null)
        {
            VideoFilterRenderer.e(a).e();
        }
        if (VideoFilterRenderer.h(a) != null)
        {
            VideoFilterRenderer.h(a).c();
        }
        VideoFilterRenderer.a(a, false);
        VideoFilterRenderer.b(a, false);
        VideoFilterRenderer.c(a, false);
        VideoFilterRenderer.d(a, false);
        VideoFilterRenderer.e(a, false);
    }

    (VideoFilterRenderer videofilterrenderer)
    {
        a = videofilterrenderer;
        super();
    }
}
