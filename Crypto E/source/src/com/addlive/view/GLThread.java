// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.view;

import android.graphics.SurfaceTexture;
import com.addlive.impl.Log;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;

public class GLThread extends Thread
{
    abstract class BaseConfigChooser
        implements EGLConfigChooser
    {

        protected int mConfigSpec[];
        final GLThread this$0;

        private int[] filterConfigSpec(int ai[])
        {
            int i = ai.length;
            int ai1[] = new int[i + 2];
            System.arraycopy(ai, 0, ai1, 0, i - 1);
            ai1[i - 1] = 12352;
            ai1[i] = 4;
            ai1[i + 1] = 12344;
            return ai1;
        }

        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay egldisplay)
        {
            int ai[] = new int[1];
            if (!egl10.eglChooseConfig(egldisplay, mConfigSpec, null, 0, ai))
            {
                throw new IllegalArgumentException("eglChooseConfig failed");
            }
            int i = ai[0];
            if (i <= 0)
            {
                throw new IllegalArgumentException("No configs match configSpec");
            }
            EGLConfig aeglconfig[] = new EGLConfig[i];
            if (!egl10.eglChooseConfig(egldisplay, mConfigSpec, aeglconfig, i, ai))
            {
                throw new IllegalArgumentException("eglChooseConfig#2 failed");
            }
            EGLConfig eglconfig = chooseConfig(egl10, egldisplay, aeglconfig);
            if (eglconfig == null)
            {
                throw new IllegalArgumentException("No config chosen");
            } else
            {
                return eglconfig;
            }
        }

        abstract EGLConfig chooseConfig(EGL10 egl10, EGLDisplay egldisplay, EGLConfig aeglconfig[]);

        public BaseConfigChooser(int ai[])
        {
            this$0 = GLThread.this;
            super();
            mConfigSpec = filterConfigSpec(ai);
        }
    }

    class ComponentSizeChooser extends BaseConfigChooser
    {

        protected int mAlphaSize;
        protected int mBlueSize;
        protected int mDepthSize;
        protected int mGreenSize;
        protected int mRedSize;
        protected int mStencilSize;
        private int mValue[];
        final GLThread this$0;

        private int findConfigAttrib(EGL10 egl10, EGLDisplay egldisplay, EGLConfig eglconfig, int i, int j)
        {
            if (egl10.eglGetConfigAttrib(egldisplay, eglconfig, i, mValue))
            {
                j = mValue[0];
            }
            return j;
        }

        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay egldisplay, EGLConfig aeglconfig[])
        {
            int i = aeglconfig.length;
            for (int j = 0; j < i; j++)
            {
                EGLConfig eglconfig = aeglconfig[j];
                int k = findConfigAttrib(egl10, egldisplay, eglconfig, 12325, 0);
                int l = findConfigAttrib(egl10, egldisplay, eglconfig, 12326, 0);
                if (k < mDepthSize || l < mStencilSize)
                {
                    continue;
                }
                int i1 = findConfigAttrib(egl10, egldisplay, eglconfig, 12324, 0);
                int j1 = findConfigAttrib(egl10, egldisplay, eglconfig, 12323, 0);
                int k1 = findConfigAttrib(egl10, egldisplay, eglconfig, 12322, 0);
                int l1 = findConfigAttrib(egl10, egldisplay, eglconfig, 12321, 0);
                if (i1 == mRedSize && j1 == mGreenSize && k1 == mBlueSize && l1 == mAlphaSize)
                {
                    return eglconfig;
                }
            }

            return null;
        }

        public ComponentSizeChooser(int i, int j, int k, int l, int i1, int j1)
        {
            this$0 = GLThread.this;
            super(new int[] {
                12324, i, 12323, j, 12322, k, 12321, l, 12325, i1, 
                12326, j1, 12344
            });
            mValue = new int[1];
            mRedSize = i;
            mGreenSize = j;
            mBlueSize = k;
            mAlphaSize = l;
            mDepthSize = i1;
            mStencilSize = j1;
        }
    }

    class DefaultContextFactory
        implements EGLContextFactory
    {

        private int EGL_CONTEXT_CLIENT_VERSION;
        final GLThread this$0;

        public EGLContext createContext(EGL10 egl10, EGLDisplay egldisplay, EGLConfig eglconfig)
        {
            int ai[] = new int[3];
            ai[0] = EGL_CONTEXT_CLIENT_VERSION;
            ai[1] = 2;
            ai[2] = 12344;
            return egl10.eglCreateContext(egldisplay, eglconfig, EGL10.EGL_NO_CONTEXT, ai);
        }

        public void destroyContext(EGL10 egl10, EGLDisplay egldisplay, EGLContext eglcontext)
        {
            if (!egl10.eglDestroyContext(egldisplay, eglcontext))
            {
                Log.e("DefaultContextFactory", (new StringBuilder()).append("display:").append(egldisplay).append(" context: ").append(eglcontext).toString());
                throw new RuntimeException("eglDestroyContext failed: ");
            } else
            {
                return;
            }
        }

        private DefaultContextFactory()
        {
            this$0 = GLThread.this;
            super();
            EGL_CONTEXT_CLIENT_VERSION = 12440;
        }

    }

    static class DefaultWindowSurfaceFactory
        implements EGLWindowSurfaceFactory
    {

        public EGLSurface createWindowSurface(EGL10 egl10, EGLDisplay egldisplay, EGLConfig eglconfig, Object obj)
        {
            EGLSurface eglsurface;
            try
            {
                eglsurface = egl10.eglCreateWindowSurface(egldisplay, eglconfig, obj, null);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                Log.e("AddLive_SDK", "eglCreateWindowSurface", illegalargumentexception);
                return null;
            }
            return eglsurface;
        }

        public void destroySurface(EGL10 egl10, EGLDisplay egldisplay, EGLSurface eglsurface)
        {
            egl10.eglDestroySurface(egldisplay, eglsurface);
        }

        private DefaultWindowSurfaceFactory()
        {
        }

    }

    public static interface EGLConfigChooser
    {

        public abstract EGLConfig chooseConfig(EGL10 egl10, EGLDisplay egldisplay);
    }

    public static interface EGLContextFactory
    {

        public abstract EGLContext createContext(EGL10 egl10, EGLDisplay egldisplay, EGLConfig eglconfig);

        public abstract void destroyContext(EGL10 egl10, EGLDisplay egldisplay, EGLContext eglcontext);
    }

    public static interface EGLWindowSurfaceFactory
    {

        public abstract EGLSurface createWindowSurface(EGL10 egl10, EGLDisplay egldisplay, EGLConfig eglconfig, Object obj);

        public abstract void destroySurface(EGL10 egl10, EGLDisplay egldisplay, EGLSurface eglsurface);
    }

    class EglHelper
    {

        EGLConfigChooser mEGLConfigChooser;
        EGLContextFactory mEGLContextFactory;
        EGLWindowSurfaceFactory mEGLWindowSurfaceFactory;
        EGL10 mEgl;
        EGLConfig mEglConfig;
        EGLContext mEglContext;
        EGLDisplay mEglDisplay;
        EGLSurface mEglSurface;
        final GLThread this$0;

        private void throwEglException(String s)
        {
            throwEglException(s, mEgl.eglGetError());
        }

        private void throwEglException(String s, int i)
        {
            throw new RuntimeException((new StringBuilder()).append(s).append(" failed: ").append(i).toString());
        }

        public GL createSurface(SurfaceTexture surfacetexture)
        {
            if (mEgl == null)
            {
                throw new RuntimeException("egl not initialized");
            }
            if (mEglDisplay == null)
            {
                throw new RuntimeException("eglDisplay not initialized");
            }
            if (mEglConfig == null)
            {
                throw new RuntimeException("mEglConfig not initialized");
            }
            if (mEglSurface != null && mEglSurface != EGL10.EGL_NO_SURFACE)
            {
                mEgl.eglMakeCurrent(mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
                mEGLWindowSurfaceFactory.destroySurface(mEgl, mEglDisplay, mEglSurface);
            }
            mEglSurface = mEGLWindowSurfaceFactory.createWindowSurface(mEgl, mEglDisplay, mEglConfig, surfacetexture);
            if (mEglSurface == null || mEglSurface == EGL10.EGL_NO_SURFACE)
            {
                if (mEgl.eglGetError() == 12299)
                {
                    Log.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                }
                return null;
            }
            if (!mEgl.eglMakeCurrent(mEglDisplay, mEglSurface, mEglSurface, mEglContext))
            {
                throwEglException("eglMakeCurrent");
            }
            return mEglContext.getGL();
        }

        public void destroySurface()
        {
            if (mEglSurface != null && mEglSurface != EGL10.EGL_NO_SURFACE)
            {
                mEgl.eglMakeCurrent(mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
                mEGLWindowSurfaceFactory.destroySurface(mEgl, mEglDisplay, mEglSurface);
                mEglSurface = null;
            }
        }

        public void finish()
        {
            if (mEglContext != null)
            {
                mEGLContextFactory.destroyContext(mEgl, mEglDisplay, mEglContext);
                mEglContext = null;
            }
            if (mEglDisplay != null)
            {
                mEgl.eglTerminate(mEglDisplay);
                mEglDisplay = null;
            }
        }

        public void purgeBuffers()
        {
            mEgl.eglMakeCurrent(mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            mEgl.eglMakeCurrent(mEglDisplay, mEglSurface, mEglSurface, mEglContext);
        }

        public void start()
        {
            mEgl = (EGL10)EGLContext.getEGL();
            mEglDisplay = mEgl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            if (mEglDisplay == EGL10.EGL_NO_DISPLAY)
            {
                throw new RuntimeException("eglGetDisplay failed");
            }
            int ai[] = new int[2];
            if (!mEgl.eglInitialize(mEglDisplay, ai))
            {
                throw new RuntimeException("eglInitialize failed");
            }
            mEglConfig = mEGLConfigChooser.chooseConfig(mEgl, mEglDisplay);
            mEglContext = mEGLContextFactory.createContext(mEgl, mEglDisplay, mEglConfig);
            if (mEglContext == null || mEglContext == EGL10.EGL_NO_CONTEXT)
            {
                mEglContext = null;
                throwEglException("createContext");
            }
            mEglSurface = null;
        }

        public boolean swap()
        {
            if (mEgl.eglSwapBuffers(mEglDisplay, mEglSurface)) goto _L2; else goto _L1
_L1:
            int i = mEgl.eglGetError();
            i;
            JVM INSTR tableswitch 12299 12302: default 60
        //                       12299 71
        //                       12300 60
        //                       12301 60
        //                       12302 69;
               goto _L3 _L4 _L3 _L3 _L5
_L3:
            throwEglException("eglSwapBuffers", i);
_L2:
            return true;
_L5:
            return false;
_L4:
            Log.e("EglHelper", (new StringBuilder()).append("eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid=").append(Thread.currentThread().getId()).toString());
            if (true) goto _L2; else goto _L6
_L6:
        }

        public EglHelper()
        {
            this$0 = GLThread.this;
            super();
            mEGLConfigChooser = new SimpleEGLConfigChooser(true);
            mEGLContextFactory = new DefaultContextFactory();
            mEGLWindowSurfaceFactory = new DefaultWindowSurfaceFactory();
        }
    }

    static class GLThreadManager
    {

        private static String TAG = "GLThreadManager";
        private static final String kADRENO = "Adreno";
        private static final int kGLES_20 = 0x20000;
        private static final String kMSM7K_RENDERER_PREFIX = "Q3Dimension MSM7500 ";
        private GLThread mEglOwner;
        private boolean mGLESDriverCheckComplete;
        private int mGLESVersion;
        private boolean mGLESVersionCheckComplete;
        private boolean mLimitedGLESContexts;
        private boolean mMultipleGLESContextsAllowed;

        private void checkGLESVersion()
        {
            if (!mGLESVersionCheckComplete)
            {
                mMultipleGLESContextsAllowed = true;
                mGLESVersionCheckComplete = true;
            }
        }

        public void checkGLDriver(GL10 gl10)
        {
            this;
            JVM INSTR monitorenter ;
            if (mGLESDriverCheckComplete) goto _L2; else goto _L1
_L1:
            String s;
            checkGLESVersion();
            s = gl10.glGetString(7937);
            if (mGLESVersion >= 0x20000)
            {
                break MISSING_BLOCK_LABEL_54;
            }
            boolean flag;
            boolean flag1;
            boolean flag2;
            if (!s.startsWith("Q3Dimension MSM7500 "))
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            mMultipleGLESContextsAllowed = flag2;
            notifyAll();
            if (!mMultipleGLESContextsAllowed) goto _L4; else goto _L3
_L3:
            flag1 = s.startsWith("Adreno");
            flag = false;
            if (!flag1) goto _L5; else goto _L4
_L5:
            mLimitedGLESContexts = flag;
            mGLESDriverCheckComplete = true;
_L2:
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
_L4:
            flag = true;
            if (true) goto _L5; else goto _L6
_L6:
        }

        public void releaseEglContextLocked(GLThread glthread)
        {
            if (mEglOwner == glthread)
            {
                mEglOwner = null;
            }
            notifyAll();
        }

        public boolean shouldReleaseEGLContextWhenPausing()
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag = mLimitedGLESContexts;
            this;
            JVM INSTR monitorexit ;
            return flag;
            Exception exception;
            exception;
            throw exception;
        }

        public boolean shouldTerminateEGLWhenPausing()
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag;
            checkGLESVersion();
            flag = mMultipleGLESContextsAllowed;
            boolean flag1;
            if (!flag)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            this;
            JVM INSTR monitorexit ;
            return flag1;
            Exception exception;
            exception;
            throw exception;
        }

        public void threadExiting(GLThread glthread)
        {
            this;
            JVM INSTR monitorenter ;
            glthread.mExited = true;
            if (mEglOwner == glthread)
            {
                mEglOwner = null;
            }
            notifyAll();
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        public boolean tryAcquireEglContextLocked(GLThread glthread)
        {
            if (mEglOwner == glthread || mEglOwner == null)
            {
                mEglOwner = glthread;
                notifyAll();
            } else
            {
                checkGLESVersion();
                if (!mMultipleGLESContextsAllowed)
                {
                    if (mEglOwner != null)
                    {
                        mEglOwner.requestReleaseEglContextLocked();
                    }
                    return false;
                }
            }
            return true;
        }


        private GLThreadManager()
        {
        }

    }

    class SimpleEGLConfigChooser extends ComponentSizeChooser
    {

        final GLThread this$0;

        public SimpleEGLConfigChooser(boolean flag)
        {
            this$0 = GLThread.this;
            byte byte0;
            if (flag)
            {
                byte0 = 16;
            } else
            {
                byte0 = 0;
            }
            super(5, 6, 5, 0, byte0, 0);
        }
    }


    private static final GLThreadManager sGLThreadManager = new GLThreadManager();
    private EglHelper mEglHelper;
    private ArrayList mEventQueue;
    private boolean mExited;
    private boolean mHasSurface;
    private boolean mHaveEglContext;
    private boolean mHaveEglSurface;
    private int mHeight;
    private boolean mPaused;
    private boolean mPreserveEGLContextOnPause;
    private boolean mRenderComplete;
    private android.opengl.GLSurfaceView.Renderer mRenderer;
    private boolean mRequestPaused;
    private boolean mRequestRender;
    private boolean mShouldExit;
    private boolean mShouldReleaseEglContext;
    private boolean mSizeChanged;
    private boolean mWaitingForSurface;
    private int mWidth;
    private SurfaceTexture surface;

    GLThread(android.opengl.GLSurfaceView.Renderer renderer)
    {
        mEventQueue = new ArrayList();
        mPreserveEGLContextOnPause = true;
        mSizeChanged = false;
        mWidth = 0;
        mHeight = 0;
        mRequestRender = true;
        mRenderer = renderer;
        mPaused = false;
    }

    private void checkRenderThreadState()
    {
    }

    private void guardedRun()
    {
        GL10 gl10;
        Runnable runnable;
        boolean flag;
        boolean flag1;
        int i;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        int j;
        mEglHelper = new EglHelper();
        mHaveEglContext = false;
        mHaveEglSurface = false;
        gl10 = null;
        runnable = null;
        flag = false;
        flag1 = false;
        i = 0;
        flag2 = false;
        flag3 = false;
        flag4 = false;
        flag5 = false;
        j = 0;
        if (true) goto _L2; else goto _L1
_L1:
        glthreadmanager1;
        JVM INSTR monitorenter ;
_L2:
        synchronized (sGLThreadManager)
        {
            if (!mShouldExit)
            {
                break MISSING_BLOCK_LABEL_95;
            }
        }
        synchronized (sGLThreadManager)
        {
            stopEglSurfaceLocked();
            stopEglContextLocked();
        }
        return;
        exception4;
        glthreadmanager3;
        JVM INSTR monitorexit ;
        throw exception4;
        if (mEventQueue.isEmpty()) goto _L4; else goto _L3
_L3:
        Runnable runnable3 = (Runnable)mEventQueue.remove(0);
        boolean flag7;
        boolean flag8;
        int k;
        Runnable runnable1;
        boolean flag9;
        boolean flag10;
        int i1;
        flag7 = flag3;
        flag8 = flag2;
        k = i;
        runnable1 = runnable3;
        int k1 = j;
        flag9 = flag1;
        flag10 = flag;
        i1 = k1;
_L9:
        glthreadmanager1;
        JVM INSTR monitorexit ;
        if (runnable1 == null)
        {
            break MISSING_BLOCK_LABEL_608;
        }
        runnable1.run();
        i = k;
        flag2 = flag8;
        flag3 = flag7;
        int j1 = i1;
        flag = flag10;
        flag1 = flag9;
        j = j1;
        runnable = null;
          goto _L2
_L4:
        if (mPaused != mRequestPaused)
        {
            mPaused = mRequestPaused;
            sGLThreadManager.notifyAll();
        }
        if (!mShouldReleaseEglContext)
        {
            break MISSING_BLOCK_LABEL_243;
        }
        stopEglSurfaceLocked();
        stopEglContextLocked();
        mShouldReleaseEglContext = false;
        flag = true;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_259;
        }
        stopEglSurfaceLocked();
        stopEglContextLocked();
        flag1 = false;
        if (mHaveEglSurface && mPaused)
        {
            stopEglSurfaceLocked();
            if (!mPreserveEGLContextOnPause || sGLThreadManager.shouldReleaseEGLContextWhenPausing())
            {
                stopEglContextLocked();
            }
            if (sGLThreadManager.shouldTerminateEGLWhenPausing())
            {
                mEglHelper.finish();
            }
        }
        if (!mHasSurface && !mWaitingForSurface)
        {
            if (mHaveEglSurface)
            {
                stopEglSurfaceLocked();
            }
            mWaitingForSurface = true;
            sGLThreadManager.notifyAll();
        }
        if (mHasSurface && mWaitingForSurface)
        {
            mWaitingForSurface = false;
            sGLThreadManager.notifyAll();
        }
        if (!flag5)
        {
            break MISSING_BLOCK_LABEL_390;
        }
        mRenderComplete = true;
        sGLThreadManager.notifyAll();
        if (!readyToDraw())
        {
            break MISSING_BLOCK_LABEL_599;
        }
        if (mHaveEglContext) goto _L6; else goto _L5
_L5:
        if (!flag) goto _L8; else goto _L7
_L7:
        flag = false;
_L6:
        if (!mHaveEglContext || mHaveEglSurface)
        {
            break MISSING_BLOCK_LABEL_435;
        }
        mHaveEglSurface = true;
        flag3 = true;
        flag2 = true;
        if (!mHaveEglSurface)
        {
            break MISSING_BLOCK_LABEL_599;
        }
        if (!mSizeChanged)
        {
            break MISSING_BLOCK_LABEL_469;
        }
        flag2 = true;
        i = mWidth;
        j = mHeight;
        mSizeChanged = false;
        mRequestRender = false;
        sGLThreadManager.notifyAll();
        Object obj = runnable;
        flag7 = flag3;
        flag8 = flag2;
        k = i;
        runnable1 = obj;
        int l = j;
        flag9 = flag1;
        flag10 = flag;
        i1 = l;
          goto _L9
_L8:
        boolean flag6 = sGLThreadManager.tryAcquireEglContextLocked(this);
        if (!flag6) goto _L6; else goto _L10
_L10:
        mEglHelper.start();
        mHaveEglContext = true;
        flag4 = true;
        sGLThreadManager.notifyAll();
          goto _L6
        exception2;
        glthreadmanager1;
        JVM INSTR monitorexit ;
        throw exception2;
        Exception exception;
        exception;
        synchronized (sGLThreadManager)
        {
            stopEglSurfaceLocked();
            stopEglContextLocked();
        }
        throw exception;
        RuntimeException runtimeexception;
        runtimeexception;
        sGLThreadManager.releaseEglContextLocked(this);
        throw runtimeexception;
        sGLThreadManager.wait();
        if (!flag7)
        {
            break MISSING_BLOCK_LABEL_809;
        }
        GL10 gl10_1 = (GL10)mEglHelper.createSurface(surface);
        if (gl10_1 != null)
        {
            break MISSING_BLOCK_LABEL_670;
        }
        Log.e("AddLive_SDK", "Failed to create an OpenGL Surface. Ending the GLThread run loop");
        synchronized (sGLThreadManager)
        {
            stopEglSurfaceLocked();
            stopEglContextLocked();
        }
        return;
        exception3;
        glthreadmanager2;
        JVM INSTR monitorexit ;
        throw exception3;
        sGLThreadManager.checkGLDriver(gl10_1);
        boolean flag11;
        flag11 = false;
        gl10 = gl10_1;
_L11:
        if (!flag4)
        {
            break MISSING_BLOCK_LABEL_709;
        }
        mRenderer.onSurfaceCreated(gl10, mEglHelper.mEglConfig);
        flag4 = false;
        if (!flag8)
        {
            break MISSING_BLOCK_LABEL_738;
        }
        mEglHelper.purgeBuffers();
        mRenderer.onSurfaceChanged(gl10, k, i1);
        flag8 = false;
        boolean flag12;
        mRenderer.onDrawFrame(gl10);
        flag12 = mEglHelper.swap();
        boolean flag13;
        Runnable runnable2;
        if (!flag12)
        {
            flag13 = true;
        } else
        {
            flag13 = flag9;
        }
        runnable2 = runnable1;
        i = k;
        flag2 = flag8;
        flag3 = flag11;
        flag5 = true;
        j = i1;
        flag = flag10;
        flag1 = flag13;
        runnable = runnable2;
          goto _L2
        exception1;
        glthreadmanager;
        JVM INSTR monitorexit ;
        throw exception1;
        flag11 = flag7;
          goto _L11
    }

    private boolean readyToDraw()
    {
        return !mPaused && mHasSurface && mWidth > 0 && mHeight > 0 && mRequestRender;
    }

    private void stopEglContextLocked()
    {
        if (mHaveEglContext)
        {
            mEglHelper.finish();
            mHaveEglContext = false;
            sGLThreadManager.releaseEglContextLocked(this);
        }
    }

    private void stopEglSurfaceLocked()
    {
        if (mHaveEglSurface)
        {
            mHaveEglSurface = false;
            mEglHelper.destroySurface();
        }
    }

    private void waitForRenderComplete()
    {
        while (!mExited && !mPaused && !mRenderComplete && ableToDraw()) 
        {
            try
            {
                sGLThreadManager.wait();
            }
            catch (InterruptedException interruptedexception)
            {
                Thread.currentThread().interrupt();
            }
        }
    }

    public boolean ableToDraw()
    {
        return mHaveEglContext && mHaveEglSurface && readyToDraw();
    }

    public void onPause()
    {
        GLThreadManager glthreadmanager = sGLThreadManager;
        glthreadmanager;
        JVM INSTR monitorenter ;
        mRequestPaused = true;
        sGLThreadManager.notifyAll();
_L1:
        boolean flag;
        if (mExited)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        flag = mPaused;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        sGLThreadManager.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        Thread.currentThread().interrupt();
          goto _L1
        Exception exception;
        exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
        throw exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
    }

    public void onResume()
    {
        GLThreadManager glthreadmanager = sGLThreadManager;
        glthreadmanager;
        JVM INSTR monitorenter ;
        mRequestPaused = false;
        mRequestRender = true;
        mRenderComplete = false;
        sGLThreadManager.notifyAll();
_L1:
        boolean flag;
        if (mExited || !mPaused)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        flag = mRenderComplete;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        sGLThreadManager.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        Thread.currentThread().interrupt();
          goto _L1
        Exception exception;
        exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
        throw exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
    }

    public void onWindowResize(int i, int j)
    {
        synchronized (sGLThreadManager)
        {
            mWidth = i;
            mHeight = j;
            mSizeChanged = true;
            mRequestRender = true;
            mRenderComplete = false;
            sGLThreadManager.notifyAll();
            waitForRenderComplete();
        }
        return;
        exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void queueEvent(Runnable runnable)
    {
        if (runnable == null)
        {
            throw new IllegalArgumentException("r must not be null");
        }
        synchronized (sGLThreadManager)
        {
            mEventQueue.add(runnable);
            sGLThreadManager.notifyAll();
        }
        return;
        exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void requestExitAndWait()
    {
        GLThreadManager glthreadmanager = sGLThreadManager;
        glthreadmanager;
        JVM INSTR monitorenter ;
        mShouldExit = true;
        sGLThreadManager.notifyAll();
_L1:
        boolean flag = mExited;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        sGLThreadManager.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        Thread.currentThread().interrupt();
          goto _L1
        Exception exception;
        exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
        throw exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
    }

    public void requestReleaseEglContextLocked()
    {
        mShouldReleaseEglContext = true;
        sGLThreadManager.notifyAll();
    }

    public void requestRender()
    {
        synchronized (sGLThreadManager)
        {
            mRequestRender = true;
            mRenderComplete = false;
            sGLThreadManager.notifyAll();
        }
        return;
        exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void run()
    {
        setName((new StringBuilder()).append("GLThread ").append(getId()).toString());
        guardedRun();
        sGLThreadManager.threadExiting(this);
        return;
        Exception exception1;
        exception1;
        Log.e("AddLive_SDK", "Got an error during rendering loop", exception1);
        sGLThreadManager.threadExiting(this);
        return;
        Exception exception;
        exception;
        sGLThreadManager.threadExiting(this);
        throw exception;
    }

    public void setSurface(SurfaceTexture surfacetexture)
    {
        surface = surfacetexture;
    }

    public void surfaceCreated()
    {
        Log.w("AddLive_SDK", "Processing surface created");
        GLThreadManager glthreadmanager = sGLThreadManager;
        glthreadmanager;
        JVM INSTR monitorenter ;
        mHasSurface = true;
        sGLThreadManager.notifyAll();
_L1:
        boolean flag;
        if (!mWaitingForSurface)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        flag = mExited;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        sGLThreadManager.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        Thread.currentThread().interrupt();
          goto _L1
        Exception exception;
        exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
        throw exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
        Log.w("AddLive_SDK", "surface created processed");
        return;
    }

    public void surfaceDestroyed()
    {
        GLThreadManager glthreadmanager = sGLThreadManager;
        glthreadmanager;
        JVM INSTR monitorenter ;
        mHasSurface = false;
        sGLThreadManager.notifyAll();
_L1:
        boolean flag;
        if (mWaitingForSurface)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        flag = mExited;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        sGLThreadManager.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        Thread.currentThread().interrupt();
          goto _L1
        Exception exception;
        exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
        throw exception;
        glthreadmanager;
        JVM INSTR monitorexit ;
    }



/*
    static boolean access$202(GLThread glthread, boolean flag)
    {
        glthread.mExited = flag;
        return flag;
    }

*/
}
