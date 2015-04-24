// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import java.io.File;
import java.io.FileNotFoundException;
import okio.BufferedSink;
import okio.Okio;
import okio.Source;

// Referenced classes of package com.squareup.okhttp.internal:
//            DiskLruCache, Util

final class <init>
{

    final DiskLruCache a;
    private final String b;
    private final long c[];
    private final File d[];
    private final File e[];
    private boolean f;
    private  g;
    private long h;

    static long a(<init> <init>1, long l)
    {
        <init>1.h = l;
        return l;
    }

    static  a(h h1)
    {
        return h1.g;
    }

    static  a( ,  1)
    {
        .g = 1;
        return 1;
    }

    static boolean a(g g1, boolean flag)
    {
        g1.f = flag;
        return flag;
    }

    static long[] b(f f1)
    {
        return f1.c;
    }

    static File[] c(c c1)
    {
        return c1.d;
    }

    static File[] d(d d1)
    {
        return d1.e;
    }

    static String e(e e1)
    {
        return e1.b;
    }

    static boolean f(b b1)
    {
        return b1.f;
    }

    static long g(f f1)
    {
        return f1.h;
    }

    ot a()
    {
        Source asource[];
        int i;
        if (!Thread.holdsLock(a))
        {
            throw new AssertionError();
        }
        asource = new Source[DiskLruCache.e(a)];
        i = 0;
_L2:
        if (i >= DiskLruCache.e(a))
        {
            break; /* Loop/switch isn't completed */
        }
        asource[i] = Okio.a(d[i]);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        ot ot = new ot(a, b, h, asource, c, null);
        return ot;
_L4:
        int j;
        for (; j < DiskLruCache.e(a) && asource[j] != null; j++)
        {
            Util.a(asource[j]);
        }

        return null;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        j = 0;
        if (true) goto _L4; else goto _L3
_L3:
    }

    void a(BufferedSink bufferedsink)
    {
        long al[] = c;
        int i = al.length;
        for (int j = 0; j < i; j++)
        {
            long l = al[j];
            bufferedsink.i(32).b(Long.toString(l));
        }

    }

    private ot(DiskLruCache disklrucache, String s)
    {
        a = disklrucache;
        super();
        b = s;
        c = new long[DiskLruCache.e(disklrucache)];
        d = new File[DiskLruCache.e(disklrucache)];
        e = new File[DiskLruCache.e(disklrucache)];
        StringBuilder stringbuilder = (new StringBuilder(s)).append('.');
        int i = stringbuilder.length();
        for (int j = 0; j < DiskLruCache.e(disklrucache); j++)
        {
            stringbuilder.append(j);
            d[j] = new File(DiskLruCache.f(disklrucache), stringbuilder.toString());
            stringbuilder.append(".tmp");
            e[j] = new File(DiskLruCache.f(disklrucache), stringbuilder.toString());
            stringbuilder.setLength(i);
        }

    }

    e(DiskLruCache disklrucache, String s, e e1)
    {
        this(disklrucache, s);
    }
}
