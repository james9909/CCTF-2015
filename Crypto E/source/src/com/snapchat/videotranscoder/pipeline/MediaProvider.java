// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.pipeline;


// Referenced classes of package com.snapchat.videotranscoder.pipeline:
//            Stage, Encoder, StageDoneCallback

public abstract class MediaProvider extends Stage
{

    public Encoder a;

    public MediaProvider(Encoder encoder, StageDoneCallback stagedonecallback)
    {
        super(stagedonecallback);
        a = encoder;
    }

    public void a()
    {
        a = null;
    }

    public abstract int b();
}
