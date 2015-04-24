// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            RetryableSink, StatusLine, OkHeaders, HttpEngine

public final class HttpConnection
{
    abstract class AbstractSource
        implements Source
    {

        protected boolean a;
        final HttpConnection b;

        protected final void a()
        {
            Util.a(HttpConnection.f(b).d());
            HttpConnection.a(b, 6);
        }

        protected final void a(boolean flag)
        {
            if (HttpConnection.c(b) != 5)
            {
                throw new IllegalStateException((new StringBuilder()).append("state: ").append(HttpConnection.c(b)).toString());
            }
            HttpConnection.a(b, 0);
            if (flag && HttpConnection.d(b) == 1)
            {
                HttpConnection.b(b, 0);
                Internal.b.a(HttpConnection.e(b), HttpConnection.f(b));
            } else
            if (HttpConnection.d(b) == 2)
            {
                HttpConnection.a(b, 6);
                HttpConnection.f(b).d().close();
                return;
            }
        }

        public Timeout b()
        {
            return HttpConnection.b(b).b();
        }

        private AbstractSource()
        {
            b = HttpConnection.this;
            super();
        }

    }

    final class ChunkedSink
        implements Sink
    {

        final HttpConnection a;
        private final byte b[] = {
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
            0, 0, 0, 0, 0, 0, 13, 10
        };
        private boolean c;

        private void a(long l1)
        {
            int i1 = 16;
            do
            {
                byte abyte0[] = b;
                i1--;
                abyte0[i1] = HttpConnection.l()[(int)(15L & l1)];
                l1 >>>= 4;
            } while (l1 != 0L);
            HttpConnection.a(a).c(b, i1, b.length - i1);
        }

        public void a()
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag = c;
            if (!flag) goto _L2; else goto _L1
_L1:
            this;
            JVM INSTR monitorexit ;
            return;
_L2:
            HttpConnection.a(a).a();
            if (true) goto _L1; else goto _L3
_L3:
            Exception exception;
            exception;
            throw exception;
        }

        public void a_(Buffer buffer, long l1)
        {
            if (c)
            {
                throw new IllegalStateException("closed");
            }
            if (l1 == 0L)
            {
                return;
            } else
            {
                a(l1);
                HttpConnection.a(a).a_(buffer, l1);
                HttpConnection.a(a).c(HttpConnection.j());
                return;
            }
        }

        public Timeout b()
        {
            return HttpConnection.a(a).b();
        }

        public void close()
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag = c;
            if (!flag) goto _L2; else goto _L1
_L1:
            this;
            JVM INSTR monitorexit ;
            return;
_L2:
            c = true;
            HttpConnection.a(a).c(HttpConnection.k());
            HttpConnection.a(a, 3);
            if (true) goto _L1; else goto _L3
_L3:
            Exception exception;
            exception;
            throw exception;
        }

        private ChunkedSink()
        {
            a = HttpConnection.this;
            super();
        }

    }

    class ChunkedSource extends AbstractSource
    {

        final HttpConnection c;
        private int d;
        private boolean e;
        private final HttpEngine f;

        private void c()
        {
            if (d != -1)
            {
                HttpConnection.b(c).s();
            }
            String s = HttpConnection.b(c).s();
            int i1 = s.indexOf(";");
            if (i1 != -1)
            {
                s = s.substring(0, i1);
            }
            try
            {
                d = Integer.parseInt(s.trim(), 16);
            }
            catch (NumberFormatException numberformatexception)
            {
                throw new ProtocolException((new StringBuilder()).append("Expected a hex chunk size but was ").append(s).toString());
            }
            if (d == 0)
            {
                e = false;
                com.squareup.okhttp.Headers.Builder builder = new com.squareup.okhttp.Headers.Builder();
                c.a(builder);
                f.a(builder.a());
                a(true);
            }
        }

        public long a(Buffer buffer, long l1)
        {
            if (l1 < 0L)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l1).toString());
            }
            if (a)
            {
                throw new IllegalStateException("closed");
            }
            if (e) goto _L2; else goto _L1
_L1:
            return -1L;
_L2:
            if (d != 0 && d != -1)
            {
                break; /* Loop/switch isn't completed */
            }
            c();
            if (!e) goto _L1; else goto _L3
_L3:
            long l2 = HttpConnection.b(c).a(buffer, Math.min(l1, d));
            if (l2 == -1L)
            {
                a();
                throw new IOException("unexpected end of stream");
            } else
            {
                d = (int)((long)d - l2);
                return l2;
            }
        }

        public void close()
        {
            if (a)
            {
                return;
            }
            if (e && !Util.a(this, 100, TimeUnit.MILLISECONDS))
            {
                a();
            }
            a = true;
        }

        ChunkedSource(HttpEngine httpengine)
        {
            c = HttpConnection.this;
            super();
            d = -1;
            e = true;
            f = httpengine;
        }
    }

    final class FixedLengthSink
        implements Sink
    {

        final HttpConnection a;
        private boolean b;
        private long c;

        public void a()
        {
            if (b)
            {
                return;
            } else
            {
                HttpConnection.a(a).a();
                return;
            }
        }

        public void a_(Buffer buffer, long l1)
        {
            if (b)
            {
                throw new IllegalStateException("closed");
            }
            Util.a(buffer.c(), 0L, l1);
            if (l1 > c)
            {
                throw new ProtocolException((new StringBuilder()).append("expected ").append(c).append(" bytes but received ").append(l1).toString());
            } else
            {
                HttpConnection.a(a).a_(buffer, l1);
                c = c - l1;
                return;
            }
        }

        public Timeout b()
        {
            return HttpConnection.a(a).b();
        }

        public void close()
        {
            if (b)
            {
                return;
            }
            b = true;
            if (c > 0L)
            {
                throw new ProtocolException("unexpected end of stream");
            } else
            {
                HttpConnection.a(a, 3);
                return;
            }
        }

        private FixedLengthSink(long l1)
        {
            a = HttpConnection.this;
            super();
            c = l1;
        }

        FixedLengthSink(long l1, _cls1 _pcls1)
        {
            this(l1);
        }
    }

    class FixedLengthSource extends AbstractSource
    {

        final HttpConnection c;
        private long d;

        public long a(Buffer buffer, long l1)
        {
            if (l1 < 0L)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l1).toString());
            }
            if (a)
            {
                throw new IllegalStateException("closed");
            }
            if (d == 0L)
            {
                return -1L;
            }
            long l2 = HttpConnection.b(c).a(buffer, Math.min(d, l1));
            if (l2 == -1L)
            {
                a();
                throw new ProtocolException("unexpected end of stream");
            }
            d = d - l2;
            if (d == 0L)
            {
                a(true);
            }
            return l2;
        }

        public void close()
        {
            if (a)
            {
                return;
            }
            if (d != 0L && !Util.a(this, 100, TimeUnit.MILLISECONDS))
            {
                a();
            }
            a = true;
        }

        public FixedLengthSource(long l1)
        {
            c = HttpConnection.this;
            super();
            d = l1;
            if (d == 0L)
            {
                a(true);
            }
        }
    }

    class UnknownLengthSource extends AbstractSource
    {

        final HttpConnection c;
        private boolean d;

        public long a(Buffer buffer, long l1)
        {
            if (l1 < 0L)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l1).toString());
            }
            if (a)
            {
                throw new IllegalStateException("closed");
            }
            if (d)
            {
                return -1L;
            }
            long l2 = HttpConnection.b(c).a(buffer, l1);
            if (l2 == -1L)
            {
                d = true;
                a(false);
                return -1L;
            } else
            {
                return l2;
            }
        }

        public void close()
        {
            if (a)
            {
                return;
            }
            if (!d)
            {
                a();
            }
            a = true;
        }

        private UnknownLengthSource()
        {
            c = HttpConnection.this;
            super();
        }

    }


    private static final byte h[] = {
        13, 10
    };
    private static final byte i[] = {
        48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 
        97, 98, 99, 100, 101, 102
    };
    private static final byte j[] = {
        48, 13, 10, 13, 10
    };
    private final ConnectionPool a;
    private final Connection b;
    private final Socket c;
    private final BufferedSource d;
    private final BufferedSink e;
    private int f;
    private int g;

    public HttpConnection(ConnectionPool connectionpool, Connection connection, Socket socket)
    {
        f = 0;
        g = 0;
        a = connectionpool;
        b = connection;
        c = socket;
        d = Okio.a(Okio.b(socket));
        e = Okio.a(Okio.a(socket));
    }

    static int a(HttpConnection httpconnection, int i1)
    {
        httpconnection.f = i1;
        return i1;
    }

    static BufferedSink a(HttpConnection httpconnection)
    {
        return httpconnection.e;
    }

    static int b(HttpConnection httpconnection, int i1)
    {
        httpconnection.g = i1;
        return i1;
    }

    static BufferedSource b(HttpConnection httpconnection)
    {
        return httpconnection.d;
    }

    static int c(HttpConnection httpconnection)
    {
        return httpconnection.f;
    }

    static int d(HttpConnection httpconnection)
    {
        return httpconnection.g;
    }

    static ConnectionPool e(HttpConnection httpconnection)
    {
        return httpconnection.a;
    }

    static Connection f(HttpConnection httpconnection)
    {
        return httpconnection.b;
    }

    static byte[] j()
    {
        return h;
    }

    static byte[] k()
    {
        return j;
    }

    static byte[] l()
    {
        return i;
    }

    public Sink a(long l1)
    {
        if (f != 1)
        {
            throw new IllegalStateException((new StringBuilder()).append("state: ").append(f).toString());
        } else
        {
            f = 2;
            return new FixedLengthSink(l1);
        }
    }

    public Source a(HttpEngine httpengine)
    {
        if (f != 4)
        {
            throw new IllegalStateException((new StringBuilder()).append("state: ").append(f).toString());
        } else
        {
            f = 5;
            return new ChunkedSource(httpengine);
        }
    }

    public void a()
    {
        g = 1;
        if (f == 0)
        {
            g = 0;
            Internal.b.a(a, b);
        }
    }

    public void a(int i1, int j1)
    {
        if (i1 != 0)
        {
            d.b().a(i1, TimeUnit.MILLISECONDS);
        }
        if (j1 != 0)
        {
            e.b().a(j1, TimeUnit.MILLISECONDS);
        }
    }

    public void a(com.squareup.okhttp.Headers.Builder builder)
    {
        do
        {
            String s = d.s();
            if (s.length() != 0)
            {
                Internal.b.a(builder, s);
            } else
            {
                return;
            }
        } while (true);
    }

    public void a(Headers headers, String s)
    {
        if (f != 0)
        {
            throw new IllegalStateException((new StringBuilder()).append("state: ").append(f).toString());
        }
        e.b(s).b("\r\n");
        int i1 = 0;
        for (int j1 = headers.a(); i1 < j1; i1++)
        {
            e.b(headers.a(i1)).b(": ").b(headers.b(i1)).b("\r\n");
        }

        e.b("\r\n");
        f = 1;
    }

    public void a(RetryableSink retryablesink)
    {
        if (f != 1)
        {
            throw new IllegalStateException((new StringBuilder()).append("state: ").append(f).toString());
        } else
        {
            f = 3;
            retryablesink.a(e);
            return;
        }
    }

    public void a(Object obj)
    {
        Internal.b.a(b, obj);
    }

    public Source b(long l1)
    {
        if (f != 4)
        {
            throw new IllegalStateException((new StringBuilder()).append("state: ").append(f).toString());
        } else
        {
            f = 5;
            return new FixedLengthSource(l1);
        }
    }

    public void b()
    {
        g = 2;
        if (f == 0)
        {
            f = 6;
            b.d().close();
        }
    }

    public boolean c()
    {
        return f == 6;
    }

    public void d()
    {
        e.a();
    }

    public long e()
    {
        return d.d().c();
    }

    public boolean f()
    {
        int i1;
        Exception exception;
        boolean flag;
        try
        {
            i1 = c.getSoTimeout();
        }
        catch (SocketTimeoutException sockettimeoutexception)
        {
            return true;
        }
        catch (IOException ioexception)
        {
            return false;
        }
        c.setSoTimeout(1);
        flag = d.h();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        c.setSoTimeout(i1);
        return false;
        c.setSoTimeout(i1);
        return true;
        exception;
        c.setSoTimeout(i1);
        throw exception;
    }

    public com.squareup.okhttp.Response.Builder g()
    {
        if (f != 1 && f != 3)
        {
            throw new IllegalStateException((new StringBuilder()).append("state: ").append(f).toString());
        }
        StatusLine statusline;
        com.squareup.okhttp.Response.Builder builder;
        do
        {
            statusline = StatusLine.a(d.s());
            builder = (new com.squareup.okhttp.Response.Builder()).a(statusline.a).a(statusline.b).a(statusline.c);
            com.squareup.okhttp.Headers.Builder builder1 = new com.squareup.okhttp.Headers.Builder();
            a(builder1);
            builder1.a(OkHeaders.d, statusline.a.toString());
            builder.a(builder1.a());
        } while (statusline.b == 100);
        f = 4;
        return builder;
    }

    public Sink h()
    {
        if (f != 1)
        {
            throw new IllegalStateException((new StringBuilder()).append("state: ").append(f).toString());
        } else
        {
            f = 2;
            return new ChunkedSink();
        }
    }

    public Source i()
    {
        if (f != 4)
        {
            throw new IllegalStateException((new StringBuilder()).append("state: ").append(f).toString());
        } else
        {
            f = 5;
            return new UnknownLengthSource();
        }
    }

}
