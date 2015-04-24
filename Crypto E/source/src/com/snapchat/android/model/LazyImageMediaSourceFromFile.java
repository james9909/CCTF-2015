// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import com.snapchat.videotranscoder.task.ImageMediaSource;
import com.snapchat.videotranscoder.task.MediaSource;

// Referenced classes of package com.snapchat.android.model:
//            LazyMediaSource

public class LazyImageMediaSourceFromFile extends LazyMediaSource
{

    private final long mDisplayTimeMs;
    private final String mImagePath;
    private MediaSource mMediaSource;

    public LazyImageMediaSourceFromFile(String s, long l)
    {
        if (l <= 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Display time must be greater than 0: ").append(l).toString());
        } else
        {
            mImagePath = s;
            mDisplayTimeMs = l;
            return;
        }
    }

    public MediaSource a(Context context)
    {
        if (mMediaSource == null)
        {
            mMediaSource = new ImageMediaSource(mImagePath, mDisplayTimeMs);
        }
        return mMediaSource;
    }

    public void a()
    {
        mMediaSource = null;
    }
}
