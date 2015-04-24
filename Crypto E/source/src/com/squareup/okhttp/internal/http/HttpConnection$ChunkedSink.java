// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import okio.Buffer;
import okio.BufferedSink;
import okio.Sink;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            HttpConnection

final class <init>
    implements Sink
{

    final HttpConnection a;
    private final byte b[] = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
        0, 0, 0, 0, 0, 0, 13, 10
    };
    private boolean c;

    private void a(long l)
    {
        int i = 16;
        do
        {
            byte abyte0[] = b;
            i--;
            abyte0[i] = HttpConnection.l()[(int)(15L & l)];
            l >>>= 4;
        } while (l != 0L);
        HttpConnection.a(a).c(b, i, b.length - i);
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = c;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        HttpConnection.a(a).a();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void a_(Buffer buffer, long l)
    {
        if (c)
        {
            throw new IllegalStateException("closed");
        }
        if (l == 0L)
        {
            return;
        } else
        {
            a(l);
            HttpConnection.a(a).a_(buffer, l);
            HttpConnection.a(a).c(HttpConnection.j());
            return;
        }
    }

    public Timeout b()
    {
        return HttpConnection.a(a).b();
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = c;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        c = true;
        HttpConnection.a(a).c(HttpConnection.k());
        HttpConnection.a(a, 3);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private (HttpConnection httpconnection)
    {
        a = httpconnection;
        super();
    }

    a(HttpConnection httpconnection, a a1)
    {
        this(httpconnection);
    }
}
