// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.audio;

import android.media.MediaFormat;
import android.util.Log;
import com.snapchat.videotranscoder.pipeline.Codec;
import com.snapchat.videotranscoder.pipeline.Decoder;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import java.nio.ByteBuffer;

public class AudioDecoder extends Decoder
{

    protected long a;
    private Codec d;

    public AudioDecoder(MediaFormat mediaformat, StageDoneCallback stagedonecallback)
    {
        super(mediaformat, null, stagedonecallback);
        a = -1L;
    }

    protected long a(int i)
    {
        long l = c.f().presentationTimeUs;
        VerboseLogging.a("AUDIODECODER", (new StringBuilder()).append("audio decoder: pending buffer of size ").append(i).append(" At ").append(l).toString());
        boolean flag;
        if (l < a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            Log.e("AUDIODECODER", (new StringBuilder()).append("Audio decoder out of sync last:").append(a).append(" cur: ").append(l).toString());
            return a;
        } else
        {
            a = l;
            return l;
        }
    }

    protected void a()
    {
        b = -1;
        int i = c.a(10000L);
        VerboseLogging.a("AUDIODECODER", (new StringBuilder()).append("Returned index was ").append(i).toString());
        if (i < 0)
        {
            c.b(i);
            return;
        }
        if (c.e())
        {
            VerboseLogging.a("AUDIODECODER", "audio decoder: codec config buffer");
            c.a(i, false);
            return;
        } else
        {
            VerboseLogging.a("AUDIODECODER", (new StringBuilder()).append("audio decoder: returned buffer for time ").append(c.f().presentationTimeUs).toString());
            VerboseLogging.a("AUDIODECODER", (new StringBuilder()).append("audio decoder: output buffer is now pending: ").append(i).toString());
            b = i;
            return;
        }
    }

    public void a(Encoder encoder)
    {
        d = encoder.b();
    }

    protected void b()
    {
        int i = d.b(10000L);
        if (i == -1)
        {
            VerboseLogging.a("AUDIODECODER", "no audio encoder input buffer");
            return;
        }
        VerboseLogging.a("AUDIODECODER", (new StringBuilder()).append("audio decoder: attempting to process pending buffer: ").append(b).toString());
        VerboseLogging.a("AUDIODECODER", (new StringBuilder()).append("audio encoder: returned input buffer: ").append(i).toString());
        ByteBuffer bytebuffer = d.a(i);
        int j = c.f().size;
        long l = a(j);
        if (j >= 0)
        {
            ByteBuffer bytebuffer1 = c.d(b);
            bytebuffer.position(0);
            bytebuffer.put(bytebuffer1);
            d.a(i, 0, j, l, c.f().flags);
        }
        c();
    }

    protected void c()
    {
        c.a(b, false);
        if (c.g())
        {
            VerboseLogging.a("AUDIODECODER", "audio decoder: EOS");
            h();
        }
        b = -1;
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

    public void e()
    {
        c.h();
        a = -1L;
    }
}
