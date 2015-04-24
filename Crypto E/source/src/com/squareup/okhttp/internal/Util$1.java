// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import java.util.concurrent.ThreadFactory;

// Referenced classes of package com.squareup.okhttp.internal:
//            Util

static final class b
    implements ThreadFactory
{

    final String a;
    final boolean b;

    public Thread newThread(Runnable runnable)
    {
        Thread thread = new Thread(runnable, a);
        thread.setDaemon(b);
        return thread;
    }

    (String s, boolean flag)
    {
        a = s;
        b = flag;
        super();
    }
}
