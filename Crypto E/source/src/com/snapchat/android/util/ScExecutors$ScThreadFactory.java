// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.Timber;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.snapchat.android.util:
//            ScExecutors

static final class d
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
        le le = new le(runnable, d);
        Object aobj1[] = new Object[2];
        aobj1[0] = c;
        aobj1[1] = Integer.valueOf(i);
        return new Thread(le, String.format("%s-Pool-%d", aobj1));
    }


    public le(String s, int i)
    {
        c = s;
        d = i;
    }
}
