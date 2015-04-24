// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;

import com.snapchat.videotranscoder.audio.SilenceProvider;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.Mixer;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.pipeline.Transcoder;
import com.snapchat.videotranscoder.video.ImageProvider;

// Referenced classes of package com.snapchat.videotranscoder.task:
//            TranscodingTask, ImageMediaSource

class ration extends Transcoder
{

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

    ration(TranscodingTask transcodingtask, Mixer mixer, EncoderConfiguration encoderconfiguration, EncoderConfiguration encoderconfiguration1, ImageMediaSource imagemediasource, long l)
    {
        c = transcodingtask;
        a = imagemediasource;
        b = l;
        super(mixer, encoderconfiguration, encoderconfiguration1);
    }
}
