// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.threading;

import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.Timber;
import com.snapchat.android.util.ScExecutors;
import java.util.concurrent.ExecutorService;

public class ThreadUtils
{

    private static Handler a;
    private static boolean b = true;

    public ThreadUtils()
    {
    }

    public static void a()
    {
        if (b && !c())
        {
            throw new IllegalStateException("This method must be called only from the Main Thread.");
        } else
        {
            return;
        }
    }

    public static void a(long l)
    {
        try
        {
            Thread.sleep(l);
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            Timber.a("ThreadUtils", interruptedexception);
        }
    }

    public static void a(Runnable runnable)
    {
        if (a == null)
        {
            a = new Handler(Looper.getMainLooper());
        }
        com.snapchat.android.util.ScExecutors.ScPriorityRunnable scpriorityrunnable = new com.snapchat.android.util.ScExecutors.ScPriorityRunnable(runnable, -2);
        a.post(scpriorityrunnable);
    }

    public static void a(Thread thread)
    {
        boolean flag = false;
_L2:
        thread.join();
        if (flag)
        {
            Thread.currentThread().interrupt();
        }
        return;
        InterruptedException interruptedexception;
        interruptedexception;
        flag = true;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void b()
    {
        if (b && c())
        {
            throw new IllegalStateException("This method must not be called from the Main Thread.");
        } else
        {
            return;
        }
    }

    public static void b(Runnable runnable)
    {
        ScExecutors.c.execute(runnable);
    }

    public static boolean c()
    {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

}
