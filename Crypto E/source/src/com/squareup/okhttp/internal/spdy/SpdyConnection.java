// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            Settings, Http20Draft16, Variant, Spdy3, 
//            SpdyStream, FrameWriter, ErrorCode, Ping, 
//            IncomingStreamHandler, PushObserver, HeadersMode, FrameReader

public final class SpdyConnection
    implements Closeable
{
    public static class Builder
    {

        private String a;
        private Socket b;
        private IncomingStreamHandler c;
        private Protocol d;
        private PushObserver e;
        private boolean f;

        static Protocol a(Builder builder)
        {
            return builder.d;
        }

        static PushObserver b(Builder builder)
        {
            return builder.e;
        }

        static boolean c(Builder builder)
        {
            return builder.f;
        }

        static IncomingStreamHandler d(Builder builder)
        {
            return builder.c;
        }

        static String e(Builder builder)
        {
            return builder.a;
        }

        static Socket f(Builder builder)
        {
            return builder.b;
        }

        public Builder a(Protocol protocol)
        {
            d = protocol;
            return this;
        }

        public SpdyConnection a()
        {
            return new SpdyConnection(this);
        }

        public Builder(String s1, boolean flag, Socket socket)
        {
            c = IncomingStreamHandler.a;
            d = Protocol.c;
            e = PushObserver.a;
            a = s1;
            f = flag;
            b = socket;
        }
    }

    class Reader extends NamedRunnable
        implements FrameReader.Handler
    {

        FrameReader a;
        final SpdyConnection c;

        private void a(Settings settings)
        {
            ExecutorService executorservice = SpdyConnection.f();
            Object aobj[] = new Object[1];
            aobj[0] = SpdyConnection.a(c);
            executorservice.submit(new NamedRunnable(this, "OkHttp %s ACK Settings", aobj, settings) {

                final Settings a;
                final Reader c;

                public void b()
                {
                    try
                    {
                        c.c.i.a(a);
                        return;
                    }
                    catch (IOException ioexception)
                    {
                        return;
                    }
                }

            transient 
            {
                c = reader;
                a = settings;
                super(s1, aobj);
            }
            });
        }

        public void a()
        {
        }

        public void a(int i1, int j1, int k1, boolean flag)
        {
        }

        public void a(int i1, int j1, List list)
        {
            SpdyConnection.a(c, j1, list);
        }

        public void a(int i1, long l1)
        {
            if (i1 == 0)
            {
                synchronized (c)
                {
                    SpdyConnection spdyconnection1 = c;
                    spdyconnection1.d = l1 + spdyconnection1.d;
                    c.notifyAll();
                }
                return;
            }
            break MISSING_BLOCK_LABEL_50;
            exception1;
            spdyconnection;
            JVM INSTR monitorexit ;
            throw exception1;
            SpdyStream spdystream;
            spdystream = c.a(i1);
            if (spdystream == null)
            {
                break MISSING_BLOCK_LABEL_86;
            }
            spdystream;
            JVM INSTR monitorenter ;
            spdystream.a(l1);
            spdystream;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            spdystream;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(int i1, ErrorCode errorcode)
        {
            if (SpdyConnection.a(c, i1))
            {
                SpdyConnection.a(c, i1, errorcode);
            } else
            {
                SpdyStream spdystream = c.b(i1);
                if (spdystream != null)
                {
                    spdystream.c(errorcode);
                    return;
                }
            }
        }

        public void a(int i1, ErrorCode errorcode, ByteString bytestring)
        {
            if (bytestring.e() <= 0);
            SpdyStream aspdystream[];
            synchronized (c)
            {
                aspdystream = (SpdyStream[])SpdyConnection.e(c).values().toArray(new SpdyStream[SpdyConnection.e(c).size()]);
                SpdyConnection.b(c, true);
            }
            int j1 = aspdystream.length;
            for (int k1 = 0; k1 < j1; k1++)
            {
                SpdyStream spdystream = aspdystream[k1];
                if (spdystream.a() > i1 && spdystream.c())
                {
                    spdystream.c(ErrorCode.k);
                    c.b(spdystream.a());
                }
            }

            break MISSING_BLOCK_LABEL_139;
            exception;
            spdyconnection;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(boolean flag, int i1, int j1)
        {
            if (flag)
            {
                Ping ping = SpdyConnection.c(c, i1);
                if (ping != null)
                {
                    ping.b();
                }
                return;
            } else
            {
                SpdyConnection.b(c, true, i1, j1, null);
                return;
            }
        }

        public void a(boolean flag, int i1, BufferedSource bufferedsource, int j1)
        {
            if (SpdyConnection.a(c, i1))
            {
                SpdyConnection.a(c, i1, bufferedsource, j1, flag);
            } else
            {
                SpdyStream spdystream = c.a(i1);
                if (spdystream == null)
                {
                    c.a(i1, ErrorCode.c);
                    bufferedsource.g(j1);
                    return;
                }
                spdystream.a(bufferedsource, j1);
                if (flag)
                {
                    spdystream.h();
                    return;
                }
            }
        }

        public void a(boolean flag, Settings settings)
        {
            SpdyConnection spdyconnection = c;
            spdyconnection;
            JVM INSTR monitorenter ;
            int i1 = c.f.e(0x10000);
            if (!flag)
            {
                break MISSING_BLOCK_LABEL_35;
            }
            c.f.a();
            int j1;
            c.f.a(settings);
            if (c.a() == Protocol.d)
            {
                a(settings);
            }
            j1 = c.f.e(0x10000);
            long l1;
            if (j1 == -1 || j1 == i1)
            {
                break MISSING_BLOCK_LABEL_256;
            }
            l1 = j1 - i1;
            if (!SpdyConnection.g(c))
            {
                c.a(l1);
                SpdyConnection.a(c, true);
            }
            if (SpdyConnection.e(c).isEmpty()) goto _L2; else goto _L1
_L1:
            SpdyStream aspdystream[] = (SpdyStream[])SpdyConnection.e(c).values().toArray(new SpdyStream[SpdyConnection.e(c).size()]);
_L3:
            spdyconnection;
            JVM INSTR monitorexit ;
            if (aspdystream != null && l1 != 0L)
            {
                int k1 = aspdystream.length;
                for (int i2 = 0; i2 < k1; i2++)
                {
                    synchronized (aspdystream[i2])
                    {
                        spdystream.a(l1);
                    }
                }

            }
            break MISSING_BLOCK_LABEL_249;
            Exception exception;
            exception;
            spdyconnection;
            JVM INSTR monitorexit ;
            throw exception;
            exception1;
            spdystream;
            JVM INSTR monitorexit ;
            throw exception1;
            return;
_L2:
            aspdystream = null;
              goto _L3
            l1 = 0L;
            aspdystream = null;
              goto _L3
        }

        public void a(boolean flag, boolean flag1, int i1, int j1, List list, HeadersMode headersmode)
        {
            if (!SpdyConnection.a(c, i1)) goto _L2; else goto _L1
_L1:
            SpdyConnection.a(c, i1, list, flag1);
_L4:
            return;
_L2:
            synchronized (c)
            {
                if (!SpdyConnection.b(c))
                {
                    break MISSING_BLOCK_LABEL_54;
                }
            }
            return;
            exception;
            spdyconnection;
            JVM INSTR monitorexit ;
            throw exception;
            SpdyStream spdystream = c.a(i1);
            if (spdystream != null)
            {
                break MISSING_BLOCK_LABEL_228;
            }
            if (!headersmode.a())
            {
                break MISSING_BLOCK_LABEL_92;
            }
            c.a(i1, ErrorCode.c);
            spdyconnection;
            JVM INSTR monitorexit ;
            return;
            if (i1 > SpdyConnection.c(c))
            {
                break MISSING_BLOCK_LABEL_107;
            }
            spdyconnection;
            JVM INSTR monitorexit ;
            return;
            if (i1 % 2 != SpdyConnection.d(c) % 2)
            {
                break MISSING_BLOCK_LABEL_126;
            }
            spdyconnection;
            JVM INSTR monitorexit ;
            return;
            SpdyStream spdystream1 = new SpdyStream(i1, c, flag, flag1, list);
            SpdyConnection.b(c, i1);
            SpdyConnection.e(c).put(Integer.valueOf(i1), spdystream1);
            ExecutorService executorservice = SpdyConnection.f();
            Object aobj[] = new Object[2];
            aobj[0] = SpdyConnection.a(c);
            aobj[1] = Integer.valueOf(i1);
            executorservice.submit(new NamedRunnable(this, "OkHttp %s stream %d", aobj, spdystream1) {

                final SpdyStream a;
                final Reader c;

                public void b()
                {
                    try
                    {
                        SpdyConnection.f(c.c).a(a);
                        return;
                    }
                    catch (IOException ioexception)
                    {
                        throw new RuntimeException(ioexception);
                    }
                }

            transient 
            {
                c = reader;
                a = spdystream;
                super(s1, aobj);
            }
            });
            spdyconnection;
            JVM INSTR monitorexit ;
            return;
            spdyconnection;
            JVM INSTR monitorexit ;
            if (headersmode.b())
            {
                spdystream.b(ErrorCode.b);
                c.b(i1);
                return;
            }
            spdystream.a(list, headersmode);
            if (flag1)
            {
                spdystream.h();
                return;
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        protected void b()
        {
            ErrorCode errorcode;
            ErrorCode errorcode1;
            errorcode = ErrorCode.g;
            errorcode1 = ErrorCode.g;
            ErrorCode errorcode4;
            a = c.g.a(Okio.a(Okio.b(c.h)), c.b);
            if (!c.b)
            {
                a.a();
            }
            while (a.a(this)) ;
            errorcode = ErrorCode.a;
            errorcode4 = ErrorCode.l;
            Exception exception;
            ErrorCode errorcode2;
            Exception exception1;
            IOException ioexception;
            IOException ioexception1;
            ErrorCode errorcode3;
            IOException ioexception2;
            try
            {
                SpdyConnection.a(c, errorcode, errorcode4);
            }
            catch (IOException ioexception3) { }
            Util.a(a);
            return;
            ioexception1;
            errorcode2 = ErrorCode.b;
            errorcode3 = ErrorCode.b;
            try
            {
                SpdyConnection.a(c, errorcode2, errorcode3);
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception2) { }
            Util.a(a);
            return;
            exception;
            errorcode2 = errorcode;
            exception1 = exception;
_L2:
            try
            {
                SpdyConnection.a(c, errorcode2, errorcode1);
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception) { }
            Util.a(a);
            throw exception1;
            exception1;
            if (true) goto _L2; else goto _L1
_L1:
        }

        private Reader()
        {
            c = SpdyConnection.this;
            Object aobj[] = new Object[1];
            aobj[0] = SpdyConnection.a(SpdyConnection.this);
            super("OkHttp %s", aobj);
        }

    }


    static final boolean k;
    private static final ExecutorService l;
    final Protocol a;
    final boolean b;
    long c;
    long d;
    final Settings e;
    final Settings f;
    final Variant g;
    final Socket h;
    final FrameWriter i;
    final Reader j;
    private final IncomingStreamHandler m;
    private final Map n;
    private final String o;
    private int p;
    private int q;
    private boolean r;
    private long s;
    private final ExecutorService t;
    private Map u;
    private final PushObserver v;
    private int w;
    private boolean x;
    private final Set y;

    private SpdyConnection(Builder builder)
    {
        int i1 = 2;
        super();
        n = new HashMap();
        s = System.nanoTime();
        c = 0L;
        e = new Settings();
        f = new Settings();
        x = false;
        y = new LinkedHashSet();
        a = Builder.a(builder);
        v = Builder.b(builder);
        b = Builder.c(builder);
        m = Builder.d(builder);
        int j1;
        if (Builder.c(builder))
        {
            j1 = 1;
        } else
        {
            j1 = i1;
        }
        q = j1;
        if (Builder.c(builder) && a == Protocol.d)
        {
            q = 2 + q;
        }
        if (Builder.c(builder))
        {
            i1 = 1;
        }
        w = i1;
        if (Builder.c(builder))
        {
            e.a(7, 0, 0x1000000);
        }
        o = Builder.e(builder);
        if (a == Protocol.d)
        {
            g = new Http20Draft16();
            TimeUnit timeunit = TimeUnit.SECONDS;
            LinkedBlockingQueue linkedblockingqueue = new LinkedBlockingQueue();
            Object aobj[] = new Object[1];
            aobj[0] = o;
            t = new ThreadPoolExecutor(0, 1, 60L, timeunit, linkedblockingqueue, Util.a(String.format("OkHttp %s Push Observer", aobj), true));
            f.a(7, 0, 65535);
            f.a(5, 0, 16384);
        } else
        if (a == Protocol.c)
        {
            g = new Spdy3();
            t = null;
        } else
        {
            throw new AssertionError(a);
        }
        d = f.e(0x10000);
        h = Builder.f(builder);
        i = g.a(Okio.a(Okio.a(Builder.f(builder))), b);
        j = new Reader();
        (new Thread(j)).start();
    }


    private SpdyStream a(int i1, List list, boolean flag, boolean flag1)
    {
        boolean flag2;
        boolean flag3;
        FrameWriter framewriter;
        flag2 = true;
        Exception exception;
        Exception exception1;
        if (!flag)
        {
            flag3 = flag2;
        } else
        {
            flag3 = false;
        }
        if (flag1)
        {
            flag2 = false;
        }
        framewriter = i;
        framewriter;
        JVM INSTR monitorenter ;
        this;
        JVM INSTR monitorenter ;
        if (r)
        {
            throw new IOException("shutdown");
        }
        break MISSING_BLOCK_LABEL_71;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
        exception;
        framewriter;
        JVM INSTR monitorexit ;
        throw exception;
        int j1;
        SpdyStream spdystream;
        j1 = q;
        q = 2 + q;
        spdystream = new SpdyStream(j1, this, flag3, flag2, list);
        if (spdystream.b())
        {
            n.put(Integer.valueOf(j1), spdystream);
            a(false);
        }
        this;
        JVM INSTR monitorexit ;
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        i.a(flag3, flag2, j1, i1, list);
_L1:
        framewriter;
        JVM INSTR monitorexit ;
        if (!flag)
        {
            i.b();
        }
        return spdystream;
        if (b)
        {
            throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
        }
        i.a(i1, j1, list);
          goto _L1
    }

    static String a(SpdyConnection spdyconnection)
    {
        return spdyconnection.o;
    }

    private void a(int i1, List list)
    {
        this;
        JVM INSTR monitorenter ;
        if (!y.contains(Integer.valueOf(i1)))
        {
            break MISSING_BLOCK_LABEL_29;
        }
        a(i1, ErrorCode.b);
        this;
        JVM INSTR monitorexit ;
        return;
        y.add(Integer.valueOf(i1));
        this;
        JVM INSTR monitorexit ;
        ExecutorService executorservice = t;
        Object aobj[] = new Object[2];
        aobj[0] = o;
        aobj[1] = Integer.valueOf(i1);
        executorservice.submit(new NamedRunnable("OkHttp %s Push Request[%s]", aobj, i1, list) {

            final int a;
            final List c;
            final SpdyConnection d;

            public void b()
            {
                if (!SpdyConnection.h(d).a(a, c))
                {
                    break MISSING_BLOCK_LABEL_78;
                }
                d.i.a(a, ErrorCode.l);
                synchronized (d)
                {
                    SpdyConnection.i(d).remove(Integer.valueOf(a));
                }
                return;
                exception1;
                spdyconnection;
                JVM INSTR monitorexit ;
                try
                {
                    throw exception1;
                }
                catch (IOException ioexception) { }
            }

            transient 
            {
                d = SpdyConnection.this;
                a = i1;
                c = list;
                super(s1, aobj);
            }
        });
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(int i1, List list, boolean flag)
    {
        ExecutorService executorservice = t;
        Object aobj[] = new Object[2];
        aobj[0] = o;
        aobj[1] = Integer.valueOf(i1);
        executorservice.submit(new NamedRunnable("OkHttp %s Push Headers[%s]", aobj, i1, list, flag) {

            final int a;
            final List c;
            final boolean d;
            final SpdyConnection e;

            public void b()
            {
                boolean flag1;
                flag1 = SpdyConnection.h(e).a(a, c, d);
                if (!flag1)
                {
                    break MISSING_BLOCK_LABEL_48;
                }
                e.i.a(a, ErrorCode.l);
                if (flag1)
                {
                    break MISSING_BLOCK_LABEL_59;
                }
                if (!d)
                {
                    break MISSING_BLOCK_LABEL_97;
                }
                synchronized (e)
                {
                    SpdyConnection.i(e).remove(Integer.valueOf(a));
                }
                return;
                exception;
                spdyconnection;
                JVM INSTR monitorexit ;
                try
                {
                    throw exception;
                }
                catch (IOException ioexception) { }
            }

            transient 
            {
                e = SpdyConnection.this;
                a = i1;
                c = list;
                d = flag;
                super(s1, aobj);
            }
        });
    }

    private void a(int i1, BufferedSource bufferedsource, int j1, boolean flag)
    {
        Buffer buffer = new Buffer();
        bufferedsource.a(j1);
        bufferedsource.a(buffer, j1);
        if (buffer.c() != (long)j1)
        {
            throw new IOException((new StringBuilder()).append(buffer.c()).append(" != ").append(j1).toString());
        } else
        {
            ExecutorService executorservice = t;
            Object aobj[] = new Object[2];
            aobj[0] = o;
            aobj[1] = Integer.valueOf(i1);
            executorservice.submit(new NamedRunnable("OkHttp %s Push Data[%s]", aobj, i1, buffer, j1, flag) {

                final int a;
                final Buffer c;
                final int d;
                final boolean e;
                final SpdyConnection f;

                public void b()
                {
                    boolean flag1 = SpdyConnection.h(f).a(a, c, d, e);
                    if (!flag1)
                    {
                        break MISSING_BLOCK_LABEL_52;
                    }
                    f.i.a(a, ErrorCode.l);
                    if (flag1)
                    {
                        break MISSING_BLOCK_LABEL_63;
                    }
                    if (!e)
                    {
                        break MISSING_BLOCK_LABEL_101;
                    }
                    synchronized (f)
                    {
                        SpdyConnection.i(f).remove(Integer.valueOf(a));
                    }
                    return;
                    exception;
                    spdyconnection;
                    JVM INSTR monitorexit ;
                    try
                    {
                        throw exception;
                    }
                    catch (IOException ioexception) { }
                }

            transient 
            {
                f = SpdyConnection.this;
                a = i1;
                c = buffer;
                d = j1;
                e = flag;
                super(s1, aobj);
            }
            });
            return;
        }
    }

    private void a(ErrorCode errorcode, ErrorCode errorcode1)
    {
        if (!k && Thread.holdsLock(this))
        {
            throw new AssertionError();
        }
        a(errorcode);
        IOException ioexception1 = null;
_L1:
        this;
        JVM INSTR monitorenter ;
        SpdyStream aspdystream1[];
        if (n.isEmpty())
        {
            break MISSING_BLOCK_LABEL_304;
        }
        aspdystream1 = (SpdyStream[])n.values().toArray(new SpdyStream[n.size()]);
        n.clear();
        a(false);
        SpdyStream aspdystream[] = aspdystream1;
_L4:
        Ping aping1[];
        if (u == null)
        {
            break MISSING_BLOCK_LABEL_298;
        }
        aping1 = (Ping[])u.values().toArray(new Ping[u.size()]);
        u = null;
        Ping aping[] = aping1;
_L3:
        this;
        JVM INSTR monitorexit ;
        IOException ioexception3;
        if (aspdystream == null)
        {
            break MISSING_BLOCK_LABEL_216;
        }
        int k1 = aspdystream.length;
        int l1 = 0;
        ioexception3 = ioexception1;
        do
        {
            if (l1 >= k1)
            {
                break;
            }
            SpdyStream spdystream = aspdystream[l1];
            IOException ioexception;
            Exception exception;
            try
            {
                spdystream.a(errorcode1);
            }
            catch (IOException ioexception4)
            {
                if (ioexception3 != null)
                {
                    ioexception3 = ioexception4;
                }
            }
            l1++;
        } while (true);
        break MISSING_BLOCK_LABEL_212;
        ioexception;
        ioexception1 = ioexception;
          goto _L1
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ioexception1 = ioexception3;
        if (aping != null)
        {
            int i1 = aping.length;
            for (int j1 = 0; j1 < i1; j1++)
            {
                aping[j1].c();
            }

        }
        i.close();
        IOException ioexception2 = ioexception1;
_L2:
        try
        {
            h.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception2) { }
        if (ioexception2 != null)
        {
            throw ioexception2;
        } else
        {
            return;
        }
        ioexception2;
        if (ioexception1 != null)
        {
            ioexception2 = ioexception1;
        }
          goto _L2
        aping = null;
          goto _L3
        aspdystream = null;
          goto _L4
    }

    static void a(SpdyConnection spdyconnection, int i1, ErrorCode errorcode)
    {
        spdyconnection.c(i1, errorcode);
    }

    static void a(SpdyConnection spdyconnection, int i1, List list)
    {
        spdyconnection.a(i1, list);
    }

    static void a(SpdyConnection spdyconnection, int i1, List list, boolean flag)
    {
        spdyconnection.a(i1, list, flag);
    }

    static void a(SpdyConnection spdyconnection, int i1, BufferedSource bufferedsource, int j1, boolean flag)
    {
        spdyconnection.a(i1, bufferedsource, j1, flag);
    }

    static void a(SpdyConnection spdyconnection, ErrorCode errorcode, ErrorCode errorcode1)
    {
        spdyconnection.a(errorcode, errorcode1);
    }

    static void a(SpdyConnection spdyconnection, boolean flag, int i1, int j1, Ping ping)
    {
        spdyconnection.b(flag, i1, j1, ping);
    }

    private void a(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        long l1 = System.nanoTime();
_L1:
        s = l1;
        this;
        JVM INSTR monitorexit ;
        return;
        l1 = 0x7fffffffffffffffL;
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    private void a(boolean flag, int i1, int j1, Ping ping)
    {
        ExecutorService executorservice = l;
        Object aobj[] = new Object[3];
        aobj[0] = o;
        aobj[1] = Integer.valueOf(i1);
        aobj[2] = Integer.valueOf(j1);
        executorservice.submit(new NamedRunnable("OkHttp %s ping %08x%08x", aobj, flag, i1, j1, ping) {

            final boolean a;
            final int c;
            final int d;
            final Ping e;
            final SpdyConnection f;

            public void b()
            {
                try
                {
                    SpdyConnection.a(f, a, c, d, e);
                    return;
                }
                catch (IOException ioexception)
                {
                    return;
                }
            }

            transient 
            {
                f = SpdyConnection.this;
                a = flag;
                c = i1;
                d = j1;
                e = ping;
                super(s1, aobj);
            }
        });
    }

    static boolean a(SpdyConnection spdyconnection, int i1)
    {
        return spdyconnection.d(i1);
    }

    static boolean a(SpdyConnection spdyconnection, boolean flag)
    {
        spdyconnection.x = flag;
        return flag;
    }

    static int b(SpdyConnection spdyconnection, int i1)
    {
        spdyconnection.p = i1;
        return i1;
    }

    static void b(SpdyConnection spdyconnection, boolean flag, int i1, int j1, Ping ping)
    {
        spdyconnection.a(flag, i1, j1, ping);
    }

    private void b(boolean flag, int i1, int j1, Ping ping)
    {
        FrameWriter framewriter = i;
        framewriter;
        JVM INSTR monitorenter ;
        if (ping == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        ping.a();
        i.a(flag, i1, j1);
        framewriter;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        framewriter;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static boolean b(SpdyConnection spdyconnection)
    {
        return spdyconnection.r;
    }

    static boolean b(SpdyConnection spdyconnection, boolean flag)
    {
        spdyconnection.r = flag;
        return flag;
    }

    static int c(SpdyConnection spdyconnection)
    {
        return spdyconnection.p;
    }

    private Ping c(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        if (u == null) goto _L2; else goto _L1
_L1:
        Ping ping = (Ping)u.remove(Integer.valueOf(i1));
_L4:
        this;
        JVM INSTR monitorexit ;
        return ping;
_L2:
        ping = null;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static Ping c(SpdyConnection spdyconnection, int i1)
    {
        return spdyconnection.c(i1);
    }

    private void c(int i1, ErrorCode errorcode)
    {
        ExecutorService executorservice = t;
        Object aobj[] = new Object[2];
        aobj[0] = o;
        aobj[1] = Integer.valueOf(i1);
        executorservice.submit(new NamedRunnable("OkHttp %s Push Reset[%s]", aobj, i1, errorcode) {

            final int a;
            final ErrorCode c;
            final SpdyConnection d;

            public void b()
            {
                SpdyConnection.h(d).a(a, c);
                synchronized (d)
                {
                    SpdyConnection.i(d).remove(Integer.valueOf(a));
                }
                return;
                exception;
                spdyconnection;
                JVM INSTR monitorexit ;
                throw exception;
            }

            transient 
            {
                d = SpdyConnection.this;
                a = i1;
                c = errorcode;
                super(s1, aobj);
            }
        });
    }

    static int d(SpdyConnection spdyconnection)
    {
        return spdyconnection.q;
    }

    private boolean d(int i1)
    {
        return a == Protocol.d && i1 != 0 && (i1 & 1) == 0;
    }

    static Map e(SpdyConnection spdyconnection)
    {
        return spdyconnection.n;
    }

    static IncomingStreamHandler f(SpdyConnection spdyconnection)
    {
        return spdyconnection.m;
    }

    static ExecutorService f()
    {
        return l;
    }

    static boolean g(SpdyConnection spdyconnection)
    {
        return spdyconnection.x;
    }

    static PushObserver h(SpdyConnection spdyconnection)
    {
        return spdyconnection.v;
    }

    static Set i(SpdyConnection spdyconnection)
    {
        return spdyconnection.y;
    }

    public Protocol a()
    {
        return a;
    }

    SpdyStream a(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        SpdyStream spdystream = (SpdyStream)n.get(Integer.valueOf(i1));
        this;
        JVM INSTR monitorexit ;
        return spdystream;
        Exception exception;
        exception;
        throw exception;
    }

    public SpdyStream a(List list, boolean flag, boolean flag1)
    {
        return a(0, list, flag, flag1);
    }

    void a(int i1, long l1)
    {
        ExecutorService executorservice = l;
        Object aobj[] = new Object[2];
        aobj[0] = o;
        aobj[1] = Integer.valueOf(i1);
        executorservice.submit(new NamedRunnable("OkHttp Window Update %s stream %d", aobj, i1, l1) {

            final int a;
            final long c;
            final SpdyConnection d;

            public void b()
            {
                try
                {
                    d.i.a(a, c);
                    return;
                }
                catch (IOException ioexception)
                {
                    return;
                }
            }

            transient 
            {
                d = SpdyConnection.this;
                a = i1;
                c = l1;
                super(s1, aobj);
            }
        });
    }

    void a(int i1, ErrorCode errorcode)
    {
        ExecutorService executorservice = l;
        Object aobj[] = new Object[2];
        aobj[0] = o;
        aobj[1] = Integer.valueOf(i1);
        executorservice.submit(new NamedRunnable("OkHttp %s stream %d", aobj, i1, errorcode) {

            final int a;
            final ErrorCode c;
            final SpdyConnection d;

            public void b()
            {
                try
                {
                    d.b(a, c);
                    return;
                }
                catch (IOException ioexception)
                {
                    return;
                }
            }

            transient 
            {
                d = SpdyConnection.this;
                a = i1;
                c = errorcode;
                super(s1, aobj);
            }
        });
    }

    public void a(int i1, boolean flag, Buffer buffer, long l1)
    {
        if (l1 != 0L) goto _L2; else goto _L1
_L1:
        i.a(flag, i1, buffer, 0);
_L4:
        return;
_L5:
        int j1;
        j1 = Math.min((int)Math.min(l1, d), i.c());
        d = d - (long)j1;
        this;
        JVM INSTR monitorexit ;
        l1 -= j1;
        FrameWriter framewriter = i;
        Exception exception;
        InterruptedException interruptedexception;
        boolean flag1;
        if (flag && l1 == 0L)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        framewriter.a(flag1, i1, buffer, j1);
_L2:
        if (l1 <= 0L) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorenter ;
        while (d <= 0L) 
        {
            wait();
        }
          goto _L5
        interruptedexception;
        throw new InterruptedIOException();
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void a(long l1)
    {
        d = l1 + d;
        if (l1 > 0L)
        {
            notifyAll();
        }
    }

    public void a(ErrorCode errorcode)
    {
        FrameWriter framewriter = i;
        framewriter;
        JVM INSTR monitorenter ;
        this;
        JVM INSTR monitorenter ;
        if (!r)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        this;
        JVM INSTR monitorexit ;
        framewriter;
        JVM INSTR monitorexit ;
        return;
        int i1;
        r = true;
        i1 = p;
        this;
        JVM INSTR monitorexit ;
        i.a(i1, errorcode, Util.a);
        framewriter;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        framewriter;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    SpdyStream b(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        SpdyStream spdystream = (SpdyStream)n.remove(Integer.valueOf(i1));
        if (spdystream == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        if (n.isEmpty())
        {
            a(true);
        }
        this;
        JVM INSTR monitorexit ;
        return spdystream;
        Exception exception;
        exception;
        throw exception;
    }

    void b(int i1, ErrorCode errorcode)
    {
        i.a(i1, errorcode);
    }

    public boolean b()
    {
        this;
        JVM INSTR monitorenter ;
        long l1 = s;
        boolean flag;
        if (l1 != 0x7fffffffffffffffL)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public long c()
    {
        this;
        JVM INSTR monitorenter ;
        long l1 = s;
        this;
        JVM INSTR monitorexit ;
        return l1;
        Exception exception;
        exception;
        throw exception;
    }

    public void close()
    {
        a(ErrorCode.a, ErrorCode.l);
    }

    public void d()
    {
        i.b();
    }

    public void e()
    {
        i.a();
        i.b(e);
        int i1 = e.e(0x10000);
        if (i1 != 0x10000)
        {
            i.a(0, i1 - 0x10000);
        }
    }

    static 
    {
        boolean flag;
        if (!com/squareup/okhttp/internal/spdy/SpdyConnection.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k = flag;
        l = new ThreadPoolExecutor(0, 0x7fffffff, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.a("OkHttp SpdyConnection", true));
    }
}
