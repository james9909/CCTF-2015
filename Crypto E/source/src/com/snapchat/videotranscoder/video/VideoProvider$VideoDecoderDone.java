// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.video;

import com.snapchat.videotranscoder.pipeline.StageDoneCallback;

// Referenced classes of package com.snapchat.videotranscoder.video:
//            VideoProvider

class <init>
    implements StageDoneCallback
{

    final VideoProvider a;

    public void a()
    {
        VideoProvider.b(a, true);
    }

    private (VideoProvider videoprovider)
    {
        a = videoprovider;
        super();
    }

    a(VideoProvider videoprovider, a a1)
    {
        this(videoprovider);
    }
}
