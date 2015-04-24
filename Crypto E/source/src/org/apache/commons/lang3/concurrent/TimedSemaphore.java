// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.concurrent;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class TimedSemaphore
{

    public static final int NO_LIMIT = 0;
    private static final int THREAD_POOL_SIZE = 1;
    private int acquireCount;
    private final ScheduledExecutorService executorService;
    private int lastCallsPerPeriod;
    private int limit;
    private final boolean ownExecutor;
    private final long period;
    private long periodCount;
    private boolean shutdown;
    private ScheduledFuture task;
    private long totalAcquireCount;
    private final TimeUnit unit;

    public TimedSemaphore(long l, TimeUnit timeunit, int i)
    {
        this(null, l, timeunit, i);
    }

    public TimedSemaphore(ScheduledExecutorService scheduledexecutorservice, long l, TimeUnit timeunit, int i)
    {
        if (l <= 0L)
        {
            throw new IllegalArgumentException("Time period must be greater 0!");
        }
        period = l;
        unit = timeunit;
        if (scheduledexecutorservice != null)
        {
            executorService = scheduledexecutorservice;
            ownExecutor = false;
        } else
        {
            ScheduledThreadPoolExecutor scheduledthreadpoolexecutor = new ScheduledThreadPoolExecutor(1);
            scheduledthreadpoolexecutor.setContinueExistingPeriodicTasksAfterShutdownPolicy(false);
            scheduledthreadpoolexecutor.setExecuteExistingDelayedTasksAfterShutdownPolicy(false);
            executorService = scheduledthreadpoolexecutor;
            ownExecutor = true;
        }
        setLimit(i);
    }

    public void acquire()
    {
        this;
        JVM INSTR monitorenter ;
        if (isShutdown())
        {
            throw new IllegalStateException("TimedSemaphore is shut down!");
        }
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (task == null)
        {
            task = startTimer();
        }
_L2:
        boolean flag;
        if (getLimit() > 0 && acquireCount >= getLimit())
        {
            flag = false;
        } else
        {
            flag = true;
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        wait();
_L4:
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        acquireCount = 1 + acquireCount;
        if (true) goto _L4; else goto _L3
_L3:
          goto _L2
    }

    void endOfPeriod()
    {
        this;
        JVM INSTR monitorenter ;
        lastCallsPerPeriod = acquireCount;
        totalAcquireCount = totalAcquireCount + (long)acquireCount;
        periodCount = 1L + periodCount;
        acquireCount = 0;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public int getAcquireCount()
    {
        this;
        JVM INSTR monitorenter ;
        int i = acquireCount;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public int getAvailablePermits()
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        int j;
        i = getLimit();
        j = getAcquireCount();
        int k = i - j;
        this;
        JVM INSTR monitorexit ;
        return k;
        Exception exception;
        exception;
        throw exception;
    }

    public double getAverageCallsPerPeriod()
    {
        this;
        JVM INSTR monitorenter ;
        long l = periodCount;
        if (l != 0L) goto _L2; else goto _L1
_L1:
        double d1 = 0.0D;
_L4:
        this;
        JVM INSTR monitorexit ;
        return d1;
_L2:
        double d;
        long l1;
        d = totalAcquireCount;
        l1 = periodCount;
        d1 = d / (double)l1;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    protected ScheduledExecutorService getExecutorService()
    {
        return executorService;
    }

    public int getLastAcquiresPerPeriod()
    {
        this;
        JVM INSTR monitorenter ;
        int i = lastCallsPerPeriod;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public final int getLimit()
    {
        this;
        JVM INSTR monitorenter ;
        int i = limit;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public long getPeriod()
    {
        return period;
    }

    public TimeUnit getUnit()
    {
        return unit;
    }

    public boolean isShutdown()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = shutdown;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final void setLimit(int i)
    {
        this;
        JVM INSTR monitorenter ;
        limit = i;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void shutdown()
    {
        this;
        JVM INSTR monitorenter ;
        if (!shutdown)
        {
            if (ownExecutor)
            {
                getExecutorService().shutdownNow();
            }
            if (task != null)
            {
                task.cancel(false);
            }
            shutdown = true;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected ScheduledFuture startTimer()
    {
        return getExecutorService().scheduleAtFixedRate(new Runnable() {

            final TimedSemaphore this$0;

            public void run()
            {
                endOfPeriod();
            }

            
            {
                this$0 = TimedSemaphore.this;
                super();
            }
        }, getPeriod(), getPeriod(), getUnit());
    }
}
