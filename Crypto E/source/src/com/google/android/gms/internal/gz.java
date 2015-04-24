// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class gz
    implements Future
{

    private final Object mL = new Object();
    private boolean qK;
    private Object xC;
    private boolean xD;

    public gz()
    {
        xC = null;
        xD = false;
        qK = false;
    }

    public void b(Object obj)
    {
        Object obj1 = mL;
        obj1;
        JVM INSTR monitorenter ;
        if (xD)
        {
            throw new IllegalStateException("Provided CallbackFuture with multiple values.");
        }
        break MISSING_BLOCK_LABEL_29;
        Exception exception;
        exception;
        obj1;
        JVM INSTR monitorexit ;
        throw exception;
        xD = true;
        xC = obj;
        mL.notifyAll();
        obj1;
        JVM INSTR monitorexit ;
    }

    public boolean cancel(boolean flag)
    {
        if (!flag)
        {
            return false;
        }
        synchronized (mL)
        {
            if (!xD)
            {
                break MISSING_BLOCK_LABEL_29;
            }
        }
        return false;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        qK = true;
        xD = true;
        mL.notifyAll();
        obj;
        JVM INSTR monitorexit ;
        return true;
    }

    public Object get()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        boolean flag = xD;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        Exception exception;
        Object obj1;
        try
        {
            mL.wait();
        }
        catch (InterruptedException interruptedexception) { }
        if (qK)
        {
            throw new CancellationException("CallbackFuture was cancelled.");
        }
        break MISSING_BLOCK_LABEL_45;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj1 = xC;
        obj;
        JVM INSTR monitorexit ;
        return obj1;
    }

    public Object get(long l, TimeUnit timeunit)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        boolean flag = xD;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        long l1 = timeunit.toMillis(l);
        if (l1 == 0L)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        Exception exception;
        Object obj1;
        try
        {
            mL.wait(l1);
        }
        catch (InterruptedException interruptedexception) { }
        if (!xD)
        {
            throw new TimeoutException("CallbackFuture timed out.");
        }
        break MISSING_BLOCK_LABEL_68;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (qK)
        {
            throw new CancellationException("CallbackFuture was cancelled.");
        }
        obj1 = xC;
        obj;
        JVM INSTR monitorexit ;
        return obj1;
    }

    public boolean isCancelled()
    {
        boolean flag;
        synchronized (mL)
        {
            flag = qK;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean isDone()
    {
        boolean flag;
        synchronized (mL)
        {
            flag = xD;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
