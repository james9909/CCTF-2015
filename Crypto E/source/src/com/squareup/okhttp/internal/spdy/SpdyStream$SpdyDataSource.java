// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.BufferedSource;
import okio.Source;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            SpdyStream, SpdyConnection, Settings, ErrorCode

final class <init>
    implements Source
{

    static final boolean a;
    final SpdyStream b;
    private final Buffer c;
    private final Buffer d;
    private final long e;
    private boolean f;
    private boolean g;

    private void a()
    {
        SpdyStream.c(b).b();
        for (; d.c() == 0L && !g && !f && SpdyStream.d(b) == null; SpdyStream.e(b)) { }
        break MISSING_BLOCK_LABEL_69;
        Exception exception;
        exception;
        SpdyStream.c(b).b();
        throw exception;
        SpdyStream.c(b).b();
        return;
    }

    static boolean a(b b1)
    {
        return b1.g;
    }

    static boolean a(g g1, boolean flag)
    {
        g1.g = flag;
        return flag;
    }

    static boolean b(g g1)
    {
        return g1.f;
    }

    private void c()
    {
        if (f)
        {
            throw new IOException("stream closed");
        }
        if (SpdyStream.d(b) != null)
        {
            throw new IOException((new StringBuilder()).append("stream was reset: ").append(SpdyStream.d(b)).toString());
        } else
        {
            return;
        }
    }

    public long a(Buffer buffer, long l)
    {
label0:
        {
            if (l < 0L)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l).toString());
            }
            synchronized (b)
            {
                a();
                c();
                if (d.c() != 0L)
                {
                    break label0;
                }
            }
            return -1L;
        }
        long l1;
        l1 = d.a(buffer, Math.min(l, d.c()));
        SpdyStream spdystream1 = b;
        spdystream1.a = l1 + spdystream1.a;
        if (b.a >= (long)(SpdyStream.a(b).e.e(0x10000) / 2))
        {
            SpdyStream.a(b).a(SpdyStream.b(b), b.a);
            b.a = 0L;
        }
        spdystream;
        JVM INSTR monitorexit ;
        synchronized (SpdyStream.a(b))
        {
            SpdyConnection spdyconnection1 = SpdyStream.a(b);
            spdyconnection1.c = l1 + spdyconnection1.c;
            if (SpdyStream.a(b).c >= (long)(SpdyStream.a(b).e.e(0x10000) / 2))
            {
                SpdyStream.a(b).a(0, SpdyStream.a(b).c);
                SpdyStream.a(b).c = 0L;
            }
        }
        return l1;
        exception1;
        spdyconnection;
        JVM INSTR monitorexit ;
        throw exception1;
        exception;
        spdystream;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void a(BufferedSource bufferedsource, long l)
    {
        if (!a && Thread.holdsLock(b))
        {
            throw new AssertionError();
        }
          goto _L1
_L3:
        long l1;
        l -= l1;
        SpdyStream spdystream1 = b;
        spdystream1;
        JVM INSTR monitorenter ;
        SpdyStream spdystream;
        Exception exception;
        boolean flag;
        boolean flag1;
        boolean flag2;
        if (d.c() == 0L)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        d.a(c);
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        b.notifyAll();
        spdystream1;
        JVM INSTR monitorexit ;
_L1:
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_146;
        }
        spdystream = b;
        spdystream;
        JVM INSTR monitorenter ;
        flag = g;
        if (l + d.c() > e)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        spdystream;
        JVM INSTR monitorexit ;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        bufferedsource.g(l);
        b.b(ErrorCode.h);
        return;
        exception;
        spdystream;
        JVM INSTR monitorexit ;
        throw exception;
        if (flag)
        {
            bufferedsource.g(l);
            return;
        }
        l1 = bufferedsource.a(c, l);
        if (l1 != -1L) goto _L3; else goto _L2
_L2:
        throw new EOFException();
        Exception exception1;
        exception1;
        spdystream1;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public Timeout b()
    {
        return SpdyStream.c(b);
    }

    public void close()
    {
        synchronized (b)
        {
            f = true;
            d.u();
            b.notifyAll();
        }
        SpdyStream.f(b);
        return;
        exception;
        spdystream;
        JVM INSTR monitorexit ;
        throw exception;
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

    private A(SpdyStream spdystream, long l)
    {
        b = spdystream;
        super();
        c = new Buffer();
        d = new Buffer();
        e = l;
    }

    e(SpdyStream spdystream, long l, e e1)
    {
        this(spdystream, l);
    }
}
