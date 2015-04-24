// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.webrtc.voiceengine;

import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;

class AudioManagerAndroid
{

    private static final int DEFAULT_FRAMES_PER_BUFFER = 256;
    private static final int DEFAULT_SAMPLING_RATE = 44100;
    private int mAudioLowLatencyOutputFrameSize;
    private boolean mAudioLowLatencySupported;
    private int mNativeOutputSampleRate;

    private AudioManagerAndroid(Context context)
    {
        AudioManager audiomanager = (AudioManager)context.getSystemService("audio");
        mNativeOutputSampleRate = 44100;
        mAudioLowLatencyOutputFrameSize = 256;
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            String s = audiomanager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE");
            if (s != null)
            {
                mNativeOutputSampleRate = Integer.parseInt(s);
            }
            String s1 = audiomanager.getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER");
            if (s1 != null)
            {
                mAudioLowLatencyOutputFrameSize = Integer.parseInt(s1);
            }
        }
        mAudioLowLatencySupported = context.getPackageManager().hasSystemFeature("android.hardware.audio.low_latency");
    }

    private int getAudioLowLatencyOutputFrameSize()
    {
        return mAudioLowLatencyOutputFrameSize;
    }

    private int getNativeOutputSampleRate()
    {
        return mNativeOutputSampleRate;
    }

    private boolean isAudioLowLatencySupported()
    {
        return mAudioLowLatencySupported;
    }
}
