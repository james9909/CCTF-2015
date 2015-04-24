// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.audio;

import com.snapchat.videotranscoder.pipeline.StageDoneCallback;

// Referenced classes of package com.snapchat.videotranscoder.audio:
//            AudioProvider

class <init>
    implements StageDoneCallback
{

    final AudioProvider a;

    public void a()
    {
        AudioProvider.b(a, true);
    }

    private (AudioProvider audioprovider)
    {
        a = audioprovider;
        super();
    }

    a(AudioProvider audioprovider, a a1)
    {
        this(audioprovider);
    }
}
