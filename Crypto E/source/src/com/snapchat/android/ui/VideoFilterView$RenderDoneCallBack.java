// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.ui:
//            VideoFilterView

class <init>
    implements com.snapchat.videotranscoder.task._01_
{

    final VideoFilterView a;

    public void a(com.snapchat.videotranscoder.task._01_ _p01_)
    {
        if (_p01_ == com.snapchat.videotranscoder.task._01_)
        {
            Timber.c("VideoFilterView", "Video Rendering finished successfully", new Object[0]);
            return;
        } else
        {
            Timber.e("VideoFilterView", (new StringBuilder()).append("Video rendering is done with error status: ").append(_p01_).toString(), new Object[0]);
            return;
        }
    }

    private (VideoFilterView videofilterview)
    {
        a = videofilterview;
        super();
    }

    a(VideoFilterView videofilterview, a a1)
    {
        this(videofilterview);
    }
}
