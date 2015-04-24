// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.gl;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLUtils;
import android.view.TextureView;
import com.snapchat.android.Timber;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

public abstract class GlTextureView extends TextureView
    implements android.view.TextureView.SurfaceTextureListener
{
    class GlRenderThread extends Thread
    {

        final GlTextureView a;
        private final SurfaceTexture b;
        private volatile boolean c;
        private EGL10 d;
        private EGLDisplay e;
        private EGLContext f;
        private EGLSurface g;
        private volatile boolean h;

        private void c()
        {
            int i = d.eglGetError();
            if (i != 12288)
            {
                Timber.d("GLTextureView", (new StringBuilder()).append("EGL error = 0x").append(Integer.toHexString(i)).toString(), new Object[0]);
            }
        }

        private void d()
        {
            d.eglDestroyContext(e, f);
            d.eglDestroySurface(e, g);
        }

        private void e()
        {
            d = (EGL10)EGLContext.getEGL();
            e = d.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            if (e == EGL10.EGL_NO_DISPLAY)
            {
                throw new RuntimeException((new StringBuilder()).append("eglGetDisplay failed ").append(GLUtils.getEGLErrorString(d.eglGetError())).toString());
            }
            int ai[] = new int[2];
            if (!d.eglInitialize(e, ai))
            {
                throw new RuntimeException((new StringBuilder()).append("eglInitialize failed ").append(GLUtils.getEGLErrorString(d.eglGetError())).toString());
            }
            EGLConfig eglconfig = f();
            if (eglconfig == null)
            {
                throw new RuntimeException("eglConfig not initialized");
            }
            f = a(d, e, eglconfig);
            g = d.eglCreateWindowSurface(e, eglconfig, b, null);
            if (g != null && g != EGL10.EGL_NO_SURFACE) goto _L2; else goto _L1
_L1:
            int i = d.eglGetError();
            if (i != 12299) goto _L4; else goto _L3
_L3:
            Timber.e("GLTextureView", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.", new Object[0]);
_L6:
            return;
_L4:
            throw new RuntimeException((new StringBuilder()).append("createWindowSurface failed ").append(GLUtils.getEGLErrorString(i)).toString());
_L2:
            if (!d.eglMakeCurrent(e, g, g, f))
            {
                throw new RuntimeException((new StringBuilder()).append("eglMakeCurrent failed ").append(GLUtils.getEGLErrorString(d.eglGetError())).toString());
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        private EGLConfig f()
        {
            int ai[] = new int[1];
            EGLConfig aeglconfig[] = new EGLConfig[1];
            int ai1[] = g();
            if (!d.eglChooseConfig(e, ai1, aeglconfig, 1, ai))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("eglChooseConfig failed ").append(GLUtils.getEGLErrorString(d.eglGetError())).toString());
            }
            if (ai[0] > 0)
            {
                return aeglconfig[0];
            } else
            {
                return null;
            }
        }

        private int[] g()
        {
            return (new int[] {
                12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 1, 
                12325, 0, 12326, 0, 12344
            });
        }

        EGLContext a(EGL10 egl10, EGLDisplay egldisplay, EGLConfig eglconfig)
        {
            int ai[] = {
                12440, 2, 12344
            };
            return egl10.eglCreateContext(egldisplay, eglconfig, EGL10.EGL_NO_CONTEXT, ai);
        }

        public void a()
        {
            this;
            JVM INSTR monitorenter ;
            h = true;
            notify();
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void b()
        {
            c = true;
        }

        public void run()
        {
            e();
            a.a();
_L3:
            if (c)
            {
                break; /* Loop/switch isn't completed */
            }
            a.b();
            d.eglSwapBuffers(e, g);
            c();
            this;
            JVM INSTR monitorenter ;
_L1:
            boolean flag = h;
            if (flag)
            {
                break MISSING_BLOCK_LABEL_82;
            }
            wait();
              goto _L1
            InterruptedException interruptedexception;
            interruptedexception;
            Timber.a("GLTextureView", interruptedexception);
              goto _L1
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            h = false;
            this;
            JVM INSTR monitorexit ;
            if (true) goto _L3; else goto _L2
_L2:
            d();
            return;
        }

        GlRenderThread(SurfaceTexture surfacetexture)
        {
            a = GlTextureView.this;
            super();
            c = false;
            h = false;
            b = surfacetexture;
            setName("GlTextureView rendering thread.");
            setPriority(10);
        }
    }


    private GlRenderThread a;

    public GlTextureView(Context context)
    {
        super(context);
        setSurfaceTextureListener(this);
        setOpaque(false);
    }

    public abstract void a();

    public abstract void b();

    public void c()
    {
        if (a != null)
        {
            a.a();
        }
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int i, int j)
    {
        if (a == null)
        {
            a = new GlRenderThread(surfacetexture);
            a.start();
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
    {
        a.b();
        a = null;
        return true;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfacetexture, int i, int j)
    {
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfacetexture)
    {
    }
}
