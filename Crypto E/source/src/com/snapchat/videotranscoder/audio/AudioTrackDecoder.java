// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.audio;

import android.media.AudioTrack;
import android.media.MediaFormat;
import com.snapchat.videotranscoder.pipeline.Codec;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import java.nio.ByteBuffer;

// Referenced classes of package com.snapchat.videotranscoder.audio:
//            AudioDecoder

public class AudioTrackDecoder extends AudioDecoder
{

    private AudioTrack d;

    public AudioTrackDecoder(MediaFormat mediaformat, StageDoneCallback stagedonecallback)
    {
        super(mediaformat, stagedonecallback);
        int i = mediaformat.getInteger("sample-rate");
        byte byte0;
        if (mediaformat.getInteger("channel-count") > 1)
        {
            byte0 = 12;
        } else
        {
            byte0 = 4;
        }
        d = new AudioTrack(3, i, byte0, 2, i, 1);
        d.setPlaybackRate(i);
        d.play();
    }

    public void a(float f1)
    {
        if (d != null)
        {
            d.setStereoVolume(f1, f1);
        }
    }

    public void a(Encoder encoder)
    {
        throw new UnsupportedOperationException();
    }

    public void b()
    {
        VerboseLogging.a("AUDIOTRACKDECODER", (new StringBuilder()).append("audio track decoder: attempting to process pending buffer: ").append(b).toString());
        int i = c.f().size;
        a(i);
        if (i >= 0)
        {
            ByteBuffer bytebuffer = c.d(b);
            byte abyte0[] = new byte[i];
            bytebuffer.get(abyte0);
            bytebuffer.clear();
            d.write(abyte0, 0, abyte0.length);
        }
        c();
    }

    public void f()
    {
        super.f();
        if (d != null)
        {
            VerboseLogging.a("AUDIOTRACKDECODER", "Releasing audio track");
            d.stop();
            d.release();
            d = null;
            VerboseLogging.a("AUDIOTRACKDECODER", "Released audio track");
        }
    }
}
