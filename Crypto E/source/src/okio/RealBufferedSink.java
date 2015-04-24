// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package okio:
//            BufferedSink, Buffer, Source, Sink, 
//            Util, ByteString, Timeout

final class RealBufferedSink
    implements BufferedSink
{

    public final Buffer a;
    public final Sink b;
    private boolean c;

    public RealBufferedSink(Sink sink)
    {
        this(sink, new Buffer());
    }

    public RealBufferedSink(Sink sink, Buffer buffer)
    {
        if (sink == null)
        {
            throw new IllegalArgumentException("sink == null");
        } else
        {
            a = buffer;
            b = sink;
            return;
        }
    }

    static boolean a(RealBufferedSink realbufferedsink)
    {
        return realbufferedsink.c;
    }

    public long a(Source source)
    {
        if (source == null)
        {
            throw new IllegalArgumentException("source == null");
        }
        long l = 0L;
        do
        {
            long l1 = source.a(a, 2048L);
            if (l1 != -1L)
            {
                l += l1;
                w();
            } else
            {
                return l;
            }
        } while (true);
    }

    public void a()
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        }
        if (a.b > 0L)
        {
            b.a_(a, a.b);
        }
        b.a();
    }

    public void a_(Buffer buffer, long l)
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        } else
        {
            a.a_(buffer, l);
            w();
            return;
        }
    }

    public BufferedSink b(String s)
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        } else
        {
            a.a(s);
            return w();
        }
    }

    public BufferedSink b(ByteString bytestring)
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        } else
        {
            a.a(bytestring);
            return w();
        }
    }

    public Timeout b()
    {
        return b.b();
    }

    public BufferedSink c(byte abyte0[])
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        } else
        {
            a.b(abyte0);
            return w();
        }
    }

    public BufferedSink c(byte abyte0[], int j, int k)
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        } else
        {
            a.b(abyte0, j, k);
            return w();
        }
    }

    public void close()
    {
        if (!c) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j = a.b != 0L;
        Throwable throwable = null;
        if (j > 0)
        {
            try
            {
                b.a_(a, a.b);
            }
            // Misplaced declaration of an exception variable
            catch (Throwable throwable) { }
        }
        try
        {
            b.close();
        }
        catch (Throwable throwable1)
        {
            if (throwable == null)
            {
                throwable = throwable1;
            }
        }
        c = true;
        if (throwable != null)
        {
            Util.a(throwable);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public Buffer d()
    {
        return a;
    }

    public OutputStream e()
    {
        return new OutputStream() {

            final RealBufferedSink a;

            public void close()
            {
                a.close();
            }

            public void flush()
            {
                if (!RealBufferedSink.a(a))
                {
                    a.a();
                }
            }

            public String toString()
            {
                return (new StringBuilder()).append(a).append(".outputStream()").toString();
            }

            public void write(int j)
            {
                if (RealBufferedSink.a(a))
                {
                    throw new IOException("closed");
                } else
                {
                    a.a.a((byte)j);
                    a.w();
                    return;
                }
            }

            public void write(byte abyte0[], int j, int k)
            {
                if (RealBufferedSink.a(a))
                {
                    throw new IOException("closed");
                } else
                {
                    a.a.b(abyte0, j, k);
                    a.w();
                    return;
                }
            }

            
            {
                a = RealBufferedSink.this;
                super();
            }
        };
    }

    public BufferedSink f(int j)
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        } else
        {
            a.d(j);
            return w();
        }
    }

    public BufferedSink g()
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        }
        long l = a.c();
        if (l > 0L)
        {
            b.a_(a, l);
        }
        return this;
    }

    public BufferedSink g(int j)
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        } else
        {
            a.c(j);
            return w();
        }
    }

    public BufferedSink h(int j)
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        } else
        {
            a.b(j);
            return w();
        }
    }

    public BufferedSink i(int j)
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        } else
        {
            a.a(j);
            return w();
        }
    }

    public BufferedSink i(long l)
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        } else
        {
            a.h(l);
            return w();
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("buffer(").append(b).append(")").toString();
    }

    public BufferedSink w()
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        }
        long l = a.j();
        if (l > 0L)
        {
            b.a_(a, l);
        }
        return this;
    }
}
