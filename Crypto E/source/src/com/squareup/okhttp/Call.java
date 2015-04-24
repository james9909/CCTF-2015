// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.http.HttpEngine;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.squareup.okhttp:
//            OkHttpClient, Request, Dispatcher, RequestBody, 
//            MediaType, Response, Interceptor, Callback

public class Call
{
    class ApplicationInterceptorChain
        implements Interceptor.Chain
    {

        final Call a;
        private final int b;
        private final Request c;

        public Response a(Request request)
        {
            if (b < Call.c(a).u().size())
            {
                ApplicationInterceptorChain applicationinterceptorchain = a. new ApplicationInterceptorChain(1 + b, request);
                return ((Interceptor)Call.c(a).u().get(b)).a(applicationinterceptorchain);
            } else
            {
                return a.a(request, false);
            }
        }

        ApplicationInterceptorChain(int i, Request request)
        {
            a = Call.this;
            super();
            b = i;
            c = request;
        }
    }

    final class AsyncCall extends NamedRunnable
    {

        final Call a;
        private final Callback c;

        String a()
        {
            return a.b.a().getHost();
        }

        protected void b()
        {
            boolean flag = true;
            Response response;
            boolean flag1;
            response = Call.a(a);
            flag1 = a.a;
            if (!flag1) goto _L2; else goto _L1
_L1:
            c.a(a.b, new IOException("Canceled"));
_L4:
            Call.c(a).r().a(this);
            return;
_L2:
            c.a(response);
            if (true) goto _L4; else goto _L3
_L3:
            IOException ioexception;
            ioexception;
_L10:
            if (!flag) goto _L6; else goto _L5
_L5:
            Internal.a.log(Level.INFO, (new StringBuilder()).append("Callback failure for ").append(Call.b(a)).toString(), ioexception);
_L8:
            Call.c(a).r().a(this);
            return;
_L6:
            c.a(a.c.g(), ioexception);
            if (true) goto _L8; else goto _L7
_L7:
            Exception exception;
            exception;
            Call.c(a).r().a(this);
            throw exception;
            ioexception;
            flag = false;
            if (true) goto _L10; else goto _L9
_L9:
        }
    }


    volatile boolean a;
    Request b;
    HttpEngine c;
    private final OkHttpClient d;
    private boolean e;

    protected Call(OkHttpClient okhttpclient, Request request)
    {
        d = okhttpclient.w();
        b = request;
    }

    static Response a(Call call)
    {
        return call.c();
    }

    private String b()
    {
        String s;
        String s2;
        if (a)
        {
            s = "canceled call";
        } else
        {
            s = "call";
        }
        try
        {
            String s1 = (new URL(b.a(), "/...")).toString();
            s2 = (new StringBuilder()).append(s).append(" to ").append(s1).toString();
        }
        catch (MalformedURLException malformedurlexception)
        {
            return s;
        }
        return s2;
    }

    static String b(Call call)
    {
        return call.b();
    }

    static OkHttpClient c(Call call)
    {
        return call.d;
    }

    private Response c()
    {
        return (new ApplicationInterceptorChain(0, b)).a(b);
    }

    public Response a()
    {
        this;
        JVM INSTR monitorenter ;
        if (e)
        {
            throw new IllegalStateException("Already Executed");
        }
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        e = true;
        this;
        JVM INSTR monitorexit ;
        Response response;
        d.r().a(this);
        response = c();
        if (response != null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        throw new IOException("Canceled");
        Exception exception1;
        exception1;
        d.r().b(this);
        throw exception1;
        d.r().b(this);
        return response;
    }

    Response a(Request request, boolean flag)
    {
        RequestBody requestbody = request.f();
        Request request1;
        int i;
        IOException ioexception;
        HttpEngine httpengine;
        Response response;
        Request request2;
        int j;
        Connection connection;
        if (requestbody != null)
        {
            Request.Builder builder = request.g();
            MediaType mediatype = requestbody.a();
            if (mediatype != null)
            {
                builder.a("Content-Type", mediatype.toString());
            }
            long l = requestbody.b();
            if (l != -1L)
            {
                builder.a("Content-Length", Long.toString(l));
                builder.b("Transfer-Encoding");
            } else
            {
                builder.a("Transfer-Encoding", "chunked");
                builder.b("Content-Length");
            }
            request1 = builder.c();
        } else
        {
            request1 = request;
        }
        c = new HttpEngine(d, request1, false, false, flag, null, null, null, null);
        i = 0;
        if (!a) goto _L2; else goto _L1
_L1:
        c.k();
        response = null;
_L4:
        return response;
_L2:
        try
        {
            c.a();
            c.n();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            httpengine = c.a(ioexception, null);
            if (httpengine != null)
            {
                c = httpengine;
            } else
            {
                throw ioexception;
            }
            continue; /* Loop/switch isn't completed */
        }
        response = c.h();
        request2 = c.o();
        if (request2 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!flag)
        {
            c.k();
            return response;
        }
        if (true) goto _L4; else goto _L3
_L3:
        j = i + 1;
        if (j > 20)
        {
            throw new ProtocolException((new StringBuilder()).append("Too many follow-up requests: ").append(j).toString());
        }
        if (!c.b(request2.a()))
        {
            c.k();
        }
        connection = c.m();
        c = new HttpEngine(d, request2, false, false, flag, connection, null, null, response);
        i = j;
        if (true) goto _L6; else goto _L5
_L5:
        break MISSING_BLOCK_LABEL_336;
_L6:
        break MISSING_BLOCK_LABEL_109;
    }
}
