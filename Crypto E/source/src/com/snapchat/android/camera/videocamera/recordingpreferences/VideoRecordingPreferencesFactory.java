// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.videocamera.recordingpreferences;


// Referenced classes of package com.snapchat.android.camera.videocamera.recordingpreferences:
//            TranscodingEnabledVideoRecordingPreferences, NonTranscodingVideoRecordingPreferences, VideoRecordingPreferences

public class VideoRecordingPreferencesFactory
{

    public VideoRecordingPreferencesFactory()
    {
    }

    public static VideoRecordingPreferences a(com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled transcodingenabled)
    {
        if (transcodingenabled == com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled.e)
        {
            return new TranscodingEnabledVideoRecordingPreferences();
        } else
        {
            return new NonTranscodingVideoRecordingPreferences();
        }
    }
}
