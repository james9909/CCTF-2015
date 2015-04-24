// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.common.api:
//            PendingResult, Result, Status, BaseImplementation, 
//            ResultCallback

public static abstract class mHandler
    implements mHandler, PendingResult
{

    private final Object QM;
    private final ArrayList QN;
    private ResultCallback QO;
    private volatile Result QP;
    private volatile boolean QQ;
    private boolean QR;
    private boolean QS;
    private n QT;
    protected final meoutResultCallback mHandler;
    private final CountDownLatch mm;

    static void a(mHandler mhandler)
    {
        mhandler.iT();
    }

    private void c(Result result)
    {
        QP = result;
        QT = null;
        mm.countDown();
        Status status = QP.getStatus();
        if (QO != null)
        {
            mHandler.TimeoutMessages();
            if (!QR)
            {
                mHandler.sultCallback(QO, iQ());
            }
        }
        for (Iterator iterator = QN.iterator(); iterator.hasNext(); ((QN)iterator.next()).QN(status)) { }
        QN.clear();
    }

    private Result iQ()
    {
        Object obj = QM;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        Result result;
        if (!QQ)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.a(flag, "Result has already been consumed.");
        s.a(isReady(), "Result is not ready.");
        result = QP;
        iR();
        obj;
        JVM INSTR monitorexit ;
        return result;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void iS()
    {
        synchronized (QM)
        {
            if (!isReady())
            {
                b(b(Status.RR));
                QS = true;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void iT()
    {
        synchronized (QM)
        {
            if (!isReady())
            {
                b(b(Status.RT));
                QS = true;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void a(QS qs)
    {
        boolean flag;
        Object obj;
        Exception exception;
        if (!QQ)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.a(flag, "Result has already been consumed.");
        obj = QM;
        obj;
        JVM INSTR monitorenter ;
        if (!isReady())
        {
            break MISSING_BLOCK_LABEL_47;
        }
        qs.isReady(QP.getStatus());
_L2:
        return;
        QN.add(qs);
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected final void a(n n1)
    {
        synchronized (QM)
        {
            QT = n1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final Result await()
    {
        boolean flag = true;
        boolean flag1;
        if (Looper.myLooper() != Looper.getMainLooper())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        s.a(flag1, "await must not be called on the UI thread");
        if (QQ)
        {
            flag = false;
        }
        s.a(flag, "Result has already been consumed");
        try
        {
            mm.await();
        }
        catch (InterruptedException interruptedexception)
        {
            iS();
        }
        s.a(isReady(), "Result is not ready.");
        return iQ();
    }

    public final Result await(long l, TimeUnit timeunit)
    {
        boolean flag = true;
        boolean flag1;
        if (l <= 0L || Looper.myLooper() != Looper.getMainLooper())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        s.a(flag1, "await must not be called on the UI thread when time is greater than zero.");
        if (QQ)
        {
            flag = false;
        }
        s.a(flag, "Result has already been consumed.");
        try
        {
            if (!mm.await(l, timeunit))
            {
                iT();
            }
        }
        catch (InterruptedException interruptedexception)
        {
            iS();
        }
        s.a(isReady(), "Result is not ready.");
        return iQ();
    }

    public abstract Result b(Status status);

    public final void b(Result result)
    {
        boolean flag;
label0:
        {
            flag = true;
            synchronized (QM)
            {
                if (!QS && !QR)
                {
                    break label0;
                }
                BaseImplementation.a(result);
            }
            return;
        }
        boolean flag1;
        if (!isReady())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        s.a(flag1, "Results have already been set");
        if (QQ)
        {
            flag = false;
        }
        s.a(flag, "Result has already been consumed");
        c(result);
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void cancel()
    {
label0:
        {
            synchronized (QM)
            {
                if (!QR && !QQ)
                {
                    break label0;
                }
            }
            return;
        }
        n n1 = QT;
        if (n1 == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        try
        {
            QT.cancel();
        }
        catch (RemoteException remoteexception) { }
        BaseImplementation.a(QP);
        QO = null;
        QR = true;
        c(b(Status.RU));
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void e(Object obj)
    {
        b((Result)obj);
    }

    protected void iR()
    {
        QQ = true;
        QP = null;
        QO = null;
    }

    public boolean isCanceled()
    {
        boolean flag;
        synchronized (QM)
        {
            flag = QR;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final boolean isReady()
    {
        return mm.getCount() == 0L;
    }

    public final void setResultCallback(ResultCallback resultcallback)
    {
label0:
        {
            boolean flag;
            if (!QQ)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            s.a(flag, "Result has already been consumed.");
            synchronized (QM)
            {
                if (!isCanceled())
                {
                    break label0;
                }
            }
            return;
        }
        if (!isReady())
        {
            break MISSING_BLOCK_LABEL_61;
        }
        mHandler.sultCallback(resultcallback, iQ());
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        QO = resultcallback;
          goto _L1
    }

    public final void setResultCallback(ResultCallback resultcallback, long l, TimeUnit timeunit)
    {
label0:
        {
            boolean flag = true;
            boolean flag1;
            if (!QQ)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            s.a(flag1, "Result has already been consumed.");
            if (mHandler == null)
            {
                flag = false;
            }
            s.a(flag, "CallbackHandler has not been set before calling setResultCallback.");
            synchronized (QM)
            {
                if (!isCanceled())
                {
                    break label0;
                }
            }
            return;
        }
        if (!isReady())
        {
            break MISSING_BLOCK_LABEL_86;
        }
        mHandler.sultCallback(resultcallback, iQ());
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        QO = resultcallback;
        mHandler.meoutResultCallback(this, timeunit.toMillis(l));
          goto _L1
    }

    protected (Looper looper)
    {
        QM = new Object();
        mm = new CountDownLatch(1);
        QN = new ArrayList();
        mHandler = new (looper);
    }

    protected ( )
    {
        QM = new Object();
        mm = new CountDownLatch(1);
        QN = new ArrayList();
        mHandler = ;
    }
}
