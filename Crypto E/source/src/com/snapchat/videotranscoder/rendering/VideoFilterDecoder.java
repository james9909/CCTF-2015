// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.rendering;

import android.media.MediaFormat;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.cts.OutputSurface;
import com.snapchat.videotranscoder.cts.SplitOutputSurface;
import com.snapchat.videotranscoder.pipeline.Codec;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.VideoDecoder;

public class VideoFilterDecoder extends VideoDecoder
{

    private InputSurface g;
    private long h;
    private long i;
    private final int j = 100;

    public VideoFilterDecoder(MediaFormat mediaformat, StageDoneCallback stagedonecallback, float af[])
    {
        super(mediaformat, new SplitOutputSurface(af), stagedonecallback);
        h = 0L;
        i = 0L;
    }

    private boolean i()
    {
        if (h == 0L)
        {
            h = System.nanoTime() / 1000L;
            i = c.f().presentationTimeUs;
        } else
        {
            long l = c.f().presentationTimeUs - i;
            long l1 = l + h;
            if (System.nanoTime() / 1000L > l1 - 100L)
            {
                h = l + h;
                i = l + i;
                return true;
            }
        }
        return false;
    }

    public void a(float f)
    {
        if (a != null)
        {
            ((SplitOutputSurface)a).a(f);
        }
    }

    public void a(InputSurface inputsurface)
    {
        g = inputsurface;
    }

    public void a(com.snapchat.videotranscoder.video.ShaderText.Type type, com.snapchat.videotranscoder.video.ShaderText.Type type1)
    {
        ((SplitOutputSurface)a).a(type, type1);
    }

    protected void b()
    {
        if (i())
        {
            if (g == null)
            {
                throw new TranscodingException("Error getting input surface");
            }
            ((SplitOutputSurface)a).d();
            a.c();
            g.c();
            b = -1;
            if (c.g())
            {
                VerboseLogging.a("VideoFilterDecoder", "Rendering decoder: EOS");
                h();
                b = -1;
                return;
            }
        }
    }

    public void c()
    {
        if (c != null)
        {
            c.h();
        }
        h = 0L;
    }

    public void e()
    {
        ((SplitOutputSurface)a).c();
        g.c();
    }
}
