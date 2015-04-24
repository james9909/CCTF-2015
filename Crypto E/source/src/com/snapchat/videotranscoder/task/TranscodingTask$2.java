// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;

import com.snapchat.videotranscoder.audio.AudioProvider;
import com.snapchat.videotranscoder.audio.SilenceProvider;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.pipeline.MediaProvider;
import com.snapchat.videotranscoder.pipeline.Mixer;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.pipeline.Transcoder;
import com.snapchat.videotranscoder.video.VideoProvider;

// Referenced classes of package com.snapchat.videotranscoder.task:
//            TranscodingTask, VideoMediaSource

class ration extends Transcoder
{

    final VideoMediaSource a;
    final TranscodingTask b;

    protected MediaProvider a(Encoder encoder, EncoderConfiguration encoderconfiguration, StageDoneCallback stagedonecallback)
    {
        switch (a[a.f().ordinal()])
        {
        default:
            throw new IllegalStateException("Unhandled video channel source.");

        case 1: // '\001'
            return new VideoProvider(encoder, a, stagedonecallback);

        case 2: // '\002'
            throw new IllegalStateException("Attempt to create an video provider for a disabled track.");
        }
    }

    protected MediaProvider b(Encoder encoder, EncoderConfiguration encoderconfiguration, StageDoneCallback stagedonecallback)
    {
        switch (b[a.g().ordinal()])
        {
        default:
            throw new IllegalStateException("Unhandled audio channel source.");

        case 1: // '\001'
            return new AudioProvider(encoder, a, stagedonecallback);

        case 2: // '\002'
            return new SilenceProvider(encoder, 1000L * a.a(), stagedonecallback);

        case 3: // '\003'
            throw new IllegalStateException("Attempt to create an audio provider for a disabled track.");
        }
    }

    ration(TranscodingTask transcodingtask, Mixer mixer, EncoderConfiguration encoderconfiguration, EncoderConfiguration encoderconfiguration1, VideoMediaSource videomediasource)
    {
        b = transcodingtask;
        a = videomediasource;
        super(mixer, encoderconfiguration, encoderconfiguration1);
    }
}
