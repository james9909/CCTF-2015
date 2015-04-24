// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.pipeline;

import android.util.Log;

// Referenced classes of package com.snapchat.videotranscoder.pipeline:
//            StageDoneCallback

public abstract class Stage
{

    protected StageDoneCallback e;
    public boolean f;

    protected Stage(StageDoneCallback stagedonecallback)
    {
        e = null;
        f = false;
        e = stagedonecallback;
    }

    public abstract void d();

    public void h()
    {
        Log.d("STAGE", "Marking stage complete");
        f = true;
        e.a();
    }
}
