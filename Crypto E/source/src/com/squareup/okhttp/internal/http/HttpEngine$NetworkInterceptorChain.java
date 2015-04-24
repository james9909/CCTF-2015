// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.Util;
import java.net.URL;
import java.util.List;
import okio.BufferedSink;
import okio.Okio;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            HttpEngine, Transport

class c
    implements com.squareup.okhttp.erceptorChain
{

    final HttpEngine a;
    private final int b;
    private final Request c;
    private int d;

    public Connection a()
    {
        return HttpEngine.a(a);
    }

    public Response a(Request request)
    {
        d = 1 + d;
        if (b > 0)
        {
            Interceptor interceptor1 = (Interceptor)a.a.v().get(-1 + b);
            Address address = a().c().a();
            if (!request.a().getHost().equals(address.a()) || Util.a(request.a()) != address.b())
            {
                throw new IllegalStateException((new StringBuilder()).append("network interceptor ").append(interceptor1).append(" must retain the same host and port").toString());
            }
            if (d > 1)
            {
                throw new IllegalStateException((new StringBuilder()).append("network interceptor ").append(interceptor1).append(" must call proceed() exactly once").toString());
            }
        }
        if (b < a.a.v().size())
        {
            a a1 = new <init>(a, 1 + b, request);
            Interceptor interceptor = (Interceptor)a.a.v().get(b);
            Response response = interceptor.a(a1);
            if (a1.d != 1)
            {
                throw new IllegalStateException((new StringBuilder()).append("network interceptor ").append(interceptor).append(" must call proceed() exactly once").toString());
            } else
            {
                return response;
            }
        }
        HttpEngine.b(a).a(request);
        if (a.c() && request.f() != null)
        {
            BufferedSink bufferedsink = Okio.a(HttpEngine.b(a).a(request, request.f().b()));
            request.f().a(bufferedsink);
            bufferedsink.close();
        }
        return HttpEngine.c(a);
    }

    (HttpEngine httpengine, int i, Request request)
    {
        a = httpengine;
        super();
        b = i;
        c = request;
    }
}
