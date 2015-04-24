// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.util.network.ConnectivityUtils;
import java.io.IOException;
import java.util.concurrent.Callable;

public class RetryUtil
{

    public RetryUtil()
    {
    }

    public Callable a(Callable callable)
    {
        return a(callable, 500L, 32000L);
    }

    Callable a(Callable callable, long l, long l1)
    {
        return new Callable(l, callable, l1) {

            final long a;
            final Callable b;
            final long c;
            final RetryUtil d;

            public Object call()
            {
                long l2 = a;
_L2:
                Object obj = b.call();
                return obj;
                IOException ioexception;
                ioexception;
                if (!ConnectivityUtils.c() || l2 > c)
                {
                    throw ioexception;
                }
                Thread.sleep(l2);
                l2 *= 2L;
                continue; /* Loop/switch isn't completed */
                InterruptedException interruptedexception;
                interruptedexception;
                if (true) goto _L2; else goto _L1
_L1:
            }

            
            {
                d = RetryUtil.this;
                a = l;
                b = callable;
                c = l1;
                super();
            }
        };
    }
}
