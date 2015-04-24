// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidannotations.api;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class BackgroundExecutor
{
    public static abstract class Task
        implements Runnable
    {

        private String a;
        private int b;
        private long c;
        private String d;
        private boolean e;
        private Future f;
        private AtomicBoolean g;

        static String a(Task task)
        {
            return task.d;
        }

        static Future a(Task task, Future future)
        {
            task.f = future;
            return future;
        }

        static boolean a(Task task, boolean flag)
        {
            task.e = flag;
            return flag;
        }

        static int b(Task task)
        {
            return task.b;
        }

        private void b()
        {
            if (a == null && d == null)
            {
                return;
            }
            org/androidannotations/api/BackgroundExecutor;
            JVM INSTR monitorenter ;
            Task task;
            BackgroundExecutor.a().remove(this);
            if (d == null)
            {
                break MISSING_BLOCK_LABEL_75;
            }
            task = BackgroundExecutor.a(d);
            if (task == null)
            {
                break MISSING_BLOCK_LABEL_75;
            }
            if (task.b != 0)
            {
                task.b = Math.max(0, (int)(c - System.currentTimeMillis()));
            }
            BackgroundExecutor.a(task);
            org/androidannotations/api/BackgroundExecutor;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            org/androidannotations/api/BackgroundExecutor;
            JVM INSTR monitorexit ;
            throw exception;
        }

        static String c(Task task)
        {
            return task.a;
        }

        static boolean d(Task task)
        {
            return task.e;
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


    public static Executor a;
    private static Executor b;
    private static final List c = new ArrayList();

    public BackgroundExecutor()
    {
    }

    static List a()
    {
        return c;
    }

    private static Future a(Runnable runnable, int i)
    {
        if (i > 0)
        {
            if (!(b instanceof ScheduledExecutorService))
            {
                throw new IllegalArgumentException("The executor set does not support scheduling");
            } else
            {
                return ((ScheduledExecutorService)b).schedule(runnable, i, TimeUnit.MILLISECONDS);
            }
        }
        if (b instanceof ExecutorService)
        {
            return ((ExecutorService)b).submit(runnable);
        } else
        {
            b.execute(runnable);
            return null;
        }
    }

    static Task a(String s)
    {
        return c(s);
    }

    public static void a(Task task)
    {
        org/androidannotations/api/BackgroundExecutor;
        JVM INSTR monitorenter ;
        boolean flag;
        if (Task.a(task) == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        flag = b(Task.a(task));
        Future future;
        future = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        Task.a(task, true);
        future = a(((Runnable) (task)), Task.b(task));
        if (Task.c(task) != null || Task.a(task) != null)
        {
            Task.a(task, future);
            c.add(task);
        }
        org/androidannotations/api/BackgroundExecutor;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private static boolean b(String s)
    {
        for (Iterator iterator = c.iterator(); iterator.hasNext();)
        {
            Task task = (Task)iterator.next();
            if (Task.d(task) && s.equals(Task.a(task)))
            {
                return true;
            }
        }

        return false;
    }

    private static Task c(String s)
    {
        int i = c.size();
        for (int j = 0; j < i; j++)
        {
            if (s.equals(Task.a((Task)c.get(j))))
            {
                return (Task)c.remove(j);
            }
        }

        return null;
    }

    static 
    {
        a = Executors.newScheduledThreadPool(2 * Runtime.getRuntime().availableProcessors());
        b = a;
    }

    // Unreferenced inner class org/androidannotations/api/BackgroundExecutor$1

/* anonymous class */
    static final class _cls1 extends Task
    {

        final Runnable a;

        public void a()
        {
            a.run();
        }
    }

}
