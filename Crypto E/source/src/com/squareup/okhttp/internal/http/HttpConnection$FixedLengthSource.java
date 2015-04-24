// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSource;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            HttpConnection

class a extends a
{

    final HttpConnection c;
    private long d;

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
        if (d == 0L)
        {
            return -1L;
        }
        long l1 = HttpConnection.b(c).a(buffer, Math.min(d, l));
        if (l1 == -1L)
        {
            a();
            throw new ProtocolException("unexpected end of stream");
        }
        d = d - l1;
        if (d == 0L)
        {
            a(true);
        }
        return l1;
    }

    public void close()
    {
        if (a)
        {
            return;
        }
        if (d != 0L && !Util.a(this, 100, TimeUnit.MILLISECONDS))
        {
            a();
        }
        a = true;
    }

    public (HttpConnection httpconnection, long l)
    {
        c = httpconnection;
        super(httpconnection, null);
        d = l;
        if (d == 0L)
        {
            a(true);
        }
    }
}
