// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import com.snapchat.videotranscoder.task.MediaSource;
import com.snapchat.videotranscoder.task.VideoMediaSource;
import com.snapchat.videotranscoder.utils.ImageTransformationMatrix;

// Referenced classes of package com.snapchat.android.model:
//            LazyMediaSource

public class LazyVideoMediaSourceFromFile extends LazyMediaSource
{

    private final boolean mIsMuted;
    private MediaSource mMediaSource;
    private final String mVideoPath;

    public LazyVideoMediaSourceFromFile(String s, boolean flag)
    {
        mVideoPath = s;
        mIsMuted = flag;
    }

    public MediaSource a(Context context)
    {
        if (mMediaSource == null)
        {
            String s = mVideoPath;
            float af[] = (new ImageTransformationMatrix()).a();
            com.snapchat.videotranscoder.task.VideoMediaSource.VideoChannelSource videochannelsource = com.snapchat.videotranscoder.task.VideoMediaSource.VideoChannelSource.a;
            com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource audiochannelsource;
            if (mIsMuted)
            {
                audiochannelsource = com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource.b;
            } else
            {
                audiochannelsource = com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource.a;
            }
            mMediaSource = new VideoMediaSource(s, af, null, videochannelsource, audiochannelsource);
        }
        return mMediaSource;
    }

    public void a()
    {
        mMediaSource = null;
    }
}
