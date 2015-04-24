// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.pipeline;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.util.Log;
import com.snapchat.videotranscoder.utils.MimeTools;
import com.snapchat.videotranscoder.utils.VerboseLogging;

// Referenced classes of package com.snapchat.videotranscoder.pipeline:
//            Stage, Codec, EncoderConfiguration, Mixer, 
//            StageDoneCallback

public abstract class Encoder extends Stage
{

    public final Mixer a;
    public final Codec b;
    protected int c;
    private long d;
    private final EncoderConfiguration g;

    public Encoder(Mixer mixer, StageDoneCallback stagedonecallback, EncoderConfiguration encoderconfiguration, boolean flag)
    {
        this(stagedonecallback, mixer, new Codec(MediaCodec.createByCodecName((new MimeTools()).a(encoderconfiguration.a()).getName()), encoderconfiguration.b(), null, null, 1, flag), encoderconfiguration);
    }

    protected Encoder(StageDoneCallback stagedonecallback, Mixer mixer, Codec codec, EncoderConfiguration encoderconfiguration)
    {
        super(stagedonecallback);
        c = -1;
        d = -1L;
        a = mixer;
        b = codec;
        g = encoderconfiguration;
    }

    public abstract int a(MediaFormat mediaformat);

    public void a()
    {
        b.d();
    }

    public Codec b()
    {
        return b;
    }

    public EncoderConfiguration c()
    {
        return g;
    }

    public void d()
    {
        if (c == -1 || a.a()) goto _L2; else goto _L1
_L1:
        VerboseLogging.a("ENCODER", "Mixer is not started returning");
_L4:
        return;
_L2:
        int i;
        i = b.a(10000L);
        if (i >= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        b.b(i);
        if (i == -2)
        {
            c = a(b.i());
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!b.e()) goto _L6; else goto _L5
_L5:
        VerboseLogging.a("ENCODER", "encoder: codec config buffer");
_L8:
        b.a(i, false);
        return;
_L6:
        java.nio.ByteBuffer bytebuffer = b.d(i);
        long l = b.f().presentationTimeUs;
        if (l < d)
        {
            Log.e("ENCODER", (new StringBuilder()).append("Encoder out of sync last:").append(d).append(" cur: ").append(l).toString());
        }
        d = l;
        if (b.f().size != 0)
        {
            a.a(c, bytebuffer, b.f());
        }
        if (b.g())
        {
            VerboseLogging.a("ENCODER", "encoder: EOS");
            h();
        }
        if (true) goto _L8; else goto _L7
_L7:
    }
}
