// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.audio;

import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.task.VideoMediaSource;
import com.snapchat.videotranscoder.utils.Debug;
import com.snapchat.videotranscoder.utils.VerboseLogging;

// Referenced classes of package com.snapchat.videotranscoder.audio:
//            AudioExtractor, AudioDecoder

public class AudioProvider extends MediaProvider
{
    class AudioDecoderDone
        implements StageDoneCallback
    {

        final AudioProvider a;

        public void a()
        {
            AudioProvider.b(a, true);
        }

        private AudioDecoderDone()
        {
            a = AudioProvider.this;
            super();
        }

    }

    class AudioExtractorDone
        implements StageDoneCallback
    {

        final AudioProvider a;

        public void a()
        {
            AudioProvider.a(a, true);
        }

        private AudioExtractorDone()
        {
            a = AudioProvider.this;
            super();
        }

    }


    private AudioExtractor b;
    private AudioDecoder c;
    private boolean d;
    private boolean g;
    private long h;

    public AudioProvider(Encoder encoder, VideoMediaSource videomediasource, StageDoneCallback stagedonecallback)
    {
        super(encoder, stagedonecallback);
        d = false;
        g = false;
        b = new AudioExtractor(videomediasource.b(), new AudioExtractorDone());
        c = new AudioDecoder(b.b(), new AudioDecoderDone());
        b.a(c.g());
        c.a(a);
        h = 1000L * videomediasource.a();
    }

    static boolean a(AudioProvider audioprovider, boolean flag)
    {
        audioprovider.d = flag;
        return flag;
    }

    static boolean b(AudioProvider audioprovider, boolean flag)
    {
        audioprovider.g = flag;
        return flag;
    }

    public void a()
    {
        VerboseLogging.a("AudioProvider", "releasing audio extractor");
        b.f();
        b = null;
        VerboseLogging.a("AudioProvider", "releasing audio, decoder");
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
            VerboseLogging.a("AudioProvider", "Calling audio extractor");
            b.d();
            VerboseLogging.a("AudioProvider", "done Calling audio extractor");
            flag = false;
        }
        if (!g)
        {
            VerboseLogging.a("AudioProvider", "Calling audio decoder");
            c.d();
            VerboseLogging.a("AudioProvider", "done Calling audio decoder");
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
