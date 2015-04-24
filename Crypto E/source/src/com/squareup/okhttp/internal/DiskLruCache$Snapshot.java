// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import java.io.Closeable;
import okio.Source;

// Referenced classes of package com.squareup.okhttp.internal:
//            DiskLruCache, Util

public final class <init>
    implements Closeable
{

    final DiskLruCache a;
    private final String b;
    private final long c;
    private final Source d[];
    private final long e[];

    static String a(<init> <init>1)
    {
        return <init>1.b;
    }

    public b a()
    {
        return DiskLruCache.a(a, b, c);
    }

    public Source a(int i)
    {
        return d[i];
    }

    public void close()
    {
        Source asource[] = d;
        int i = asource.length;
        for (int j = 0; j < i; j++)
        {
            Util.a(asource[j]);
        }

    }

    private (DiskLruCache disklrucache, String s, long l, Source asource[], long al[])
    {
        a = disklrucache;
        super();
        b = s;
        c = l;
        d = asource;
        e = al;
    }

    e(DiskLruCache disklrucache, String s, long l, Source asource[], long al[], e e1)
    {
        this(disklrucache, s, l, asource, al);
    }
}
