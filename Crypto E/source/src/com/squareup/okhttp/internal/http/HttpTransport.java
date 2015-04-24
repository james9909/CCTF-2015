// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.Route;
import java.net.Proxy;
import okio.Okio;
import okio.Sink;
import okio.Source;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            Transport, HttpEngine, HttpConnection, OkHeaders, 
//            RealResponseBody, RequestLine, RetryableSink

public final class HttpTransport
    implements Transport
{

    private final HttpEngine a;
    private final HttpConnection b;

    public HttpTransport(HttpEngine httpengine, HttpConnection httpconnection)
    {
        a = httpengine;
        b = httpconnection;
    }

    private Source b(Response response)
    {
        if (!HttpEngine.a(response))
        {
            return b.b(0L);
        }
        if ("chunked".equalsIgnoreCase(response.a("Transfer-Encoding")))
        {
            return b.a(a);
        }
        long l = OkHeaders.a(response);
        if (l != -1L)
        {
            return b.b(l);
        } else
        {
            return b.i();
        }
    }

    public ResponseBody a(Response response)
    {
        Source source = b(response);
        return new RealResponseBody(response.f(), Okio.a(source));
    }

    public Sink a(Request request, long l)
    {
        if ("chunked".equalsIgnoreCase(request.a("Transfer-Encoding")))
        {
            return b.h();
        }
        if (l != -1L)
        {
            return b.a(l);
        } else
        {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
    }

    public void a()
    {
        b.d();
    }

    public void a(Request request)
    {
        a.b();
        String s = RequestLine.a(request, a.i().c().b().type(), a.i().l());
        b.a(request.e(), s);
    }

    public void a(HttpEngine httpengine)
    {
        b.a(httpengine);
    }

    public void a(RetryableSink retryablesink)
    {
        b.a(retryablesink);
    }

    public com.squareup.okhttp.Response.Builder b()
    {
        return b.g();
    }

    public void c()
    {
        if (d())
        {
            b.a();
            return;
        } else
        {
            b.b();
            return;
        }
    }

    public boolean d()
    {
        while ("close".equalsIgnoreCase(a.g().a("Connection")) || "close".equalsIgnoreCase(a.h().a("Connection")) || b.c()) 
        {
            return false;
        }
        return true;
    }
}
