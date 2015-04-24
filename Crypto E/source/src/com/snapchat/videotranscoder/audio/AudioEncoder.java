// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.audio;

import android.media.MediaFormat;
import com.snapchat.videotranscoder.pipeline.Encoder;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.pipeline.Mixer;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.Debug;

public class AudioEncoder extends Encoder
{

    public AudioEncoder(Mixer mixer, StageDoneCallback stagedonecallback, EncoderConfiguration encoderconfiguration)
    {
        super(mixer, stagedonecallback, encoderconfiguration, false);
    }

    protected int a(MediaFormat mediaformat)
    {
        if (a.i())
        {
            Debug.a(mediaformat.toString().equals(a.j().toString()));
            return a.g();
        } else
        {
            return a.a(mediaformat);
        }
    }
}
