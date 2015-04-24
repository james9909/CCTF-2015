// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.IOException;
import java.io.InterruptedIOException;

// Referenced classes of package okio:
//            Timeout, Sink, Source, Buffer

public class AsyncTimeout extends Timeout
{
    static final class Watchdog extends Thread
    {

        public void run()
        {
            do
            {
                AsyncTimeout asynctimeout;
                do
                {
                    asynctimeout = AsyncTimeout.e();
                } while (asynctimeout == null);
                try
                {
                    asynctimeout.a();
                }
                catch (InterruptedException interruptedexception) { }
            } while (true);
        }

        public Watchdog()
        {
            super("Okio Watchdog");
            setDaemon(true);
        }
    }


    private static AsyncTimeout a;
    private boolean c;
    private AsyncTimeout d;
    private long e;

    public AsyncTimeout()
    {
    }

    private static void a(AsyncTimeout asynctimeout, long l, boolean flag)
    {
        okio/AsyncTimeout;
        JVM INSTR monitorenter ;
        long l1;
        if (a == null)
        {
            a = new AsyncTimeout();
            (new Watchdog()).start();
        }
        l1 = System.nanoTime();
        if (l == 0L || !flag) goto _L2; else goto _L1
_L1:
        asynctimeout.e = l1 + Math.min(l, asynctimeout.h() - l1);
_L3:
        long l2;
        l2 = asynctimeout.b(l1);
        Exception exception;
        long l3;
        for (AsyncTimeout asynctimeout1 = a; asynctimeout1.d != null && l2 >= asynctimeout1.d.b(l1); asynctimeout1 = asynctimeout1.d)
        {
            break MISSING_BLOCK_LABEL_183;
        }

        asynctimeout.d = asynctimeout1.d;
        asynctimeout1.d = asynctimeout;
        if (asynctimeout1 == a)
        {
            okio/AsyncTimeout.notify();
        }
        okio/AsyncTimeout;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (l == 0L)
        {
            break MISSING_BLOCK_LABEL_160;
        }
        l3 = l1 + l;
        asynctimeout.e = l3;
          goto _L3
        exception;
        throw exception;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        asynctimeout.e = asynctimeout.h();
          goto _L3
        throw new AssertionError();
    }

    private static boolean a(AsyncTimeout asynctimeout)
    {
        okio/AsyncTimeout;
        JVM INSTR monitorenter ;
        AsyncTimeout asynctimeout1 = a;
_L8:
        if (asynctimeout1 == null) goto _L2; else goto _L1
_L1:
        if (asynctimeout1.d != asynctimeout) goto _L4; else goto _L3
_L3:
        asynctimeout1.d = asynctimeout.d;
        asynctimeout.d = null;
        boolean flag = false;
_L6:
        okio/AsyncTimeout;
        JVM INSTR monitorexit ;
        return flag;
_L4:
        asynctimeout1 = asynctimeout1.d;
        continue; /* Loop/switch isn't completed */
_L2:
        flag = true;
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private long b(long l)
    {
        return e - l;
    }

    private static AsyncTimeout b()
    {
        AsyncTimeout asynctimeout = null;
        okio/AsyncTimeout;
        JVM INSTR monitorenter ;
        AsyncTimeout asynctimeout1 = a.d;
        if (asynctimeout1 != null) goto _L2; else goto _L1
_L1:
        okio/AsyncTimeout.wait();
_L4:
        okio/AsyncTimeout;
        JVM INSTR monitorexit ;
        return asynctimeout;
_L2:
        long l = asynctimeout1.b(System.nanoTime());
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        long l1 = l / 0xf4240L;
        okio/AsyncTimeout.wait(l1, (int)(l - 0xf4240L * l1));
        asynctimeout = null;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
        a.d = asynctimeout1.d;
        asynctimeout1.d = null;
        asynctimeout = asynctimeout1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    static AsyncTimeout e()
    {
        return b();
    }

    final IOException a(IOException ioexception)
    {
        if (!d())
        {
            return ioexception;
        } else
        {
            InterruptedIOException interruptedioexception = new InterruptedIOException("timeout");
            interruptedioexception.initCause(ioexception);
            return interruptedioexception;
        }
    }

    public final Sink a(Sink sink)
    {
        return new Sink(sink) {

            final Sink a;
            final AsyncTimeout b;

            public void a()
            {
                b.c();
                a.a();
                b.a(true);
                return;
                IOException ioexception;
                ioexception;
                throw b.a(ioexception);
                Exception exception;
                exception;
                b.a(false);
                throw exception;
            }

            public void a_(Buffer buffer, long l)
            {
                b.c();
                a.a_(buffer, l);
                b.a(true);
                return;
                IOException ioexception;
                ioexception;
                throw b.a(ioexception);
                Exception exception;
                exception;
                b.a(false);
                throw exception;
            }

            public Timeout b()
            {
                return b;
            }

            public void close()
            {
                b.c();
                a.close();
                b.a(true);
                return;
                IOException ioexception;
                ioexception;
                throw b.a(ioexception);
                Exception exception;
                exception;
                b.a(false);
                throw exception;
            }

            public String toString()
            {
                return (new StringBuilder()).append("AsyncTimeout.sink(").append(a).append(")").toString();
            }

            
            {
                b = AsyncTimeout.this;
                a = sink;
                super();
            }
        };
    }

    public final Source a(Source source)
    {
        return new Source(source) {

            final Source a;
            final AsyncTimeout b;

            public long a(Buffer buffer, long l)
            {
                b.c();
                long l1 = a.a(buffer, l);
                b.a(true);
                return l1;
                IOException ioexception;
                ioexception;
                throw b.a(ioexception);
                Exception exception;
                exception;
                b.a(false);
                throw exception;
            }

            public Timeout b()
            {
                return b;
            }

            public void close()
            {
                a.close();
                b.a(true);
                return;
                IOException ioexception;
                ioexception;
                throw b.a(ioexception);
                Exception exception;
                exception;
                b.a(false);
                throw exception;
            }

            public String toString()
            {
                return (new StringBuilder()).append("AsyncTimeout.source(").append(a).append(")").toString();
            }

            
            {
                b = AsyncTimeout.this;
                a = source;
                super();
            }
        };
    }

    public void a()
    {
    }

    final void a(boolean flag)
    {
        if (d() && flag)
        {
            throw new InterruptedIOException("timeout");
        } else
        {
            return;
        }
    }

    public final void c()
    {
        if (c)
        {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long l = f();
        boolean flag = g();
        if (l == 0L && !flag)
        {
            return;
        } else
        {
            c = true;
            a(this, l, flag);
            return;
        }
    }

    public final boolean d()
    {
        if (!c)
        {
            return false;
        } else
        {
            c = false;
            return a(this);
        }
    }
}
