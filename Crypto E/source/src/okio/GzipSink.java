// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.util.zip.CRC32;
import java.util.zip.Deflater;

// Referenced classes of package okio:
//            Sink, Buffer, Segment, BufferedSink, 
//            DeflaterSink, Util, Timeout

public final class GzipSink
    implements Sink
{

    private final BufferedSink a;
    private final Deflater b;
    private final DeflaterSink c;
    private boolean d;
    private final CRC32 e;

    private void b(Buffer buffer, long l)
    {
        for (Segment segment = buffer.a; l > 0L; segment = segment.d)
        {
            int i = (int)Math.min(l, segment.c - segment.b);
            e.update(segment.a, segment.b, i);
            l -= i;
        }

    }

    private void c()
    {
        a.f((int)e.getValue());
        a.f(b.getTotalIn());
    }

    public void a()
    {
        c.a();
    }

    public void a_(Buffer buffer, long l)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l).toString());
        }
        if (l == 0L)
        {
            return;
        } else
        {
            b(buffer, l);
            c.a_(buffer, l);
            return;
        }
    }

    public Timeout b()
    {
        return a.b();
    }

    public void close()
    {
        if (!d) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Throwable throwable;
        Throwable throwable2;
        throwable = null;
        try
        {
            c.c();
            c();
        }
        catch (Throwable throwable1)
        {
            throwable = throwable1;
        }
        b.end();
        throwable2 = throwable;
_L4:
        try
        {
            a.close();
        }
        catch (Throwable throwable3)
        {
            if (throwable2 == null)
            {
                throwable2 = throwable3;
            }
        }
        d = true;
        if (throwable2 != null)
        {
            Util.a(throwable2);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        throwable2;
        if (throwable != null)
        {
            throwable2 = throwable;
        }
          goto _L4
    }
}
