// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;


// Referenced classes of package com.coremedia.iso.boxes.fragment:
//            TrackFragmentRandomAccessBox

public static class I
{

    private long a;
    private long b;
    private long c;
    private long d;
    private long e;

    static long a(I i)
    {
        return i.a;
    }

    static void a(a a1, long l)
    {
        a1.a = l;
    }

    static long b(a a1)
    {
        return a1.b;
    }

    static void b(b b1, long l)
    {
        b1.b = l;
    }

    static long c(b b1)
    {
        return b1.c;
    }

    static void c(c c1, long l)
    {
        c1.c = l;
    }

    static long d(c c1)
    {
        return c1.d;
    }

    static void d(d d1, long l)
    {
        d1.d = l;
    }

    static long e(d d1)
    {
        return d1.e;
    }

    static void e(e e1, long l)
    {
        e1.e = l;
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
            if (b != e1.b)
            {
                return false;
            }
            if (e != e1.e)
            {
                return false;
            }
            if (a != e1.a)
            {
                return false;
            }
            if (c != e1.c)
            {
                return false;
            }
            if (d != e1.d)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * (31 * (31 * (31 * (int)(a ^ a >>> 32) + (int)(b ^ b >>> 32)) + (int)(c ^ c >>> 32)) + (int)(d ^ d >>> 32)) + (int)(e ^ e >>> 32);
    }

    public String toString()
    {
        return (new StringBuilder("Entry{time=")).append(a).append(", moofOffset=").append(b).append(", trafNumber=").append(c).append(", trunNumber=").append(d).append(", sampleNumber=").append(e).append('}').toString();
    }

    public I()
    {
    }
}
