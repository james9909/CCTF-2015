// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidannotations.api;

import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package org.androidannotations.api:
//            BackgroundExecutor

public static abstract class 
    implements Runnable
{

    private String a;
    private int b;
    private long c;
    private String d;
    private boolean e;
    private Future f;
    private AtomicBoolean g;

    static String a( )
    {
        return .d;
    }

    static Future a(d d1, Future future)
    {
        d1.f = future;
        return future;
    }

    static boolean a(f f1, boolean flag)
    {
        f1.e = flag;
        return flag;
    }

    static int b(e e1)
    {
        return e1.b;
    }

    private void b()
    {
        if (a == null && d == null)
        {
            return;
        }
        org/androidannotations/api/BackgroundExecutor;
        JVM INSTR monitorenter ;
        b b1;
        BackgroundExecutor.a().remove(this);
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        b1 = BackgroundExecutor.a(d);
        if (b1 == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        if (b1.b != 0)
        {
            b1.b = Math.max(0, (int)(c - System.currentTimeMillis()));
        }
        BackgroundExecutor.a(b1);
        org/androidannotations/api/BackgroundExecutor;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        org/androidannotations/api/BackgroundExecutor;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static String c(c c1)
    {
        return c1.a;
    }

    static boolean d(a a1)
    {
        return a1.e;
    }

    public abstract void a();

    public void run()
    {
        if (g.getAndSet(true))
        {
            return;
        }
        a();
        b();
        return;
        Exception exception;
        exception;
        b();
        throw exception;
    }
}
