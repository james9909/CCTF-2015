// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.os.Process;
import com.snapchat.android.Timber;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class ScExecutors
{
    public static class ScPriorityRunnable
        implements Runnable
    {

        final Runnable a;
        final int b;

        public void run()
        {
            Process.setThreadPriority(b);
            a.run();
        }

        public ScPriorityRunnable(Runnable runnable, int i)
        {
            a = runnable;
            b = i;
        }
    }

    static final class ScThreadFactory
        implements ThreadFactory
    {

        private static final AtomicInteger a = new AtomicInteger(0);
        private final AtomicInteger b = new AtomicInteger(0);
        private final String c;
        private final int d;

        public Thread newThread(Runnable runnable)
        {
            int i = b.incrementAndGet();
            int j = a.incrementAndGet();
            Object aobj[] = new Object[3];
            aobj[0] = c;
            aobj[1] = Integer.valueOf(i);
            aobj[2] = Integer.valueOf(j);
            Timber.b("ScExecutors", "Creating new thread in %s pool, local count:%d, global count:%d", aobj);
            ScPriorityRunnable scpriorityrunnable = new ScPriorityRunnable(runnable, d);
            Object aobj1[] = new Object[2];
            aobj1[0] = c;
            aobj1[1] = Integer.valueOf(i);
            return new Thread(scpriorityrunnable, String.format("%s-Pool-%d", aobj1));
        }


        public ScThreadFactory(String s, int i)
        {
            c = s;
            d = i;
        }
    }


    public static final ExecutorService a;
    public static final ExecutorService b;
    public static final ExecutorService c;
    public static final ExecutorService d;
    public static final ExecutorService e;
    public static final ExecutorService f;
    public static final ExecutorService g;
    public static final ScheduledThreadPoolExecutor h = new ScheduledThreadPoolExecutor(1);

    public ScExecutors()
    {
    }

    private static BlockingQueue a()
    {
        return new LinkedBlockingQueue(0x7fffffff);
    }

    static 
    {
        a = new ThreadPoolExecutor(3, 3, 10L, TimeUnit.SECONDS, a(), new ScThreadFactory("Thumbnail", 10));
        b = new ThreadPoolExecutor(3, 64, 10L, TimeUnit.SECONDS, a(), new ScThreadFactory("Network", 0));
        c = new ThreadPoolExecutor(3, 64, 10L, TimeUnit.SECONDS, a(), new ScThreadFactory("Misc", 10));
        d = new ThreadPoolExecutor(3, 64, 10L, TimeUnit.SECONDS, a(), new ScThreadFactory("HighPriority", -2));
        e = new ThreadPoolExecutor(1, 0x7fffffff, 30L, TimeUnit.SECONDS, a());
        f = new ThreadPoolExecutor(1, 0x7fffffff, 2L, TimeUnit.SECONDS, a());
        g = new ThreadPoolExecutor(1, 0x7fffffff, 1L, TimeUnit.SECONDS, a());
    }
}
