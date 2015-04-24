// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.audio;

import com.snapchat.videotranscoder.pipeline.Extractor;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.MimeTools;

public class AudioExtractor extends Extractor
{

    public AudioExtractor(String s, StageDoneCallback stagedonecallback)
    {
        super(s, stagedonecallback);
        a();
    }

    protected void a()
    {
        b = (new MimeTools()).c(a);
    }
}
