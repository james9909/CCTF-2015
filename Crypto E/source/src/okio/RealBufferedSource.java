// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package okio:
//            BufferedSource, Buffer, Util, Source, 
//            ByteString, Timeout

final class RealBufferedSource
    implements BufferedSource
{

    public final Buffer a;
    public final Source b;
    private boolean c;

    public RealBufferedSource(Source source)
    {
        this(source, new Buffer());
    }

    public RealBufferedSource(Source source, Buffer buffer)
    {
        if (source == null)
        {
            throw new IllegalArgumentException("source == null");
        } else
        {
            a = buffer;
            b = source;
            return;
        }
    }

    static boolean a(RealBufferedSource realbufferedsource)
    {
        return realbufferedsource.c;
    }

    public int a(byte abyte0[], int j, int i1)
    {
        Util.a(abyte0.length, j, i1);
        if (a.b == 0L && b.a(a, 2048L) == -1L)
        {
            return -1;
        } else
        {
            int j1 = (int)Math.min(i1, a.b);
            return a.a(abyte0, j, j1);
        }
    }

    public long a(byte byte0)
    {
        return a(byte0, 0L);
    }

    public long a(byte byte0, long l1)
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        }
        while (l1 >= a.b) 
        {
            if (b.a(a, 2048L) == -1L)
            {
                return -1L;
            }
        }
        do
        {
            long l2 = a.a(byte0, l1);
            if (l2 == -1L)
            {
                l1 = a.b;
                if (b.a(a, 2048L) == -1L)
                {
                    return -1L;
                }
            } else
            {
                return l2;
            }
        } while (true);
    }

    public long a(Buffer buffer, long l1)
    {
        if (buffer == null)
        {
            throw new IllegalArgumentException("sink == null");
        }
        if (l1 < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l1).toString());
        }
        if (c)
        {
            throw new IllegalStateException("closed");
        }
        if (a.b == 0L && b.a(a, 2048L) == -1L)
        {
            return -1L;
        } else
        {
            long l2 = Math.min(l1, a.b);
            return a.a(buffer, l2);
        }
    }

    public void a(long l1)
    {
        if (!b(l1))
        {
            throw new EOFException();
        } else
        {
            return;
        }
    }

    public void a(byte abyte0[])
    {
        try
        {
            a(abyte0.length);
        }
        catch (EOFException eofexception)
        {
            int i1;
            for (int j = 0; a.b > 0L; j += i1)
            {
                i1 = a.a(abyte0, j, (int)a.b - j);
                if (i1 == -1)
                {
                    throw new AssertionError();
                }
            }

            throw eofexception;
        }
        a.a(abyte0);
    }

    public Timeout b()
    {
        return b.b();
    }

    public void b(Buffer buffer, long l1)
    {
        try
        {
            a(l1);
        }
        catch (EOFException eofexception)
        {
            buffer.a(a);
            throw eofexception;
        }
        a.b(buffer, l1);
    }

    public boolean b(long l1)
    {
        if (l1 < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l1).toString());
        }
        if (c)
        {
            throw new IllegalStateException("closed");
        }
        while (a.b < l1) 
        {
            if (b.a(a, 2048L) == -1L)
            {
                return false;
            }
        }
        return true;
    }

    public ByteString c(long l1)
    {
        a(l1);
        return a.c(l1);
    }

    public void close()
    {
        if (c)
        {
            return;
        } else
        {
            c = true;
            b.close();
            a.u();
            return;
        }
    }

    public Buffer d()
    {
        return a;
    }

    public byte[] f(long l1)
    {
        a(l1);
        return a.f(l1);
    }

    public void g(long l1)
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        }
_L3:
        if (l1 > 0L)
        {
            if (a.b == 0L && b.a(a, 2048L) == -1L)
            {
                throw new EOFException();
            }
        } else
        {
            return;
        }
        if (true) goto _L2; else goto _L1
_L2:
        long l2 = Math.min(l1, a.c());
        a.g(l2);
        l1 -= l2;
        if (true) goto _L3; else goto _L1
_L1:
    }

    public boolean h()
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        }
        return a.h() && b.a(a, 2048L) == -1L;
    }

    public InputStream i()
    {
        return new InputStream() {

            final RealBufferedSource a;

            public int available()
            {
                if (RealBufferedSource.a(a))
                {
                    throw new IOException("closed");
                } else
                {
                    return (int)Math.min(a.a.b, 0x7fffffffL);
                }
            }

            public void close()
            {
                a.close();
            }

            public int read()
            {
                if (RealBufferedSource.a(a))
                {
                    throw new IOException("closed");
                }
                if (a.a.b == 0L && a.b.a(a.a, 2048L) == -1L)
                {
                    return -1;
                } else
                {
                    return 0xff & a.a.k();
                }
            }

            public int read(byte abyte0[], int j, int i1)
            {
                if (RealBufferedSource.a(a))
                {
                    throw new IOException("closed");
                }
                Util.a(abyte0.length, j, i1);
                if (a.a.b == 0L && a.b.a(a.a, 2048L) == -1L)
                {
                    return -1;
                } else
                {
                    return a.a.a(abyte0, j, i1);
                }
            }

            public String toString()
            {
                return (new StringBuilder()).append(a).append(".inputStream()").toString();
            }

            
            {
                a = RealBufferedSource.this;
                super();
            }
        };
    }

    public byte k()
    {
        a(1L);
        return a.k();
    }

    public short l()
    {
        a(2L);
        return a.l();
    }

    public int m()
    {
        a(4L);
        return a.m();
    }

    public long n()
    {
        a(8L);
        return a.n();
    }

    public short o()
    {
        a(2L);
        return a.o();
    }

    public int p()
    {
        a(4L);
        return a.p();
    }

    public String s()
    {
        long l1 = a((byte)10);
        if (l1 == -1L)
        {
            Buffer buffer = new Buffer();
            a.a(buffer, 0L, Math.min(32L, a.c()));
            throw new EOFException((new StringBuilder()).append("\\n not found: size=").append(a.c()).append(" content=").append(buffer.q().c()).append("...").toString());
        } else
        {
            return a.e(l1);
        }
    }

    public byte[] t()
    {
        a.a(b);
        return a.t();
    }

    public String toString()
    {
        return (new StringBuilder()).append("buffer(").append(b).append(")").toString();
    }
}
