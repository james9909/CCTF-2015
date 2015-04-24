// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.video;

import com.snapchat.videotranscoder.pipeline.Extractor;
import com.snapchat.videotranscoder.pipeline.StageDoneCallback;
import com.snapchat.videotranscoder.utils.MimeTools;
import com.snapchat.videotranscoder.utils.VerboseLogging;

public class VideoExtractor extends Extractor
{

    public VideoExtractor(String s, StageDoneCallback stagedonecallback)
    {
        super(s, stagedonecallback);
        VerboseLogging.a("VideoExtractor", "Setting up extractor");
        a();
    }

    protected void a()
    {
        b = (new MimeTools()).a(a);
    }
}
