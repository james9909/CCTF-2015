// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;

import android.util.Log;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.rendering.VideoFilterRenderer;

// Referenced classes of package com.snapchat.videotranscoder.task:
//            Task, VideoMediaSource, MediaSource

public class VideoFilterRenderingTask extends Task
{

    private final MediaSource a;
    private VideoFilterRenderer b;
    private InputSurface c;
    private com.snapchat.videotranscoder.video.ShaderText.Type d;
    private com.snapchat.videotranscoder.video.ShaderText.Type e;
    private final Object f = new Object();
    private volatile boolean g;
    private float h;

    public VideoFilterRenderingTask(MediaSource mediasource, com.snapchat.videotranscoder.video.ShaderText.Type type, com.snapchat.videotranscoder.video.ShaderText.Type type1, InputSurface inputsurface)
    {
        g = false;
        h = 1.0F;
        a = mediasource;
        c = inputsurface;
        d = type;
        e = type1;
    }

    private void a(VideoMediaSource videomediasource, InputSurface inputsurface, Task.ProgressUpdateCallback progressupdatecallback)
    {
        b = new VideoFilterRenderer(videomediasource, d, e, inputsurface);
        b.b();
        b.a(d, e);
        b.a(h);
        if (progressupdatecallback != null)
        {
            progressupdatecallback.a(0);
        }
        b.a(null);
        d();
    }

    public void a(float f1)
    {
        h = f1;
        if (b != null)
        {
            b.a(h);
        }
    }

    public void a(Task.ProgressUpdateCallback progressupdatecallback)
    {
        VideoMediaSource videomediasource = (VideoMediaSource)a;
        a(Task.Status.d);
        a(videomediasource, c, progressupdatecallback);
        a(Task.Status.g);
        synchronized (f)
        {
            g = true;
            f.notifyAll();
        }
        return;
        exception3;
        obj2;
        JVM INSTR monitorexit ;
        throw exception3;
        RuntimeException runtimeexception;
        runtimeexception;
        runtimeexception.printStackTrace();
        synchronized (f)
        {
            g = true;
            f.notifyAll();
        }
        return;
        exception2;
        obj1;
        JVM INSTR monitorexit ;
        throw exception2;
        Exception exception;
        exception;
        synchronized (f)
        {
            g = true;
            f.notifyAll();
        }
        throw exception;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public void a(com.snapchat.videotranscoder.video.ShaderText.Type type, com.snapchat.videotranscoder.video.ShaderText.Type type1)
    {
        if (b == null)
        {
            throw new NullPointerException();
        } else
        {
            b.a(type, type1);
            return;
        }
    }

    public Task.Status b()
    {
        Log.d("VideoFilterRenderingTask", "Aborting rendering");
        if (b != null)
        {
            b.d();
        }
        a(Task.Status.e);
        return Task.Status.d;
    }

    public void b(float f1)
    {
        if (b == null)
        {
            throw new NullPointerException();
        } else
        {
            b.b(f1);
            return;
        }
    }

    public void c()
    {
        Object obj = f;
        obj;
        JVM INSTR monitorenter ;
        while (!g && b != null) 
        {
            f.wait(100L);
        }
        break MISSING_BLOCK_LABEL_39;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    public void d()
    {
        if (b != null)
        {
            b.a();
            b = null;
        }
    }
}
