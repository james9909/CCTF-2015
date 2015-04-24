// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.squareup.okhttp:
//            Call

public final class Dispatcher
{

    private int a;
    private int b;
    private ExecutorService c;
    private final Deque d = new ArrayDeque();
    private final Deque e = new ArrayDeque();
    private final Deque f = new ArrayDeque();

    public Dispatcher()
    {
        a = 64;
        b = 5;
    }

    private int b(Call.AsyncCall asynccall)
    {
        Iterator iterator = e.iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            int j;
            if (((Call.AsyncCall)iterator.next()).a().equals(asynccall.a()))
            {
                j = i + 1;
            } else
            {
                j = i;
            }
            i = j;
        }
        return i;
    }

    private void b()
    {
_L2:
        return;
        if (e.size() < a && !d.isEmpty())
        {
            Iterator iterator = d.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    continue; /* Loop/switch isn't completed */
                }
                Call.AsyncCall asynccall = (Call.AsyncCall)iterator.next();
                if (b(asynccall) < b)
                {
                    iterator.remove();
                    e.add(asynccall);
                    a().execute(asynccall);
                }
            } while (e.size() < a);
        }
          goto _L1
        if (true) goto _L2; else goto _L1
_L1:
    }

    public ExecutorService a()
    {
        this;
        JVM INSTR monitorenter ;
        ExecutorService executorservice;
        if (c == null)
        {
            c = new ThreadPoolExecutor(0, 0x7fffffff, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.a("OkHttp Dispatcher", false));
        }
        executorservice = c;
        this;
        JVM INSTR monitorexit ;
        return executorservice;
        Exception exception;
        exception;
        throw exception;
    }

    void a(Call.AsyncCall asynccall)
    {
        this;
        JVM INSTR monitorenter ;
        if (!e.remove(asynccall))
        {
            throw new AssertionError("AsyncCall wasn't running!");
        }
        break MISSING_BLOCK_LABEL_30;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        b();
        this;
        JVM INSTR monitorexit ;
    }

    void a(Call call)
    {
        this;
        JVM INSTR monitorenter ;
        f.add(call);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    void b(Call call)
    {
        this;
        JVM INSTR monitorenter ;
        if (!f.remove(call))
        {
            throw new AssertionError("Call wasn't in-flight!");
        }
        break MISSING_BLOCK_LABEL_30;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }
}
