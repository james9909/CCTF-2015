// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.util.network.ConnectivityUtils;
import java.io.IOException;
import java.util.concurrent.Callable;

// Referenced classes of package com.snapchat.android.util:
//            RetryUtil

class c
    implements Callable
{

    final long a;
    final Callable b;
    final long c;
    final RetryUtil d;

    public Object call()
    {
        long l = a;
_L2:
        Object obj = b.call();
        return obj;
        IOException ioexception;
        ioexception;
        if (!ConnectivityUtils.c() || l > c)
        {
            throw ioexception;
        }
        Thread.sleep(l);
        l *= 2L;
        continue; /* Loop/switch isn't completed */
        InterruptedException interruptedexception;
        interruptedexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    ectivityUtils(RetryUtil retryutil, long l, Callable callable, long l1)
    {
        d = retryutil;
        a = l;
        b = callable;
        c = l1;
        super();
    }
}
