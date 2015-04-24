// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.pipeline;

import android.util.Log;
import com.snapchat.videotranscoder.audio.AudioEncoder;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.utils.Utils;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.VideoEncoder;

// Referenced classes of package com.snapchat.videotranscoder.pipeline:
//            Mixer, MediaProvider, EncoderConfiguration, Encoder, 
//            StageDoneCallback

public abstract class Transcoder
{
    class AudioEncoderDone
        implements StageDoneCallback
    {

        final Transcoder a;

        public void a()
        {
            Transcoder.c(a, true);
        }

        private AudioEncoderDone()
        {
            a = Transcoder.this;
            super();
        }

    }

    class AudioProviderDone
        implements StageDoneCallback
    {

        final Transcoder a;

        public void a()
        {
            Transcoder.a(a, true);
        }

        private AudioProviderDone()
        {
            a = Transcoder.this;
            super();
        }

    }

    class VideoEncoderDone
        implements StageDoneCallback
    {

        final Transcoder a;

        public void a()
        {
            Transcoder.d(a, true);
        }

        private VideoEncoderDone()
        {
            a = Transcoder.this;
            super();
        }

    }

    class VideoProviderDone
        implements StageDoneCallback
    {

        final Transcoder a;

        public void a()
        {
            Transcoder.b(a, true);
        }

        private VideoProviderDone()
        {
            a = Transcoder.this;
            super();
        }

    }


    private Mixer a;
    private MediaProvider b;
    private MediaProvider c;
    private VideoEncoder d;
    private AudioEncoder e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private volatile boolean j;
    private int k;

    public Transcoder(Mixer mixer, EncoderConfiguration encoderconfiguration, EncoderConfiguration encoderconfiguration1)
    {
        f = false;
        g = false;
        h = false;
        i = false;
        j = false;
        k = -1;
        a = mixer;
        if (!(new Utils()).a("Transcoder"))
        {
            throw new SetupException("There is no looper thread");
        }
        if (mixer.d())
        {
            Log.d("Transcoder", "Setting up video components of the transcoder.");
            d = new VideoEncoder(a, new VideoEncoderDone(), encoderconfiguration);
            b = a(d, encoderconfiguration, new VideoProviderDone());
        } else
        {
            d = null;
            b = null;
            h = true;
            f = true;
        }
        if (mixer.e())
        {
            Log.d("Transcoder", "Setting up audio components of the transcoder.");
            e = new AudioEncoder(a, new AudioEncoderDone(), encoderconfiguration1);
            c = b(e, encoderconfiguration1, new AudioProviderDone());
            return;
        } else
        {
            e = null;
            i = true;
            g = true;
            return;
        }
    }

    static boolean a(Transcoder transcoder, boolean flag)
    {
        transcoder.g = flag;
        return flag;
    }

    static boolean b(Transcoder transcoder, boolean flag)
    {
        transcoder.f = flag;
        return flag;
    }

    private int c()
    {
        int l = 100;
        if (b != null)
        {
            l = Math.min(l, b.b());
        }
        if (c != null)
        {
            l = Math.min(l, c.b());
        }
        return l;
    }

    static boolean c(Transcoder transcoder, boolean flag)
    {
        transcoder.i = flag;
        return flag;
    }

    static boolean d(Transcoder transcoder, boolean flag)
    {
        transcoder.h = flag;
        return flag;
    }

    public abstract MediaProvider a(Encoder encoder, EncoderConfiguration encoderconfiguration, StageDoneCallback stagedonecallback);

    public void a()
    {
        if (b != null)
        {
            VerboseLogging.a("Transcoder", "releasing video provider");
            b.a();
            b = null;
        }
        if (d != null)
        {
            VerboseLogging.a("Transcoder", "releasing video, encoder");
            d.a();
            d = null;
        }
        if (c != null)
        {
            VerboseLogging.a("Transcoder", "releasing audio provider");
            c.a();
            c = null;
        }
        if (e != null)
        {
            VerboseLogging.a("Transcoder", "releasing audio, encoder");
            e.a();
            e = null;
        }
        a = null;
    }

    public void a(com.snapchat.videotranscoder.task.Task.ProgressUpdateCallback progressupdatecallback)
    {
        do
        {
            if (i && h || j)
            {
                break;
            }
            if (c != null && !g)
            {
                VerboseLogging.a("Transcoder", "Calling audio provider");
                c.d();
                VerboseLogging.a("Transcoder", "done Calling audio provider");
            }
            if (e != null && !i)
            {
                VerboseLogging.a("Transcoder", "Calling audio encoder");
                e.d();
                VerboseLogging.a("Transcoder", "done Calling audio encoder");
            }
            if (!f)
            {
                VerboseLogging.a("Transcoder", "Calling video provider");
                b.d();
                VerboseLogging.a("Transcoder", "done Calling video provider");
            }
            if (!h)
            {
                VerboseLogging.a("Transcoder", "Calling video encoder");
                d.d();
                VerboseLogging.a("Transcoder", "done Calling video encoder");
            }
            if (progressupdatecallback != null)
            {
                int l = c();
                if (l != k)
                {
                    k = l;
                    progressupdatecallback.a(l);
                }
            }
        } while (true);
    }

    public abstract MediaProvider b(Encoder encoder, EncoderConfiguration encoderconfiguration, StageDoneCallback stagedonecallback);

    public void b()
    {
        j = true;
    }
}
