// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.video;

import android.media.MediaFormat;
import android.util.Log;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.cts.OutputSurface;
import com.snapchat.videotranscoder.cts.OutputSurfaceFactory;
import com.snapchat.videotranscoder.pipeline.Codec;
import com.snapchat.videotranscoder.pipeline.Decoder;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.VerboseLogging;

// Referenced classes of package com.snapchat.videotranscoder.video:
//            ShaderText, VideoEncoder

public class VideoDecoder extends Decoder
{

    public OutputSurface a;
    int d;
    private VideoEncoder g;

    public VideoDecoder(MediaFormat mediaformat, OutputSurface outputsurface, StageDoneCallback stagedonecallback)
    {
        super(mediaformat, outputsurface.b(), stagedonecallback);
        a = null;
        d = 0;
        a = outputsurface;
        if (a == null)
        {
            throw new SetupException("Output surface was null");
        } else
        {
            return;
        }
    }

    public VideoDecoder(MediaFormat mediaformat, StageDoneCallback stagedonecallback, float af[], String s)
    {
        this(new OutputSurfaceFactory(), mediaformat, stagedonecallback, af, s);
    }

    private VideoDecoder(OutputSurfaceFactory outputsurfacefactory, MediaFormat mediaformat, StageDoneCallback stagedonecallback, float af[], String s)
    {
        this(mediaformat, outputsurfacefactory.a(af, s), stagedonecallback);
    }

    protected void a()
    {
        int i = c.a(10000L);
        VerboseLogging.a("VIDEODECODER", (new StringBuilder()).append("Buffer: ").append(i).append(" was returned").toString());
        if (i < 0)
        {
            c.b(i);
            return;
        }
        if (c.e())
        {
            c.a(i, false);
            return;
        }
        int j = c.f().size;
        boolean flag = false;
        if (j != 0)
        {
            flag = true;
        }
        VerboseLogging.a("VIDEODECODER", (new StringBuilder()).append("video decoder: returned buffer for time ").append(c.f().presentationTimeUs).append(" Rending:").append(flag).toString());
        c.a(i, flag);
        b = i;
    }

    public void a(ShaderText.Type type)
    {
        if (type == null)
        {
            type = ShaderText.Type.a;
        }
        if (a != null)
        {
            VerboseLogging.a("VIDEODECODER", (new StringBuilder()).append("Setting output surface shader: ").append(type).toString());
            a.a(ShaderText.a(type));
        }
    }

    public void a(VideoEncoder videoencoder)
    {
        g = videoencoder;
        VerboseLogging.a("VIDEODECODER", (new StringBuilder()).append("Setting encoder:").append(g).toString());
    }

    public void b()
    {
        VerboseLogging.a("VIDEODECODER", (new StringBuilder()).append("output surface: await new image trie: ").append(d).toString());
        d = 1 + d;
        if (a.a(100))
        {
            InputSurface inputsurface = g.e();
            if (inputsurface == null)
            {
                throw new TranscodingException("Error getting encoder input surface");
            }
            a.c();
            inputsurface.a(1000L * c.f().presentationTimeUs);
            inputsurface.c();
            b = -1;
            d = 0;
        }
        if (c.g())
        {
            VerboseLogging.a("VIDEODECODER", "video decoder: EOS");
            g.f();
            h();
        }
    }

    public void d()
    {
        if (b == -1)
        {
            a();
        }
        if (b != -1)
        {
            b();
        }
    }

    public void f()
    {
        c.d();
        try
        {
            if (a != null)
            {
                VerboseLogging.a("VIDEODECODER", "releasing output surface");
                a.a();
                a = null;
            }
            return;
        }
        catch (Exception exception)
        {
            Log.e("VIDEODECODER", "error while releasing mDecoderOutputSurface", exception);
        }
    }
}
