// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

// Referenced classes of package okio:
//            Source, Okio, InflaterSource, BufferedSource, 
//            Buffer, Segment, Timeout

public final class GzipSource
    implements Source
{

    private int a;
    private final BufferedSource b;
    private final Inflater c;
    private final InflaterSource d;
    private final CRC32 e = new CRC32();

    public GzipSource(Source source)
    {
        a = 0;
        if (source == null)
        {
            throw new IllegalArgumentException("source == null");
        } else
        {
            c = new Inflater(true);
            b = Okio.a(source);
            d = new InflaterSource(b, c);
            return;
        }
    }

    private void a()
    {
        b.a(10L);
        byte byte0 = b.d().b(3L);
        boolean flag;
        if ((1 & byte0 >> 1) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            a(b.d(), 0L, 10L);
        }
        a("ID1ID2", 8075, b.l());
        b.g(8L);
        if ((1 & byte0 >> 2) == 1)
        {
            b.a(2L);
            if (flag)
            {
                a(b.d(), 0L, 2L);
            }
            int i = b.d().o();
            b.a(i);
            if (flag)
            {
                a(b.d(), 0L, i);
            }
            b.g(i);
        }
        if ((1 & byte0 >> 3) == 1)
        {
            long l1 = b.a((byte)0);
            if (l1 == -1L)
            {
                throw new EOFException();
            }
            if (flag)
            {
                a(b.d(), 0L, 1L + l1);
            }
            b.g(1L + l1);
        }
        if ((1 & byte0 >> 4) == 1)
        {
            long l = b.a((byte)0);
            if (l == -1L)
            {
                throw new EOFException();
            }
            if (flag)
            {
                a(b.d(), 0L, 1L + l);
            }
            b.g(1L + l);
        }
        if (flag)
        {
            a("FHCRC", b.o(), (short)(int)e.getValue());
            e.reset();
        }
    }

    private void a(String s, int i, int j)
    {
        if (j != i)
        {
            Object aobj[] = new Object[3];
            aobj[0] = s;
            aobj[1] = Integer.valueOf(j);
            aobj[2] = Integer.valueOf(i);
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", aobj));
        } else
        {
            return;
        }
    }

    private void a(Buffer buffer, long l, long l1)
    {
        Segment segment;
        for (segment = buffer.a; l >= (long)(segment.c - segment.b); segment = segment.d)
        {
            l -= segment.c - segment.b;
        }

        while (l1 > 0L) 
        {
            int i = (int)(l + (long)segment.b);
            int j = (int)Math.min(segment.c - i, l1);
            e.update(segment.a, i, j);
            l1 -= j;
            segment = segment.d;
            l = 0L;
        }
    }

    private void c()
    {
        a("CRC", b.p(), (int)e.getValue());
        a("ISIZE", b.p(), c.getTotalOut());
    }

    public long a(Buffer buffer, long l)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l).toString());
        }
        if (l == 0L)
        {
            return 0L;
        }
        if (a == 0)
        {
            a();
            a = 1;
        }
        if (a == 1)
        {
            long l1 = buffer.b;
            long l2 = d.a(buffer, l);
            if (l2 != -1L)
            {
                a(buffer, l1, l2);
                return l2;
            }
            a = 2;
        }
        if (a == 2)
        {
            c();
            a = 3;
            if (!b.h())
            {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    public Timeout b()
    {
        return b.b();
    }

    public void close()
    {
        d.close();
    }
}
