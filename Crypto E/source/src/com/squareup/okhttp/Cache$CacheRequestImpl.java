// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.CacheRequest;
import java.io.IOException;
import okio.ForwardingSink;
import okio.Sink;

// Referenced classes of package com.squareup.okhttp:
//            Cache

final class ditor
    implements CacheRequest
{

    final Cache a;
    private final com.squareup.okhttp.internal._cls1 b;
    private Sink c;
    private boolean d;
    private Sink e;

    static boolean a(est est)
    {
        return est.d;
    }

    static boolean a(d d1, boolean flag)
    {
        d1.d = flag;
        return flag;
    }

    public void a()
    {
label0:
        {
            synchronized (a)
            {
                if (!d)
                {
                    break label0;
                }
            }
            return;
        }
        d = true;
        Cache.c(a);
        cache;
        JVM INSTR monitorexit ;
        Util.a(c);
        try
        {
            b._mth1();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
        exception;
        cache;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Sink b()
    {
        return e;
    }

    public ditor(Cache cache, com.squareup.okhttp.internal._cls1 _pcls1)
    {
        a = cache;
        super();
        b = _pcls1;
        c = _pcls1._mth1(1);
        e = new ForwardingSink(c, cache, _pcls1) {

            final Cache a;
            final com.squareup.okhttp.internal.DiskLruCache.Editor b;
            final Cache.CacheRequestImpl c;

            public void close()
            {
label0:
                {
                    synchronized (c.a)
                    {
                        if (!Cache.CacheRequestImpl.a(c))
                        {
                            break label0;
                        }
                    }
                    return;
                }
                Cache.CacheRequestImpl.a(c, true);
                Cache.b(c.a);
                cache1;
                JVM INSTR monitorexit ;
                super.close();
                b.a();
                return;
                exception;
                cache1;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                c = Cache.CacheRequestImpl.this;
                a = cache;
                b = editor;
                super(sink);
            }
        };
    }
}
