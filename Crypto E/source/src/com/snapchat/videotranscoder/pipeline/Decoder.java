// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.pipeline;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.view.Surface;
import com.snapchat.videotranscoder.utils.MimeTools;

// Referenced classes of package com.snapchat.videotranscoder.pipeline:
//            Stage, Codec, StageDoneCallback

public abstract class Decoder extends Stage
{

    public int b;
    public Codec c;

    public Decoder(MediaFormat mediaformat, Surface surface, StageDoneCallback stagedonecallback)
    {
        this(stagedonecallback, new Codec(MediaCodec.createDecoderByType((new MimeTools()).c(mediaformat)), mediaformat, surface, null, 0, false));
    }

    public Decoder(StageDoneCallback stagedonecallback, Codec codec)
    {
        super(stagedonecallback);
        b = -1;
        c = codec;
    }

    public abstract void a();

    public abstract void b();

    public void f()
    {
        c.d();
    }

    public Codec g()
    {
        return c;
    }
}
