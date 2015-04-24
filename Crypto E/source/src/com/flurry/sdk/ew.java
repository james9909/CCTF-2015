// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.util.concurrent.ThreadFactory;

public class ew
    implements ThreadFactory
{

    private final ThreadGroup a;
    private final int b;

    public ew(String s, int i)
    {
        a = new ThreadGroup(s);
        b = i;
    }

    public Thread newThread(Runnable runnable)
    {
        Thread thread = new Thread(a, runnable);
        thread.setName((new StringBuilder()).append(a.getName()).append(":").append(thread.getId()).toString());
        thread.setPriority(b);
        return thread;
    }
}
