// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            cx

public final class cy extends df.a
{

    private final Object mL = new Object();
    private da.a re;
    private cx rf;

    public cy()
    {
    }

    public void a(cx cx1)
    {
        synchronized (mL)
        {
            rf = cx1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(da.a a1)
    {
        synchronized (mL)
        {
            re = a1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onAdClicked()
    {
        synchronized (mL)
        {
            if (rf != null)
            {
                rf.ag();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onAdClosed()
    {
        synchronized (mL)
        {
            if (rf != null)
            {
                rf.ah();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onAdFailedToLoad(int i)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (re == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        Exception exception;
        int j;
        if (i == 3)
        {
            j = 1;
        } else
        {
            j = 2;
        }
        re.k(j);
        re = null;
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onAdLeftApplication()
    {
        synchronized (mL)
        {
            if (rf != null)
            {
                rf.ai();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onAdLoaded()
    {
label0:
        {
            synchronized (mL)
            {
                if (re == null)
                {
                    break label0;
                }
                re.k(0);
                re = null;
            }
            return;
        }
        if (rf != null)
        {
            rf.ak();
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onAdOpened()
    {
        synchronized (mL)
        {
            if (rf != null)
            {
                rf.aj();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
