// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.video;

import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.cts.OutputSurface;
import com.snapchat.videotranscoder.cts.OutputSurfaceFactory;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.ImageTransformationMatrix;

// Referenced classes of package com.snapchat.videotranscoder.video:
//            VideoEncoder

public class ImageProvider extends MediaProvider
{

    private final int b;
    private final int c;
    private final long d;
    private OutputSurface g;
    private int h;
    private long i;

    protected ImageProvider(OutputSurfaceFactory outputsurfacefactory, Encoder encoder, String s, int j, long l, StageDoneCallback stagedonecallback)
    {
        super(encoder, stagedonecallback);
        h = 0;
        i = 0L;
        if (j <= 0)
        {
            throw new SetupException((new StringBuilder()).append("Frames per second must be greater than 0: ").append(j).toString());
        }
        if (l <= 0L)
        {
            throw new SetupException((new StringBuilder()).append("Duration must be greater than 0: ").append(l).toString());
        } else
        {
            b = j;
            c = (int)((l * (long)b) / 0xf4240L);
            d = 0xf4240L / (long)b;
            g = outputsurfacefactory.a((new ImageTransformationMatrix()).a(), s);
            return;
        }
    }

    public ImageProvider(Encoder encoder, String s, int j, long l, StageDoneCallback stagedonecallback)
    {
        this(new OutputSurfaceFactory(), encoder, s, j, l, stagedonecallback);
    }

    public void a()
    {
        g.a();
        g = null;
        super.a();
    }

    public int b()
    {
        return (100 * h) / c;
    }

    public void d()
    {
        VideoEncoder videoencoder = (VideoEncoder)a;
        InputSurface inputsurface = videoencoder.e();
        if (inputsurface == null)
        {
            throw new TranscodingException("Error getting encoder input surface");
        }
        g.c();
        inputsurface.a(1000L * i);
        inputsurface.c();
        i = i + d;
        h = 1 + h;
        if (h == c)
        {
            videoencoder.f();
            h();
        }
    }
}
