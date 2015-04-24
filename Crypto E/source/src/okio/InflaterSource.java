// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

// Referenced classes of package okio:
//            Source, Okio, BufferedSource, Buffer, 
//            Segment, Timeout

public final class InflaterSource
    implements Source
{

    private final BufferedSource a;
    private final Inflater b;
    private int c;
    private boolean d;

    InflaterSource(BufferedSource bufferedsource, Inflater inflater)
    {
        if (bufferedsource == null)
        {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null)
        {
            throw new IllegalArgumentException("inflater == null");
        } else
        {
            a = bufferedsource;
            b = inflater;
            return;
        }
    }

    public InflaterSource(Source source, Inflater inflater)
    {
        this(Okio.a(source), inflater);
    }

    private void c()
    {
        if (c == 0)
        {
            return;
        } else
        {
            int i = c - b.getRemaining();
            c = c - i;
            a.g(i);
            return;
        }
    }

    public long a(Buffer buffer, long l)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l).toString());
        }
        if (d)
        {
            throw new IllegalStateException("closed");
        }
        if (l == 0L)
        {
            return 0L;
        }
_L2:
        boolean flag = a();
        Segment segment;
        int i;
        try
        {
            segment = buffer.e(1);
            i = b.inflate(segment.a, segment.c, 2048 - segment.c);
        }
        catch (DataFormatException dataformatexception)
        {
            throw new IOException(dataformatexception);
        }
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        segment.c = i + segment.c;
        buffer.b = buffer.b + (long)i;
        return (long)i;
        if (!b.finished() && !b.needsDictionary())
        {
            continue; /* Loop/switch isn't completed */
        }
        c();
        return -1L;
        if (!flag) goto _L2; else goto _L1
_L1:
        throw new EOFException("source exhausted prematurely");
    }

    public boolean a()
    {
        if (!b.needsInput())
        {
            return false;
        }
        c();
        if (b.getRemaining() != 0)
        {
            throw new IllegalStateException("?");
        }
        if (a.h())
        {
            return true;
        } else
        {
            Segment segment = a.d().a;
            c = segment.c - segment.b;
            b.setInput(segment.a, segment.b, c);
            return false;
        }
    }

    public Timeout b()
    {
        return a.b();
    }

    public void close()
    {
        if (d)
        {
            return;
        } else
        {
            b.end();
            d = true;
            a.close();
            return;
        }
    }
}
