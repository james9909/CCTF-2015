// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;


// Referenced classes of package com.coremedia.iso.boxes.fragment:
//            TrackRunBox, SampleFlags

public static class 
{

    private long a;
    private long b;
    private SampleFlags c;
    private long d;

    static long a( )
    {
        return .a;
    }

    static void a(a a1, long l)
    {
        a1.a = l;
    }

    static void a(a a1, SampleFlags sampleflags)
    {
        a1.c = sampleflags;
    }

    static long b(c c1)
    {
        return c1.b;
    }

    static void b(b b1, long l)
    {
        b1.b = l;
    }

    static SampleFlags c(b b1)
    {
        return b1.c;
    }

    static void c(c c1, long l)
    {
        c1.d = l;
    }

    static long d(d d1)
    {
        return d1.d;
    }

    public long a()
    {
        return b;
    }

    public String toString()
    {
        return (new StringBuilder("Entry{duration=")).append(a).append(", size=").append(b).append(", dlags=").append(c).append(", compTimeOffset=").append(d).append('}').toString();
    }

    public ()
    {
    }
}
