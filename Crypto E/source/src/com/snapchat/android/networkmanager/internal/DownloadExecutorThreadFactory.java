// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.internal;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

class DownloadExecutorThreadFactory
    implements ThreadFactory
{

    private static final DownloadExecutorThreadFactory a = new DownloadExecutorThreadFactory();
    private final AtomicInteger b = new AtomicInteger(1);

    private DownloadExecutorThreadFactory()
    {
    }

    public static DownloadExecutorThreadFactory a()
    {
        return a;
    }

    public Thread newThread(Runnable runnable)
    {
        com.snapchat.android.util.ScExecutors.ScPriorityRunnable scpriorityrunnable = new com.snapchat.android.util.ScExecutors.ScPriorityRunnable(runnable, 10);
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(b.getAndIncrement());
        return new Thread(scpriorityrunnable, String.format("DownloadExecutor Thread", aobj));
    }

}
