// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.audio;

import android.media.MediaFormat;
import com.snapchat.videotranscoder.pipeline.Codec;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import java.nio.ByteBuffer;

public class SilenceProvider extends MediaProvider
{

    private final long b;
    private final long c;
    private final long d;
    private final byte g[];
    private long h;

    private SilenceProvider(Encoder encoder, long l, int i, int j, StageDoneCallback stagedonecallback)
    {
        super(encoder, stagedonecallback);
        h = 0L;
        if (l <= 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Duration must be greater than 0: ").append(l).toString());
        }
        if (i <= 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Sample rate must be greater than 0: ").append(i).toString());
        }
        if (j <= 0 || j > 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Channel count must be 1 or 2: ").append(j).toString());
        } else
        {
            long l1 = (l * (long)i) / 0xf4240L;
            long l2 = 2L * (long)j;
            long l3 = l1 * l2;
            long l4 = 2048L / l2;
            d = l3 % 2048L;
            b = l;
            c = (0xf4240L * l4) / (long)i;
            g = new byte[2048];
            return;
        }
    }

    public SilenceProvider(Encoder encoder, long l, StageDoneCallback stagedonecallback)
    {
        this(encoder, l, encoder.c().b().getInteger("sample-rate"), encoder.c().b().getInteger("channel-count"), stagedonecallback);
    }

    public void a()
    {
        super.a();
    }

    public int b()
    {
        return (int)((100L * h) / b);
    }

    public void d()
    {
        Codec codec = a.b();
        int i = codec.b(10000L);
        if (i == -1)
        {
            VerboseLogging.a("SilenceProvider", "no audio encoder input buffer");
            return;
        }
        VerboseLogging.a("SilenceProvider", (new StringBuilder()).append("audio encoder: returned input buffer: ").append(i).toString());
        ByteBuffer bytebuffer = codec.a(i);
        long l = h;
        h = h + c;
        bytebuffer.position(0);
        boolean flag;
        if (h >= b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            bytebuffer.put(g, 0, (int)d);
            codec.a(i, 0, (int)d, l, 4);
            h();
            return;
        } else
        {
            bytebuffer.put(g, 0, 2048);
            codec.a(i, 0, 2048, l, 0);
            return;
        }
    }
}
