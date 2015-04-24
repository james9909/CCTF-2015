// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.videocamera.recordingpreferences;

import android.media.CamcorderProfile;

// Referenced classes of package com.snapchat.android.camera.videocamera.recordingpreferences:
//            VideoRecordingPreferences

public class TranscodingEnabledVideoRecordingPreferences extends VideoRecordingPreferences
{

    public TranscodingEnabledVideoRecordingPreferences()
    {
    }

    public int a(CamcorderProfile camcorderprofile)
    {
        return camcorderprofile.videoBitRate;
    }

    public long a()
    {
        return -1L;
    }
}
