// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.threegpp26244;


// Referenced classes of package com.googlecode.mp4parser.boxes.threegpp26244:
//            SegmentIndexBox

public static class 
{

    byte a;
    int b;
    long c;
    byte d;
    byte e;
    int f;

    public byte a()
    {
        return a;
    }

    public void a(byte byte0)
    {
        a = byte0;
    }

    public void a(int i)
    {
        b = i;
    }

    public void a(long l)
    {
        c = l;
    }

    public int b()
    {
        return b;
    }

    public void b(byte byte0)
    {
        d = byte0;
    }

    public void b(int i)
    {
        f = i;
    }

    public long c()
    {
        return c;
    }

    public void c(byte byte0)
    {
        e = byte0;
    }

    public byte d()
    {
        return d;
    }

    public byte e()
    {
        return e;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            e e1 = (e)obj;
            if (a != e1.a)
            {
                return false;
            }
            if (b != e1.b)
            {
                return false;
            }
            if (f != e1.f)
            {
                return false;
            }
            if (e != e1.e)
            {
                return false;
            }
            if (d != e1.d)
            {
                return false;
            }
            if (c != e1.c)
            {
                return false;
            }
        }
        return true;
    }

    public int f()
    {
        return f;
    }

    public int hashCode()
    {
        return 31 * (31 * (31 * (31 * (31 * a + b) + (int)(c ^ c >>> 32)) + d) + e) + f;
    }

    public String toString()
    {
        return (new StringBuilder("Entry{referenceType=")).append(a).append(", referencedSize=").append(b).append(", subsegmentDuration=").append(c).append(", startsWithSap=").append(d).append(", sapType=").append(e).append(", sapDeltaTime=").append(f).append('}').toString();
    }

    public ()
    {
    }
}
