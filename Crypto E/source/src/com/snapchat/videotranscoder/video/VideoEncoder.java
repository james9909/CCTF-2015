// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.video;

import android.media.MediaFormat;
import android.util.Log;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.pipeline.Codec;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.pipeline.Mixer;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.Debug;
import com.snapchat.videotranscoder.utils.VerboseLogging;

public class VideoEncoder extends Encoder
{

    private InputSurface d;

    public VideoEncoder(Mixer mixer, StageDoneCallback stagedonecallback, EncoderConfiguration encoderconfiguration)
    {
        super(mixer, stagedonecallback, encoderconfiguration, true);
        d = null;
        VerboseLogging.a("VideoEncoder", "Done Configuring video codec");
        VerboseLogging.a("VideoEncoder", "Creating input surface");
        d = new InputSurface(b.k());
        b.a();
        d.b();
        b.c();
    }

    protected int a(MediaFormat mediaformat)
    {
        if (a.h())
        {
            Debug.a(mediaformat.toString().equals(a.k().toString()));
            return a.f();
        } else
        {
            return a.a(mediaformat);
        }
    }

    public void a()
    {
        super.a();
        try
        {
            if (d != null)
            {
                d.a();
                d = null;
            }
            return;
        }
        catch (Exception exception)
        {
            Log.e("VideoEncoder", "error while releasing mInputSurface", exception);
        }
    }

    public InputSurface e()
    {
        return d;
    }

    public void f()
    {
        b.j();
    }
}
