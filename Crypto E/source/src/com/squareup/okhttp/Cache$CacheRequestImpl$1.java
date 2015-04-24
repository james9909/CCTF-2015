// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import okio.ForwardingSink;
import okio.Sink;

// Referenced classes of package com.squareup.okhttp:
//            Cache

class b extends ForwardingSink
{

    final Cache a;
    final com.squareup.okhttp.internal. b;
    final tor c;

    public void close()
    {
label0:
        {
            synchronized (c.c)
            {
                if (!c(c))
                {
                    break label0;
                }
            }
            return;
        }
        c(c, true);
        Cache.b(c.c);
        cache;
        JVM INSTR monitorexit ;
        super.close();
        b.();
        return;
        exception;
        cache;
        JVM INSTR monitorexit ;
        throw exception;
    }

    tor(tor tor, Sink sink, Cache cache, com.squareup.okhttp.internal. )
    {
        c = tor;
        a = cache;
        b = ;
        super(sink);
    }
}
