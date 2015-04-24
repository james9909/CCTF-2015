// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            SpdyConnection, Settings, ErrorCode, HeadersMode

public final class SpdyStream
{
    final class SpdyDataSink
        implements Sink
    {

        static final boolean a;
        final SpdyStream b;
        private boolean c;
        private boolean d;

        static boolean a(SpdyDataSink spdydatasink)
        {
            return spdydatasink.d;
        }

        static boolean a(SpdyDataSink spdydatasink, boolean flag)
        {
            spdydatasink.d = flag;
            return flag;
        }

        static boolean b(SpdyDataSink spdydatasink)
        {
            return spdydatasink.c;
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

        public void a_(Buffer buffer, long l1)
        {
            if (!a && Thread.holdsLock(b))
            {
                throw new AssertionError();
            }
              goto _L1
_L3:
            long l2;
            SpdyStream.g(b).b();
            SpdyStream.h(b);
            l2 = Math.min(b.b, l1);
            SpdyStream spdystream1 = b;
            spdystream1.b = spdystream1.b - l2;
            SpdyStream spdystream;
            spdystream;
            JVM INSTR monitorexit ;
            l1 -= l2;
            SpdyStream.a(b).a(SpdyStream.b(b), false, buffer, l2);
_L1:
            if (l1 <= 0L)
            {
                break; /* Loop/switch isn't completed */
            }
            spdystream = b;
            spdystream;
            JVM INSTR monitorenter ;
            SpdyStream.g(b).c();
            while (b.b <= 0L && !d && !c && SpdyStream.d(b) == null) 
            {
                SpdyStream.e(b);
            }
            if (true) goto _L3; else goto _L2
            Exception exception1;
            exception1;
            SpdyStream.g(b).b();
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

        SpdyDataSink()
        {
            b = SpdyStream.this;
            super();
        }
    }

    final class SpdyDataSource
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
            SpdyStream.c(b).c();
            for (; d.c() == 0L && !g && !f && SpdyStream.d(b) == null; SpdyStream.e(b)) { }
            break MISSING_BLOCK_LABEL_69;
            Exception exception;
            exception;
            SpdyStream.c(b).b();
            throw exception;
            SpdyStream.c(b).b();
            return;
        }

        static boolean a(SpdyDataSource spdydatasource)
        {
            return spdydatasource.g;
        }

        static boolean a(SpdyDataSource spdydatasource, boolean flag)
        {
            spdydatasource.g = flag;
            return flag;
        }

        static boolean b(SpdyDataSource spdydatasource)
        {
            return spdydatasource.f;
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

        public long a(Buffer buffer, long l1)
        {
label0:
            {
                if (l1 < 0L)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l1).toString());
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
            long l2;
            l2 = d.a(buffer, Math.min(l1, d.c()));
            SpdyStream spdystream1 = b;
            spdystream1.a = l2 + spdystream1.a;
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
                spdyconnection1.c = l2 + spdyconnection1.c;
                if (SpdyStream.a(b).c >= (long)(SpdyStream.a(b).e.e(0x10000) / 2))
                {
                    SpdyStream.a(b).a(0, SpdyStream.a(b).c);
                    SpdyStream.a(b).c = 0L;
                }
            }
            return l2;
            exception1;
            spdyconnection;
            JVM INSTR monitorexit ;
            throw exception1;
            exception;
            spdystream;
            JVM INSTR monitorexit ;
            throw exception;
        }

        void a(BufferedSource bufferedsource, long l1)
        {
            if (!a && Thread.holdsLock(b))
            {
                throw new AssertionError();
            }
              goto _L1
_L3:
            long l2;
            l1 -= l2;
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
            if (l1 <= 0L)
            {
                break MISSING_BLOCK_LABEL_146;
            }
            spdystream = b;
            spdystream;
            JVM INSTR monitorenter ;
            flag = g;
            if (l1 + d.c() > e)
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
            bufferedsource.g(l1);
            b.b(ErrorCode.h);
            return;
            exception;
            spdystream;
            JVM INSTR monitorexit ;
            throw exception;
            if (flag)
            {
                bufferedsource.g(l1);
                return;
            }
            l2 = bufferedsource.a(c, l1);
            if (l2 != -1L) goto _L3; else goto _L2
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

        private SpdyDataSource(long l1)
        {
            b = SpdyStream.this;
            super();
            c = new Buffer();
            d = new Buffer();
            e = l1;
        }

        SpdyDataSource(long l1, _cls1 _pcls1)
        {
            this(l1);
        }
    }

    class SpdyTimeout extends AsyncTimeout
    {

        final SpdyStream a;

        protected void a()
        {
            a.b(ErrorCode.l);
        }

        public void b()
        {
            if (d())
            {
                throw new InterruptedIOException("timeout");
            } else
            {
                return;
            }
        }

        SpdyTimeout()
        {
            a = SpdyStream.this;
            super();
        }
    }


    static final boolean d;
    long a;
    long b;
    final SpdyDataSink c;
    private final int e;
    private final SpdyConnection f;
    private long g;
    private final List h;
    private List i;
    private final SpdyDataSource j;
    private final SpdyTimeout k = new SpdyTimeout();
    private final SpdyTimeout l = new SpdyTimeout();
    private ErrorCode m;

    SpdyStream(int i1, SpdyConnection spdyconnection, boolean flag, boolean flag1, List list)
    {
        a = 0L;
        g = 0L;
        m = null;
        if (spdyconnection == null)
        {
            throw new NullPointerException("connection == null");
        }
        if (list == null)
        {
            throw new NullPointerException("requestHeaders == null");
        } else
        {
            e = i1;
            f = spdyconnection;
            b = spdyconnection.f.e(0x10000);
            j = new SpdyDataSource(spdyconnection.e.e(0x10000));
            c = new SpdyDataSink();
            SpdyDataSource.a(j, flag1);
            SpdyDataSink.a(c, flag);
            h = list;
            return;
        }
    }

    static SpdyConnection a(SpdyStream spdystream)
    {
        return spdystream.f;
    }

    static int b(SpdyStream spdystream)
    {
        return spdystream.e;
    }

    static SpdyTimeout c(SpdyStream spdystream)
    {
        return spdystream.k;
    }

    static ErrorCode d(SpdyStream spdystream)
    {
        return spdystream.m;
    }

    private boolean d(ErrorCode errorcode)
    {
        if (!d && Thread.holdsLock(this))
        {
            throw new AssertionError();
        }
        this;
        JVM INSTR monitorenter ;
        if (m == null)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        this;
        JVM INSTR monitorexit ;
        return false;
        if (!SpdyDataSource.a(j) || !SpdyDataSink.a(c))
        {
            break MISSING_BLOCK_LABEL_63;
        }
        this;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        m = errorcode;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        f.b(e);
        return true;
    }

    static void e(SpdyStream spdystream)
    {
        spdystream.k();
    }

    static void f(SpdyStream spdystream)
    {
        spdystream.i();
    }

    static SpdyTimeout g(SpdyStream spdystream)
    {
        return spdystream.l;
    }

    static void h(SpdyStream spdystream)
    {
        spdystream.j();
    }

    private void i()
    {
        if (!d && Thread.holdsLock(this))
        {
            throw new AssertionError();
        }
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        boolean flag1;
        if (SpdyDataSource.a(j) || !SpdyDataSource.b(j) || !SpdyDataSink.a(c) && !SpdyDataSink.b(c))
        {
            flag = false;
        } else
        {
            flag = true;
        }
        flag1 = b();
        this;
        JVM INSTR monitorexit ;
        Exception exception;
        if (flag)
        {
            a(ErrorCode.l);
        } else
        if (!flag1)
        {
            f.b(e);
            return;
        }
        return;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void j()
    {
        if (SpdyDataSink.b(c))
        {
            throw new IOException("stream closed");
        }
        if (SpdyDataSink.a(c))
        {
            throw new IOException("stream finished");
        }
        if (m != null)
        {
            throw new IOException((new StringBuilder()).append("stream was reset: ").append(m).toString());
        } else
        {
            return;
        }
    }

    private void k()
    {
        try
        {
            wait();
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            throw new InterruptedIOException();
        }
    }

    public int a()
    {
        return e;
    }

    void a(long l1)
    {
        b = l1 + b;
        if (l1 > 0L)
        {
            notifyAll();
        }
    }

    public void a(ErrorCode errorcode)
    {
        if (!d(errorcode))
        {
            return;
        } else
        {
            f.b(e, errorcode);
            return;
        }
    }

    void a(List list, HeadersMode headersmode)
    {
        if (!d && Thread.holdsLock(this))
        {
            throw new AssertionError();
        }
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        if (i != null) goto _L2; else goto _L1
_L1:
        if (!headersmode.c()) goto _L4; else goto _L3
_L3:
        ErrorCode errorcode = ErrorCode.b;
_L7:
        this;
        JVM INSTR monitorexit ;
        if (errorcode == null) goto _L6; else goto _L5
_L5:
        b(errorcode);
_L9:
        return;
_L4:
        i = list;
        flag = b();
        notifyAll();
        errorcode = null;
          goto _L7
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
label0:
        {
            if (!headersmode.d())
            {
                break label0;
            }
            errorcode = ErrorCode.e;
        }
          goto _L7
        ArrayList arraylist = new ArrayList();
        arraylist.addAll(i);
        arraylist.addAll(list);
        i = arraylist;
        errorcode = null;
          goto _L7
_L6:
        if (flag) goto _L9; else goto _L8
_L8:
        f.b(e);
        return;
          goto _L7
    }

    void a(BufferedSource bufferedsource, int i1)
    {
        if (!d && Thread.holdsLock(this))
        {
            throw new AssertionError();
        } else
        {
            j.a(bufferedsource, i1);
            return;
        }
    }

    public void b(ErrorCode errorcode)
    {
        if (!d(errorcode))
        {
            return;
        } else
        {
            f.a(e, errorcode);
            return;
        }
    }

    public boolean b()
    {
        this;
        JVM INSTR monitorenter ;
        ErrorCode errorcode = m;
        boolean flag = false;
        if (errorcode == null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        List list;
        if (!SpdyDataSource.a(j) && !SpdyDataSource.b(j) || !SpdyDataSink.a(c) && !SpdyDataSink.b(c))
        {
            break MISSING_BLOCK_LABEL_70;
        }
        list = i;
        flag = false;
        if (list != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag = true;
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    void c(ErrorCode errorcode)
    {
        this;
        JVM INSTR monitorenter ;
        if (m == null)
        {
            m = errorcode;
            notifyAll();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean c()
    {
        boolean flag;
        if ((1 & e) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return f.b == flag;
    }

    public List d()
    {
        this;
        JVM INSTR monitorenter ;
        k.c();
        while (i == null && m == null) 
        {
            k();
        }
        break MISSING_BLOCK_LABEL_45;
        Exception exception1;
        exception1;
        k.b();
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        List list;
        k.b();
        if (i == null)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        list = i;
        this;
        JVM INSTR monitorexit ;
        return list;
        throw new IOException((new StringBuilder()).append("stream was reset: ").append(m).toString());
    }

    public Timeout e()
    {
        return k;
    }

    public Source f()
    {
        return j;
    }

    public Sink g()
    {
        this;
        JVM INSTR monitorenter ;
        if (i == null && !c())
        {
            throw new IllegalStateException("reply before requesting the sink");
        }
        break MISSING_BLOCK_LABEL_31;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        this;
        JVM INSTR monitorexit ;
        return c;
    }

    void h()
    {
        if (!d && Thread.holdsLock(this))
        {
            throw new AssertionError();
        }
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        SpdyDataSource.a(j, true);
        flag = b();
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        if (!flag)
        {
            f.b(e);
        }
        return;
        Exception exception;
        exception;
        this;
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
        d = flag;
    }
}
