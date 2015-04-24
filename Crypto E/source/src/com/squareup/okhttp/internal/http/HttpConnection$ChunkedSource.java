// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSource;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            HttpConnection, HttpEngine

class f extends 
{

    final HttpConnection c;
    private int d;
    private boolean e;
    private final HttpEngine f;

    private void c()
    {
        if (d != -1)
        {
            HttpConnection.b(c).s();
        }
        String s = HttpConnection.b(c).s();
        int i = s.indexOf(";");
        if (i != -1)
        {
            s = s.substring(0, i);
        }
        try
        {
            d = Integer.parseInt(s.trim(), 16);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new ProtocolException((new StringBuilder()).append("Expected a hex chunk size but was ").append(s).toString());
        }
        if (d == 0)
        {
            e = false;
            com.squareup.okhttp.ChunkedSource chunkedsource = new com.squareup.okhttp.ChunkedSource.e();
            c.a(chunkedsource);
            f.a(chunkedsource.f());
            a(true);
        }
    }

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
        if (e) goto _L2; else goto _L1
_L1:
        return -1L;
_L2:
        if (d != 0 && d != -1)
        {
            break; /* Loop/switch isn't completed */
        }
        c();
        if (!e) goto _L1; else goto _L3
_L3:
        long l1 = HttpConnection.b(c).a(buffer, Math.min(l, d));
        if (l1 == -1L)
        {
            a();
            throw new IOException("unexpected end of stream");
        } else
        {
            d = (int)((long)d - l1);
            return l1;
        }
    }

    public void close()
    {
        if (a)
        {
            return;
        }
        if (e && !Util.a(this, 100, TimeUnit.MILLISECONDS))
        {
            a();
        }
        a = true;
    }

    (HttpConnection httpconnection, HttpEngine httpengine)
    {
        c = httpconnection;
        super(httpconnection, null);
        d = -1;
        e = true;
        f = httpengine;
    }
}
