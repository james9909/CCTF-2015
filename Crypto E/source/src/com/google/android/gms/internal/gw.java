// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.google.android.gms.internal:
//            hf, ha, gp

public final class gw
{

    private static final ThreadFactory xt;
    private static final ExecutorService xu;

    public static Future b(Runnable runnable)
    {
        return submit(new Callable(runnable) {

            final Runnable xv;

            public Object call()
            {
                return dA();
            }

            public Void dA()
            {
                xv.run();
                return null;
            }

            
            {
                xv = runnable;
                super();
            }
        });
    }

    public static Future submit(Callable callable)
    {
        Future future;
        try
        {
            future = xu.submit(new Callable(callable) {

                final Callable xw;

                public Object call()
                {
                    Object obj;
                    try
                    {
                        Process.setThreadPriority(10);
                        obj = xw.call();
                    }
                    catch (Exception exception)
                    {
                        gp.e(exception);
                        throw exception;
                    }
                    return obj;
                }

            
            {
                xw = callable;
                super();
            }
            });
        }
        catch (RejectedExecutionException rejectedexecutionexception)
        {
            hf.d("Thread execution is rejected.", rejectedexecutionexception);
            return new ha(null);
        }
        return future;
    }

    static 
    {
        xt = new ThreadFactory() {

            private final AtomicInteger xx = new AtomicInteger(1);

            public Thread newThread(Runnable runnable)
            {
                return new Thread(runnable, (new StringBuilder()).append("AdWorker #").append(xx.getAndIncrement()).toString());
            }

        };
        xu = Executors.newFixedThreadPool(10, xt);
    }
}
