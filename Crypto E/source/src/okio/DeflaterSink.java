// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.util.zip.Deflater;

// Referenced classes of package okio:
//            Sink, Okio, BufferedSink, Buffer, 
//            Segment, Util, SegmentPool, Timeout

public final class DeflaterSink
    implements Sink
{

    private final BufferedSink a;
    private final Deflater b;
    private boolean c;

    DeflaterSink(BufferedSink bufferedsink, Deflater deflater)
    {
        if (bufferedsink == null)
        {
            throw new IllegalArgumentException("source == null");
        }
        if (deflater == null)
        {
            throw new IllegalArgumentException("inflater == null");
        } else
        {
            a = bufferedsink;
            b = deflater;
            return;
        }
    }

    public DeflaterSink(Sink sink, Deflater deflater)
    {
        this(Okio.a(sink), deflater);
    }

    private void a(boolean flag)
    {
        Buffer buffer = a.d();
label0:
        do
        {
            do
            {
                Segment segment = buffer.e(1);
                int i;
                if (flag)
                {
                    i = b.deflate(segment.a, segment.c, 2048 - segment.c, 2);
                } else
                {
                    i = b.deflate(segment.a, segment.c, 2048 - segment.c);
                }
                if (i <= 0)
                {
                    continue label0;
                }
                segment.c = i + segment.c;
                buffer.b = buffer.b + (long)i;
                a.w();
            } while (true);
        } while (!b.needsInput());
    }

    public void a()
    {
        a(true);
        a.a();
    }

    public void a_(Buffer buffer, long l)
    {
        Util.a(buffer.b, 0L, l);
        int i;
        for (; l > 0L; l -= i)
        {
            Segment segment = buffer.a;
            i = (int)Math.min(l, segment.c - segment.b);
            b.setInput(segment.a, segment.b, i);
            a(false);
            buffer.b = buffer.b - (long)i;
            segment.b = i + segment.b;
            if (segment.b == segment.c)
            {
                buffer.a = segment.a();
                SegmentPool.a.a(segment);
            }
        }

    }

    public Timeout b()
    {
        return a.b();
    }

    void c()
    {
        b.finish();
        a(false);
    }

    public void close()
    {
        if (!c) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Throwable throwable = null;
        Throwable throwable1;
        Throwable throwable2;
        try
        {
            c();
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable) { }
        b.end();
        throwable1 = throwable;
_L4:
        try
        {
            a.close();
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable2)
        {
            if (throwable1 == null)
            {
                throwable1 = throwable2;
            }
        }
        c = true;
        if (throwable1 != null)
        {
            Util.a(throwable1);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        throwable1;
        if (throwable != null)
        {
            throwable1 = throwable;
        }
          goto _L4
    }

    public String toString()
    {
        return (new StringBuilder()).append("DeflaterSink(").append(a).append(")").toString();
    }
}
