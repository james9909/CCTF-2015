// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.service;

import java.util.concurrent.ThreadFactory;

// Referenced classes of package com.snapchat.android.service:
//            SnapchatService

static class <init>
    implements ThreadFactory
{

    public Thread newThread(Runnable runnable)
    {
        Thread thread = new Thread(runnable);
        thread.setName((new StringBuilder()).append("Worker:").append(System.currentTimeMillis() % 0x186a0L).toString());
        thread.setPriority(1);
        return thread;
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
