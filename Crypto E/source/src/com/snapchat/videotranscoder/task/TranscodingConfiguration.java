// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;

import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;

// Referenced classes of package com.snapchat.videotranscoder.task:
//            SetupException, MediaSource

public class TranscodingConfiguration
{

    private final MediaSource a[];
    private final String b;
    private final EncoderConfiguration c;
    private final EncoderConfiguration d;
    private final boolean e;

    public TranscodingConfiguration(MediaSource amediasource[], String s, EncoderConfiguration encoderconfiguration, EncoderConfiguration encoderconfiguration1, boolean flag)
    {
        a = amediasource;
        b = s;
        c = encoderconfiguration;
        d = encoderconfiguration1;
        e = flag;
        if (amediasource.length == 0)
        {
            throw new SetupException("No media sources to transcode.");
        } else
        {
            return;
        }
    }

    public MediaSource[] a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public EncoderConfiguration c()
    {
        return c;
    }

    public EncoderConfiguration d()
    {
        return d;
    }

    public boolean e()
    {
        return e;
    }
}
