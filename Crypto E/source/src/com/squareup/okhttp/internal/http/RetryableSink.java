// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.net.ProtocolException;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;

public final class RetryableSink
    implements Sink
{

    private boolean a;
    private final int b;
    private final Buffer c;

    public RetryableSink()
    {
        this(-1);
    }

    public RetryableSink(int i)
    {
        c = new Buffer();
        b = i;
    }

    public void a()
    {
    }

    public void a(Sink sink)
    {
        Buffer buffer = c.v();
        sink.a_(buffer, buffer.c());
    }

    public void a_(Buffer buffer, long l)
    {
        if (a)
        {
            throw new IllegalStateException("closed");
        }
        Util.a(buffer.c(), 0L, l);
        if (b != -1 && c.c() > (long)b - l)
        {
            throw new ProtocolException((new StringBuilder()).append("exceeded content-length limit of ").append(b).append(" bytes").toString());
        } else
        {
            c.a_(buffer, l);
            return;
        }
    }

    public Timeout b()
    {
        return Timeout.b;
    }

    public long c()
    {
        return c.c();
    }

    public void close()
    {
        if (!a)
        {
            a = true;
            if (c.c() < (long)b)
            {
                throw new ProtocolException((new StringBuilder()).append("content-length promised ").append(b).append(" bytes, but received ").append(c.c()).toString());
            }
        }
    }
}
