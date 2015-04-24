// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import okio.Buffer;
import okio.Sink;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            SpdyStream, SpdyConnection

final class b
    implements Sink
{

    static final boolean a;
    final SpdyStream b;
    private boolean c;
    private boolean d;

    static boolean a(b b1)
    {
        return b1.d;
    }

    static boolean a(d d1, boolean flag)
    {
        d1.d = flag;
        return flag;
    }

    static boolean b(d d1)
    {
        return d1.c;
    }

    public void a()
    {
        if (!a && Thread.holdsLock(b))
        {
            throw new AssertionError();
        }
        synchronized (b)
        {
            SpdyStream.h(b);
        }
        SpdyStream.a(b).d();
        return;
        exception;
        spdystream;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a_(Buffer buffer, long l)
    {
        if (!a && Thread.holdsLock(b))
        {
            throw new AssertionError();
        }
          goto _L1
_L3:
        long l1;
        SpdyStream.g(b).();
        SpdyStream.h(b);
        l1 = Math.min(b.b, l);
        SpdyStream spdystream1 = b;
        spdystream1.b = spdystream1.b - l1;
        SpdyStream spdystream;
        spdystream;
        JVM INSTR monitorexit ;
        l -= l1;
        SpdyStream.a(b).a(SpdyStream.b(b), false, buffer, l1);
_L1:
        if (l <= 0L)
        {
            break; /* Loop/switch isn't completed */
        }
        spdystream = b;
        spdystream;
        JVM INSTR monitorenter ;
        SpdyStream.g(b).();
        while (b.b <= 0L && !d && !c && SpdyStream.d(b) == null) 
        {
            SpdyStream.e(b);
        }
        if (true) goto _L3; else goto _L2
        Exception exception1;
        exception1;
        SpdyStream.g(b).();
        throw exception1;
        Exception exception;
        exception;
        spdystream;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
    }

    public Timeout b()
    {
        return SpdyStream.g(b);
    }

    public void close()
    {
label0:
        {
            if (!a && Thread.holdsLock(b))
            {
                throw new AssertionError();
            }
            synchronized (b)
            {
                if (!c)
                {
                    break label0;
                }
            }
            return;
        }
        spdystream;
        JVM INSTR monitorexit ;
        if (!b.c.d)
        {
            SpdyStream.a(b).a(SpdyStream.b(b), true, null, 0L);
        }
        synchronized (b)
        {
            c = true;
        }
        SpdyStream.a(b).d();
        SpdyStream.f(b);
        return;
        exception;
        spdystream;
        JVM INSTR monitorexit ;
        throw exception;
        exception1;
        spdystream1;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    static 
    {
        boolean flag;
        if (!com/squareup/okhttp/internal/spdy/SpdyStream.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }

    (SpdyStream spdystream)
    {
        b = spdystream;
        super();
    }
}
