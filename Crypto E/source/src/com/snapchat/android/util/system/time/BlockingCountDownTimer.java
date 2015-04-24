// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.system.time;

import android.os.Handler;
import android.os.SystemClock;
import com.snapchat.android.util.threading.ThreadUtils;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class BlockingCountDownTimer
{

    private final long a;
    private final long b;
    private final Handler c;
    private final AtomicBoolean d = new AtomicBoolean(false);
    private final AtomicBoolean e = new AtomicBoolean(false);
    private final Runnable f = new Runnable() {

        final BlockingCountDownTimer a;

        public void run()
        {
            a.a();
        }

            
            {
                a = BlockingCountDownTimer.this;
                super();
            }
    };
    private final Runnable g = new Runnable() {

        final BlockingCountDownTimer a;

        public void run()
        {
            a.b();
        }

            
            {
                a = BlockingCountDownTimer.this;
                super();
            }
    };

    public BlockingCountDownTimer(int i, long l, Handler handler)
    {
        a = l * (long)i;
        b = l;
        c = handler;
    }

    static void a(BlockingCountDownTimer blockingcountdowntimer)
    {
        blockingcountdowntimer.e();
    }

    private void e()
    {
        long l;
        long l1;
        l = SystemClock.elapsedRealtime();
        l1 = l + a;
        if (l < l1) goto _L2; else goto _L1
_L1:
        f();
_L6:
        return;
_L4:
        if (c != null)
        {
            c.post(f);
        } else
        {
            a();
        }
        l += b;
_L2:
        if (l >= l1)
        {
            continue; /* Loop/switch isn't completed */
        }
        ThreadUtils.a(b);
        if (!d.get()) goto _L4; else goto _L3
_L3:
        return;
        if (d.get()) goto _L6; else goto _L5
_L5:
        f();
        return;
    }

    private void f()
    {
        AtomicBoolean atomicboolean = d;
        atomicboolean;
        JVM INSTR monitorenter ;
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        c.post(g);
_L2:
        e.set(true);
        return;
        b();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        atomicboolean;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public abstract void a();

    public abstract void b();

    public void c()
    {
        synchronized (d)
        {
            d.set(true);
        }
        return;
        exception;
        atomicboolean;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void d()
    {
        (new Thread(new Runnable() {

            final BlockingCountDownTimer a;

            public void run()
            {
                BlockingCountDownTimer.a(a);
            }

            
            {
                a = BlockingCountDownTimer.this;
                super();
            }
        })).start();
    }
}
