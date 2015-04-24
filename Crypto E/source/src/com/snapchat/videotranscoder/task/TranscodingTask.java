// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;

import android.util.Log;
import com.snapchat.videotranscoder.audio.AudioProvider;
import com.snapchat.videotranscoder.audio.SilenceProvider;
import com.snapchat.videotranscoder.mp4.MP4Metadata;
import com.snapchat.videotranscoder.mp4.SnapSegments;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.Mixer;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.pipeline.Transcoder;
import com.snapchat.videotranscoder.utils.Debug;
import com.snapchat.videotranscoder.utils.Utils;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.ImageProvider;
import com.snapchat.videotranscoder.video.VideoProvider;
import java.io.IOException;

// Referenced classes of package com.snapchat.videotranscoder.task:
//            Task, ImageMediaSource, TranscodingConfiguration, VideoMediaSource, 
//            MediaSource, TranscodingException, SetupException

public class TranscodingTask extends Task
{
    class ConcatenationProgressCallback
        implements Task.ProgressUpdateCallback
    {

        final MediaSource a;
        final Task.ProgressUpdateCallback b;
        final long c;
        final TranscodingTask d;

        public void a(int i)
        {
            int j = (int)((100L * ((c * (long)i) / 100L + TranscodingTask.a(d))) / TranscodingTask.b(d));
            if ((long)j != TranscodingTask.c(d))
            {
                TranscodingTask.a(d, j);
                b.a(j);
            }
        }

        public ConcatenationProgressCallback(MediaSource mediasource, Task.ProgressUpdateCallback progressupdatecallback)
        {
            d = TranscodingTask.this;
            super();
            a = mediasource;
            b = progressupdatecallback;
            c = mediasource.a();
        }
    }


    private final TranscodingConfiguration a;
    private Mixer b;
    private Transcoder c;
    private long d;
    private long e;
    private long f;

    public TranscodingTask(TranscodingConfiguration transcodingconfiguration)
    {
        f = -1L;
        a = transcodingconfiguration;
        c();
        d();
    }

    static long a(TranscodingTask transcodingtask)
    {
        return transcodingtask.e;
    }

    static long a(TranscodingTask transcodingtask, long l)
    {
        transcodingtask.f = l;
        return l;
    }

    private boolean a(ImageMediaSource imagemediasource, Task.ProgressUpdateCallback progressupdatecallback)
    {
        long l = 1000L * imagemediasource.a();
        c = new Transcoder(b, a.c(), a.d(), imagemediasource, l) {

            final ImageMediaSource a;
            final long b;
            final TranscodingTask c;

            protected MediaProvider a(Encoder encoder, EncoderConfiguration encoderconfiguration, StageDoneCallback stagedonecallback)
            {
                return new ImageProvider(encoder, a.b(), 30, b, stagedonecallback);
            }

            protected MediaProvider b(Encoder encoder, EncoderConfiguration encoderconfiguration, StageDoneCallback stagedonecallback)
            {
                return new SilenceProvider(encoder, b, stagedonecallback);
            }

            
            {
                c = TranscodingTask.this;
                a = imagemediasource;
                b = l;
                super(mixer, encoderconfiguration, encoderconfiguration1);
            }
        };
        c.a(progressupdatecallback);
        c.a();
        c = null;
        b.c();
        return true;
    }

    private boolean a(VideoMediaSource videomediasource, Task.ProgressUpdateCallback progressupdatecallback)
    {
        c = new Transcoder(b, a.c(), a.d(), videomediasource) {

            final VideoMediaSource a;
            final TranscodingTask b;

            protected MediaProvider a(Encoder encoder, EncoderConfiguration encoderconfiguration, StageDoneCallback stagedonecallback)
            {
                static class _cls3
                {

                    static final int a[];
                    static final int b[];

                    static 
                    {
                        b = new int[VideoMediaSource.AudioChannelSource.values().length];
                        try
                        {
                            b[VideoMediaSource.AudioChannelSource.a.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror) { }
                        try
                        {
                            b[VideoMediaSource.AudioChannelSource.b.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror1) { }
                        try
                        {
                            b[VideoMediaSource.AudioChannelSource.c.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror2) { }
                        a = new int[VideoMediaSource.VideoChannelSource.values().length];
                        try
                        {
                            a[VideoMediaSource.VideoChannelSource.a.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror3) { }
                        try
                        {
                            a[VideoMediaSource.VideoChannelSource.b.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror4)
                        {
                            return;
                        }
                    }
                }

                switch (_cls3.a[a.f().ordinal()])
                {
                default:
                    throw new IllegalStateException("Unhandled video channel source.");

                case 1: // '\001'
                    return new VideoProvider(encoder, a, stagedonecallback);

                case 2: // '\002'
                    throw new IllegalStateException("Attempt to create an video provider for a disabled track.");
                }
            }

            protected MediaProvider b(Encoder encoder, EncoderConfiguration encoderconfiguration, StageDoneCallback stagedonecallback)
            {
                switch (_cls3.b[a.g().ordinal()])
                {
                default:
                    throw new IllegalStateException("Unhandled audio channel source.");

                case 1: // '\001'
                    return new AudioProvider(encoder, a, stagedonecallback);

                case 2: // '\002'
                    return new SilenceProvider(encoder, 1000L * a.a(), stagedonecallback);

                case 3: // '\003'
                    throw new IllegalStateException("Attempt to create an audio provider for a disabled track.");
                }
            }

            
            {
                b = TranscodingTask.this;
                a = videomediasource;
                super(mixer, encoderconfiguration, encoderconfiguration1);
            }
        };
        c.a(progressupdatecallback);
        c.a();
        c = null;
        b.c();
        return true;
    }

    static long b(TranscodingTask transcodingtask)
    {
        return transcodingtask.d;
    }

    private void b(Task.ProgressUpdateCallback progressupdatecallback)
    {
        boolean flag;
        MediaSource amediasource[];
        int i;
        int j;
        flag = true;
        if (progressupdatecallback != null)
        {
            progressupdatecallback.a(0);
        }
        e = 0L;
        amediasource = a.a();
        i = amediasource.length;
        j = 0;
_L7:
        if (j >= i) goto _L2; else goto _L1
_L1:
        MediaSource mediasource;
        ConcatenationProgressCallback concatenationprogresscallback;
        mediasource = amediasource[j];
        if (progressupdatecallback != null)
        {
            concatenationprogresscallback = new ConcatenationProgressCallback(mediasource, progressupdatecallback);
        } else
        {
            concatenationprogresscallback = null;
        }
        if (!(mediasource instanceof ImageMediaSource)) goto _L4; else goto _L3
_L3:
        if (a((ImageMediaSource)mediasource, concatenationprogresscallback)) goto _L6; else goto _L5
_L5:
        boolean flag1;
        if (a() != Task.Status.g && a() != Task.Status.d)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        Debug.a(flag1);
_L8:
        return;
_L4:
        if (!a((VideoMediaSource)mediasource, concatenationprogresscallback))
        {
            if (a() == Task.Status.g || a() == Task.Status.d)
            {
                flag = false;
            }
            Debug.a(flag);
            return;
        }
_L6:
        e = e + mediasource.a();
        j++;
          goto _L7
_L2:
        VerboseLogging.a("TranscodingTask", "releasing Mixer");
        b.b();
        if (a.e())
        {
            try
            {
                e();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                throw new TranscodingException("Failed to write snap segment metadata");
            }
        }
        VerboseLogging.a("TranscodingTask", (new Utils()).b(a.b()));
        a(Task.Status.g);
        if (progressupdatecallback != null)
        {
            progressupdatecallback.a(100);
            return;
        }
          goto _L8
    }

    static long c(TranscodingTask transcodingtask)
    {
        return transcodingtask.f;
    }

    private void c()
    {
        MediaSource amediasource[] = a.a();
        boolean flag;
        com.snapchat.videotranscoder.pipeline.Mixer.ShouldCopyAudio shouldcopyaudio;
        com.snapchat.videotranscoder.pipeline.Mixer.ShouldCopyVideo shouldcopyvideo;
        int i;
        int j;
        com.snapchat.videotranscoder.pipeline.Mixer.ShouldCopyVideo shouldcopyvideo1;
        if (amediasource.length > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Debug.a(flag);
        shouldcopyaudio = com.snapchat.videotranscoder.pipeline.Mixer.ShouldCopyAudio.b;
        shouldcopyvideo = com.snapchat.videotranscoder.pipeline.Mixer.ShouldCopyVideo.b;
        i = amediasource.length;
        j = 0;
        shouldcopyvideo1 = shouldcopyvideo;
        while (j < i) 
        {
            MediaSource mediasource = amediasource[j];
            if (mediasource instanceof ImageMediaSource)
            {
                shouldcopyvideo1 = com.snapchat.videotranscoder.pipeline.Mixer.ShouldCopyVideo.a;
            } else
            if (mediasource instanceof VideoMediaSource)
            {
                VideoMediaSource videomediasource = (VideoMediaSource)mediasource;
                if (videomediasource.f() == VideoMediaSource.VideoChannelSource.a && a.c() != null)
                {
                    shouldcopyvideo1 = com.snapchat.videotranscoder.pipeline.Mixer.ShouldCopyVideo.a;
                }
                com.snapchat.videotranscoder.pipeline.Mixer.ShouldCopyAudio shouldcopyaudio1;
                if (videomediasource.g() == VideoMediaSource.AudioChannelSource.a && a.d() != null)
                {
                    shouldcopyaudio1 = com.snapchat.videotranscoder.pipeline.Mixer.ShouldCopyAudio.a;
                } else
                {
                    shouldcopyaudio1 = shouldcopyaudio;
                }
                shouldcopyaudio = shouldcopyaudio1;
            } else
            {
                throw new SetupException("Illegal media source type");
            }
            j++;
        }
        b = new Mixer(a.b(), shouldcopyvideo1, shouldcopyaudio);
    }

    private void d()
    {
        d = 0L;
        MediaSource amediasource[] = a.a();
        int i = amediasource.length;
        for (int j = 0; j < i; j++)
        {
            MediaSource mediasource = amediasource[j];
            d = d + mediasource.a();
        }

    }

    private void e()
    {
        MediaSource amediasource[] = a.a();
        long al[] = new long[amediasource.length];
        long l = 0L;
        for (int i = 0; i < amediasource.length; i++)
        {
            al[i] = l;
            l += amediasource[i].a();
        }

        (new MP4Metadata(a.b())).a(new SnapSegments(al));
    }

    public void a(Task.ProgressUpdateCallback progressupdatecallback)
    {
        try
        {
            b(progressupdatecallback);
            return;
        }
        catch (SetupException setupexception)
        {
            throw setupexception;
        }
        catch (TranscodingException transcodingexception)
        {
            throw transcodingexception;
        }
        catch (Exception exception)
        {
            throw new TranscodingException((new StringBuilder()).append("Unexpected exception during transcoding: ").append(exception.toString()).toString(), exception);
        }
    }

    public Task.Status b()
    {
        Log.d("TranscodingTask", "Aborting transcoding");
        a(Task.Status.e);
        if (c != null)
        {
            c.b();
        }
        return Task.Status.d;
    }
}
