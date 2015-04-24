// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.view;

import javax.microedition.khronos.opengles.GL10;

// Referenced classes of package com.addlive.view:
//            GLThread

static class <init>
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
        GLThread.access$202(glthread, true);
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


    private ()
    {
    }

    ( )
    {
        this();
    }
}
