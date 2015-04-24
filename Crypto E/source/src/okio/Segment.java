// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;


// Referenced classes of package okio:
//            SegmentPool

final class Segment
{

    final byte a[] = new byte[2048];
    int b;
    int c;
    Segment d;
    Segment e;

    Segment()
    {
    }

    public Segment a()
    {
        Segment segment;
        if (d != this)
        {
            segment = d;
        } else
        {
            segment = null;
        }
        e.d = d;
        d.e = e;
        d = null;
        e = null;
        return segment;
    }

    public Segment a(int i)
    {
        int j = c - b - i;
        if (i <= 0 || j <= 0)
        {
            throw new IllegalArgumentException();
        }
        if (i < j)
        {
            Segment segment1 = SegmentPool.a.a();
            System.arraycopy(a, b, segment1.a, segment1.b, i);
            b = i + b;
            segment1.c = i + segment1.c;
            e.a(segment1);
            return segment1;
        } else
        {
            Segment segment = SegmentPool.a.a();
            System.arraycopy(a, i + b, segment.a, segment.b, j);
            c = c - j;
            segment.c = j + segment.c;
            a(segment);
            return this;
        }
    }

    public Segment a(Segment segment)
    {
        segment.e = this;
        segment.d = d;
        d.e = segment;
        d = segment;
        return segment;
    }

    public void a(Segment segment, int i)
    {
        if (i + (segment.c - segment.b) > 2048)
        {
            throw new IllegalArgumentException();
        }
        if (i + segment.c > 2048)
        {
            System.arraycopy(segment.a, segment.b, segment.a, 0, segment.c - segment.b);
            segment.c = segment.c - segment.b;
            segment.b = 0;
        }
        System.arraycopy(a, b, segment.a, segment.c, i);
        segment.c = i + segment.c;
        b = i + b;
    }

    public void b()
    {
        if (e == this)
        {
            throw new IllegalStateException();
        }
        if ((e.c - e.b) + (c - b) > 2048)
        {
            return;
        } else
        {
            a(e, c - b);
            a();
            SegmentPool.a.a(this);
            return;
        }
    }
}
