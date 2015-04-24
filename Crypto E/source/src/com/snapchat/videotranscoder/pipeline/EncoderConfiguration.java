// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.pipeline;

import android.media.MediaFormat;

public class EncoderConfiguration
{

    private final String a;
    private final MediaFormat b;

    public EncoderConfiguration(String s, MediaFormat mediaformat)
    {
        a = s;
        b = mediaformat;
    }

    public String a()
    {
        return a;
    }

    public MediaFormat b()
    {
        return b;
    }
}
