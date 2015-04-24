// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.video;

import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.task.VideoMediaSource;
import com.snapchat.videotranscoder.utils.Debug;
import com.snapchat.videotranscoder.utils.VerboseLogging;

// Referenced classes of package com.snapchat.videotranscoder.video:
//            VideoExtractor, VideoDecoder, VideoEncoder

public class VideoProvider extends MediaProvider
{
    class VideoDecoderDone
        implements StageDoneCallback
    {

        final VideoProvider a;

        public void a()
        {
            VideoProvider.b(a, true);
        }

        private VideoDecoderDone()
        {
            a = VideoProvider.this;
            super();
        }

    }

    class VideoExtractorDone
        implements StageDoneCallback
    {

        final VideoProvider a;

        public void a()
        {
            VideoProvider.a(a, true);
        }

        private VideoExtractorDone()
        {
            a = VideoProvider.this;
            super();
        }

    }


    private VideoExtractor b;
    private VideoDecoder c;
    private boolean d;
    private boolean g;
    private long h;

    public VideoProvider(Encoder encoder, VideoMediaSource videomediasource, StageDoneCallback stagedonecallback)
    {
        super(encoder, stagedonecallback);
        d = false;
        g = false;
        b = new VideoExtractor(videomediasource.b(), new VideoExtractorDone());
        c = new VideoDecoder(b.b(), new VideoDecoderDone(), videomediasource.c(), videomediasource.d());
        b.a(c.g());
        c.a((VideoEncoder)a);
        c.a(videomediasource.e());
        h = 1000L * videomediasource.a();
    }

    static boolean a(VideoProvider videoprovider, boolean flag)
    {
        videoprovider.d = flag;
        return flag;
    }

    static boolean b(VideoProvider videoprovider, boolean flag)
    {
        videoprovider.g = flag;
        return flag;
    }

    public void a()
    {
        VerboseLogging.a("VideoProvider", "releasing video extractor");
        b.f();
        b = null;
        VerboseLogging.a("VideoProvider", "releasing video decoder");
        c.f();
        c = null;
        super.a();
    }

    public int b()
    {
        return (int)((100L * b.g()) / h);
    }

    public void d()
    {
        boolean flag = true;
        boolean flag1 = false;
        boolean flag2;
        if (!f)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        Debug.a(flag2);
        if (!d)
        {
            VerboseLogging.a("VideoProvider", "Calling video extractor");
            b.d();
            VerboseLogging.a("VideoProvider", "done Calling video extractor");
            flag = false;
        }
        if (!g)
        {
            VerboseLogging.a("VideoProvider", "Calling video decoder");
            c.d();
            VerboseLogging.a("VideoProvider", "done Calling video decoder");
        } else
        {
            flag1 = flag;
        }
        if (flag1)
        {
            h();
        }
    }
}
