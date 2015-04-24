// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.rendering;

import android.util.Log;
import com.snapchat.videotranscoder.audio.AudioExtractor;
import com.snapchat.videotranscoder.audio.AudioTrackDecoder;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.task.VideoMediaSource;
import com.snapchat.videotranscoder.utils.Utils;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.VideoExtractor;

// Referenced classes of package com.snapchat.videotranscoder.rendering:
//            VideoFilterDecoder

public class VideoFilterRenderer
{
    class AudioDecoderDone
        implements StageDoneCallback
    {

        final VideoFilterRenderer a;

        public void a()
        {
            VideoFilterRenderer.a(a, true);
        }

        private AudioDecoderDone()
        {
            a = VideoFilterRenderer.this;
            super();
        }

    }

    class AudioExtractorDone
        implements StageDoneCallback
    {

        final VideoFilterRenderer a;

        public void a()
        {
            VideoFilterRenderer.b(a, true);
        }

        private AudioExtractorDone()
        {
            a = VideoFilterRenderer.this;
            super();
        }

    }

    class VideoExtractorDone
        implements StageDoneCallback
    {

        final VideoFilterRenderer a;

        public void a()
        {
            VideoFilterRenderer.c(a, true);
        }

        private VideoExtractorDone()
        {
            a = VideoFilterRenderer.this;
            super();
        }

    }

    class VideoFilterDecoderDone
        implements StageDoneCallback
    {

        final VideoFilterRenderer a;

        public void a()
        {
            VideoFilterRenderer.d(a, true);
        }

        private VideoFilterDecoderDone()
        {
            a = VideoFilterRenderer.this;
            super();
        }

    }


    private VideoMediaSource a;
    private InputSurface b;
    private VideoExtractor c;
    private VideoFilterDecoder d;
    private AudioTrackDecoder e;
    private AudioExtractor f;
    private volatile boolean g;
    private volatile boolean h;
    private volatile boolean i;
    private volatile boolean j;
    private volatile boolean k;
    private volatile boolean l;
    private Thread m;
    private Thread n;
    private boolean o;
    private boolean p;
    private com.snapchat.videotranscoder.video.ShaderText.Type q;
    private com.snapchat.videotranscoder.video.ShaderText.Type r;
    private float s;

    public VideoFilterRenderer(VideoMediaSource videomediasource, com.snapchat.videotranscoder.video.ShaderText.Type type, com.snapchat.videotranscoder.video.ShaderText.Type type1, InputSurface inputsurface)
    {
        g = false;
        h = false;
        i = false;
        j = false;
        k = false;
        l = false;
        m = null;
        n = null;
        o = false;
        p = false;
        q = com.snapchat.videotranscoder.video.ShaderText.Type.a;
        r = com.snapchat.videotranscoder.video.ShaderText.Type.a;
        s = 0.0F;
        if (!(new Utils()).a("VideoFilterRenderer"))
        {
            throw new SetupException("There is no looper thread");
        }
        a = videomediasource;
        b = inputsurface;
        b.b();
        Log.d("VideoFilterRenderer", "Setting up video components of renderer");
        c = new VideoExtractor(a.b(), new VideoExtractorDone());
        d = new VideoFilterDecoder(c.b(), new VideoFilterDecoderDone(), videomediasource.c());
        c.a(d.g());
        d.a(inputsurface);
        if (videomediasource.g() == com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource.a)
        {
            Log.d("VideoFilterRenderer", "Setting up audio components of renderer");
            f = new AudioExtractor(videomediasource.b(), new AudioExtractorDone());
            e = new AudioTrackDecoder(f.b(), new AudioDecoderDone());
            f.a(e.g());
        }
    }

    static boolean a(VideoFilterRenderer videofilterrenderer)
    {
        return videofilterrenderer.i;
    }

    static boolean a(VideoFilterRenderer videofilterrenderer, boolean flag)
    {
        videofilterrenderer.h = flag;
        return flag;
    }

    static boolean b(VideoFilterRenderer videofilterrenderer)
    {
        return videofilterrenderer.h;
    }

    static boolean b(VideoFilterRenderer videofilterrenderer, boolean flag)
    {
        videofilterrenderer.g = flag;
        return flag;
    }

    static AudioExtractor c(VideoFilterRenderer videofilterrenderer)
    {
        return videofilterrenderer.f;
    }

    static boolean c(VideoFilterRenderer videofilterrenderer, boolean flag)
    {
        videofilterrenderer.j = flag;
        return flag;
    }

    static boolean d(VideoFilterRenderer videofilterrenderer)
    {
        return videofilterrenderer.g;
    }

    static boolean d(VideoFilterRenderer videofilterrenderer, boolean flag)
    {
        videofilterrenderer.k = flag;
        return flag;
    }

    static AudioTrackDecoder e(VideoFilterRenderer videofilterrenderer)
    {
        return videofilterrenderer.e;
    }

    private boolean e()
    {
        return j && h && g && k;
    }

    static boolean e(VideoFilterRenderer videofilterrenderer, boolean flag)
    {
        videofilterrenderer.l = flag;
        return flag;
    }

    private void f()
    {
        if (o && d != null && !i)
        {
            d.a(q, r);
        }
        if (p && d != null && !i)
        {
            d.a(s);
        }
    }

    static boolean f(VideoFilterRenderer videofilterrenderer)
    {
        return videofilterrenderer.j;
    }

    static VideoExtractor g(VideoFilterRenderer videofilterrenderer)
    {
        return videofilterrenderer.c;
    }

    static VideoFilterDecoder h(VideoFilterRenderer videofilterrenderer)
    {
        return videofilterrenderer.d;
    }

    public void a()
    {
        if (c != null)
        {
            VerboseLogging.a("VideoFilterRenderer", "releasing video extractor");
            c.f();
            c = null;
        }
        if (d != null)
        {
            VerboseLogging.a("VideoFilterRenderer", "releasing rendering decoder");
            d.f();
            d = null;
        }
        if (f != null)
        {
            VerboseLogging.a("VideoFilterRenderer", "releasing audio extractor");
            f.f();
            f = null;
        }
        if (e != null)
        {
            VerboseLogging.a("VideoFilterRenderer", "releasing audio track decoder");
            e.f();
            e = null;
        }
    }

    public void a(float f1)
    {
        if (e != null)
        {
            e.a(f1);
        }
    }

    public void a(com.snapchat.videotranscoder.task.Task.ProgressUpdateCallback progressupdatecallback)
    {
        if (m != null)
        {
            m.start();
        }
        if (n != null)
        {
            n.start();
        }
        do
        {
            if (i && e())
            {
                break;
            }
            f();
            if (d != null && !k)
            {
                VerboseLogging.a("VideoFilterRenderer", "Calling rendering decoder");
                d.d();
                VerboseLogging.a("VideoFilterRenderer", "Done calling rendering decoder");
            }
            if (e() && !i && !l)
            {
                c();
                l = true;
            }
            if (j && d != null)
            {
                d.e();
            }
        } while (true);
    }

    public void a(com.snapchat.videotranscoder.video.ShaderText.Type type, com.snapchat.videotranscoder.video.ShaderText.Type type1)
    {
        o = true;
        q = type;
        r = type1;
    }

    public void b()
    {
        m = new Thread(new Runnable() {

            final VideoFilterRenderer a;

            public void run()
            {
                try
                {
                    do
                    {
                        if (VideoFilterRenderer.a(a) && VideoFilterRenderer.b(a))
                        {
                            break;
                        }
                        if (VideoFilterRenderer.c(a) != null && !VideoFilterRenderer.d(a))
                        {
                            VerboseLogging.a("VideoFilterRenderer", "Calling audio extractor");
                            VideoFilterRenderer.c(a).d();
                            VerboseLogging.a("VideoFilterRenderer", "done Calling audio extractor");
                        }
                        if (VideoFilterRenderer.e(a) != null && !VideoFilterRenderer.b(a))
                        {
                            VerboseLogging.a("VideoFilterRenderer", "Calling audio decoder");
                            VideoFilterRenderer.e(a).d();
                            VerboseLogging.a("VideoFilterRenderer", "done Calling audio decoder");
                        }
                    } while (true);
                }
                catch (TranscodingException transcodingexception)
                {
                    transcodingexception.printStackTrace();
                }
                catch (IllegalStateException illegalstateexception)
                {
                    illegalstateexception.printStackTrace();
                    return;
                }
            }

            
            {
                a = VideoFilterRenderer.this;
                super();
            }
        });
        n = new Thread(new Runnable() {

            final VideoFilterRenderer a;

            public void run()
            {
                try
                {
                    do
                    {
                        if (VideoFilterRenderer.a(a) && VideoFilterRenderer.f(a))
                        {
                            break;
                        }
                        if (VideoFilterRenderer.g(a) != null && !VideoFilterRenderer.f(a))
                        {
                            VerboseLogging.a("VideoFilterRenderer", "Calling video extractor");
                            VideoFilterRenderer.g(a).d();
                            VerboseLogging.a("VideoFilterRenderer", "Done calling video extractor");
                        }
                        if (VideoFilterRenderer.f(a) && !VideoFilterRenderer.a(a))
                        {
                            VideoFilterRenderer.g(a).e();
                        }
                    } while (true);
                }
                catch (TranscodingException transcodingexception)
                {
                    transcodingexception.printStackTrace();
                }
                catch (IllegalStateException illegalstateexception)
                {
                    illegalstateexception.printStackTrace();
                    return;
                }
            }

            
            {
                a = VideoFilterRenderer.this;
                super();
            }
        });
    }

    public void b(float f1)
    {
        p = true;
        s = f1;
    }

    public void c()
    {
        (new Thread(new Runnable() {

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

            
            {
                a = VideoFilterRenderer.this;
                super();
            }
        })).start();
    }

    public void d()
    {
        i = true;
        c.c();
        f.c();
    }
}
