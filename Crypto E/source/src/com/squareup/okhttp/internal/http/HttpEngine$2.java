// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Source;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            HttpEngine, CacheRequest

class d
    implements Source
{

    boolean a;
    final BufferedSource b;
    final CacheRequest c;
    final BufferedSink d;
    final HttpEngine e;

    public long a(Buffer buffer, long l)
    {
        long l1;
        try
        {
            l1 = b.a(buffer, l);
        }
        catch (IOException ioexception)
        {
            if (!a)
            {
                a = true;
                c.a();
            }
            throw ioexception;
        }
        if (l1 == -1L)
        {
            if (!a)
            {
                a = true;
                d.close();
            }
            return -1L;
        } else
        {
            buffer.a(d.d(), buffer.c() - l1, l1);
            d.w();
            return l1;
        }
    }

    public Timeout b()
    {
        return b.b();
    }

    public void close()
    {
        if (!a && !Util.a(this, 100, TimeUnit.MILLISECONDS))
        {
            a = true;
            c.a();
        }
        b.close();
    }

    (HttpEngine httpengine, BufferedSource bufferedsource, CacheRequest cacherequest, BufferedSink bufferedsink)
    {
        e = httpengine;
        b = bufferedsource;
        c = cacherequest;
        d = bufferedsink;
        super();
    }
}
