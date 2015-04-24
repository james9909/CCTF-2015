// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.InputStream;

// Referenced classes of package okio:
//            Source, Okio, Timeout, Buffer, 
//            Segment

static final class ject
    implements Source
{

    final Timeout a;
    final InputStream b;

    public long a(Buffer buffer, long l)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l).toString());
        }
        a.j();
        Segment segment = buffer.e(1);
        int i = (int)Math.min(l, 2048 - segment.c);
        int j = b.read(segment.a, segment.c, i);
        if (j == -1)
        {
            return -1L;
        } else
        {
            segment.c = j + segment.c;
            buffer.b = buffer.b + (long)j;
            return (long)j;
        }
    }

    public Timeout b()
    {
        return a;
    }

    public void close()
    {
        b.close();
    }

    public String toString()
    {
        return (new StringBuilder()).append("source(").append(b).append(")").toString();
    }

    tStream(Timeout timeout, InputStream inputstream)
    {
        a = timeout;
        b = inputstream;
        super();
    }
}
