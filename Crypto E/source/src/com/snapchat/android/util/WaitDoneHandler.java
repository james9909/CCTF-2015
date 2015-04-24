// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.Timber;

public class WaitDoneHandler extends Handler
{

    public WaitDoneHandler(Looper looper)
    {
        super(looper);
    }

    public boolean d()
    {
        Object obj = new Object();
        Runnable runnable = new Runnable(obj) {

            final Object a;
            final WaitDoneHandler b;

            public void run()
            {
                synchronized (a)
                {
                    a.notifyAll();
                }
                return;
                exception1;
                obj1;
                JVM INSTR monitorexit ;
                throw exception1;
            }

            
            {
                b = WaitDoneHandler.this;
                a = obj;
                super();
            }
        };
        obj;
        JVM INSTR monitorenter ;
        post(runnable);
        obj.wait();
        obj;
        JVM INSTR monitorexit ;
        return true;
        InterruptedException interruptedexception;
        interruptedexception;
        Timber.a("WaitDoneHandler", "waitDone interrupted", new Object[0]);
        obj;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
