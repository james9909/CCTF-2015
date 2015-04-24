// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.cts;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.util.Log;
import android.view.Surface;

public class InputSurface
{

    private EGLDisplay a;
    private EGLContext b;
    private EGLSurface c;
    private Surface d;
    private boolean e;

    public InputSurface(Surface surface)
    {
        this(surface, true);
    }

    public InputSurface(Surface surface, boolean flag)
    {
        e = true;
        Log.d("InputSurface", "Creating InputSurface");
        if (surface == null)
        {
            throw new NullPointerException();
        } else
        {
            d = surface;
            e = flag;
            d();
            return;
        }
    }

    private void a(String s)
    {
        boolean flag = false;
        do
        {
            int i = EGL14.eglGetError();
            if (i == 12288)
            {
                break;
            }
            Log.e("InputSurface", (new StringBuilder()).append(s).append(": EGL error: 0x").append(Integer.toHexString(i)).toString());
            flag = true;
        } while (true);
        if (flag)
        {
            throw new RuntimeException("EGL error encountered (see log)");
        } else
        {
            return;
        }
    }

    private void d()
    {
        a = EGL14.eglGetDisplay(0);
        if (a == EGL14.EGL_NO_DISPLAY)
        {
            throw new RuntimeException("unable to get EGL14 display");
        }
        int ai[] = new int[2];
        if (!EGL14.eglInitialize(a, ai, 0, ai, 1))
        {
            a = null;
            throw new RuntimeException("unable to initialize EGL14");
        }
        int ai1[] = {
            12324, 8, 12323, 8, 12322, 8, 12352, 4, 12610, 1, 
            12344
        };
        EGLConfig aeglconfig[] = new EGLConfig[1];
        int ai2[] = new int[1];
        if (!EGL14.eglChooseConfig(a, ai1, 0, aeglconfig, 0, aeglconfig.length, ai2, 0))
        {
            throw new RuntimeException("unable to find RGB888+recordable ES2 EGL config");
        }
        int ai3[] = {
            12440, 2, 12344
        };
        b = EGL14.eglCreateContext(a, aeglconfig[0], EGL14.EGL_NO_CONTEXT, ai3, 0);
        a("eglCreateContext");
        if (b == null)
        {
            throw new RuntimeException("null context");
        }
        int ai4[] = {
            12344
        };
        c = EGL14.eglCreateWindowSurface(a, aeglconfig[0], d, ai4, 0);
        a("eglCreateWindowSurface");
        if (c == null)
        {
            throw new RuntimeException("surface was null");
        } else
        {
            return;
        }
    }

    public void a()
    {
        if (EGL14.eglGetCurrentContext().equals(b))
        {
            EGL14.eglMakeCurrent(a, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
        }
        EGL14.eglDestroySurface(a, c);
        EGL14.eglDestroyContext(a, b);
        if (e)
        {
            d.release();
            e = false;
        }
        a = null;
        b = null;
        c = null;
        d = null;
    }

    public void a(long l)
    {
        EGLExt.eglPresentationTimeANDROID(a, c, l);
    }

    public void b()
    {
        if (!EGL14.eglMakeCurrent(a, c, c, b))
        {
            throw new RuntimeException("eglMakeCurrent failed");
        } else
        {
            return;
        }
    }

    public boolean c()
    {
        return EGL14.eglSwapBuffers(a, c);
    }
}
