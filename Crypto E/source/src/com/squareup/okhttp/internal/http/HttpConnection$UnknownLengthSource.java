// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import okio.Buffer;
import okio.BufferedSource;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            HttpConnection

class <init> extends <init>
{

    final HttpConnection c;
    private boolean d;

    public long a(Buffer buffer, long l)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l).toString());
        }
        if (a)
        {
            throw new IllegalStateException("closed");
        }
        if (d)
        {
            return -1L;
        }
        long l1 = HttpConnection.b(c).a(buffer, l);
        if (l1 == -1L)
        {
            d = true;
            a(false);
            return -1L;
        } else
        {
            return l1;
        }
    }

    public void close()
    {
        if (a)
        {
            return;
        }
        if (!d)
        {
            a();
        }
        a = true;
    }

    private (HttpConnection httpconnection)
    {
        c = httpconnection;
        super(httpconnection, null);
    }

    >(HttpConnection httpconnection, > >)
    {
        this(httpconnection);
    }
}
