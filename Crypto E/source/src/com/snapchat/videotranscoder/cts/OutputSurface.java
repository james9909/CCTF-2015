// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.cts;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.view.Surface;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.utils.VerboseLogging;

// Referenced classes of package com.snapchat.videotranscoder.cts:
//            TextureRenderer

public class OutputSurface
    implements android.graphics.SurfaceTexture.OnFrameAvailableListener
{

    protected EGLDisplay a;
    protected EGLContext b;
    protected EGLSurface c;
    protected SurfaceTexture d;
    protected Surface e;
    protected Object f;
    protected boolean g;
    protected TextureRenderer h;
    private final String i;

    public OutputSurface(float af[], String s)
    {
        a = EGL14.EGL_NO_DISPLAY;
        b = EGL14.EGL_NO_CONTEXT;
        c = EGL14.EGL_NO_SURFACE;
        f = new Object();
        i = s;
        a(af);
    }

    public void a()
    {
        h.d();
        if (a != EGL14.EGL_NO_DISPLAY)
        {
            VerboseLogging.a("OutputSurface", (new StringBuilder()).append("mEGLDisplay: ").append(a).toString());
            VerboseLogging.a("OutputSurface", "eglDestroySurface");
            EGL14.eglDestroySurface(a, c);
            VerboseLogging.a("OutputSurface", "eglDestroyContext");
            EGL14.eglDestroyContext(a, b);
            VerboseLogging.a("OutputSurface", "eglReleaseThread");
            EGL14.eglReleaseThread();
            VerboseLogging.a("OutputSurface", "eglTerminate");
            EGL14.eglTerminate(a);
        }
        VerboseLogging.a("OutputSurface", "releasing surface");
        e.release();
        a = EGL14.EGL_NO_DISPLAY;
        b = EGL14.EGL_NO_CONTEXT;
        c = EGL14.EGL_NO_SURFACE;
        h = null;
        e = null;
        d = null;
    }

    public void a(String s)
    {
        h.c(s);
    }

    protected void a(float af[])
    {
        if (af == null || af.length != 16)
        {
            throw new SetupException("Transformation matrix must be defined and have a length of 16");
        } else
        {
            h = new TextureRenderer(af);
            h.a(i);
            h.a();
            VerboseLogging.a("OutputSurface", (new StringBuilder()).append("textureID=").append(h.f()).toString());
            d = new SurfaceTexture(h.f());
            d.setOnFrameAvailableListener(this);
            e = new Surface(d);
            return;
        }
    }

    public boolean a(int j)
    {
        VerboseLogging.a("OutputSurface", "Checking for a new image");
        Object obj = f;
        obj;
        JVM INSTR monitorenter ;
_L2:
        boolean flag = g;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        f.wait(j);
        if (g) goto _L2; else goto _L1
_L1:
        VerboseLogging.a("OutputSurface", "No new image");
        obj;
        JVM INSTR monitorexit ;
        return false;
        InterruptedException interruptedexception;
        interruptedexception;
        throw new RuntimeException(interruptedexception);
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        g = false;
        obj;
        JVM INSTR monitorexit ;
        VerboseLogging.a("OutputSurface", "New image available");
        h.b("before updateTexImage");
        d.updateTexImage();
        return true;
    }

    public Surface b()
    {
        return e;
    }

    public void c()
    {
        h.e();
    }

    public void onFrameAvailable(SurfaceTexture surfacetexture)
    {
        VerboseLogging.a("OutputSurface", "new frame available");
        Object obj = f;
        obj;
        JVM INSTR monitorenter ;
        if (g)
        {
            throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
        }
        break MISSING_BLOCK_LABEL_36;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        g = true;
        f.notifyAll();
        obj;
        JVM INSTR monitorexit ;
    }
}
