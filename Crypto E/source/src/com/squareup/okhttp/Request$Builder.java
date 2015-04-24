// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpMethod;
import java.net.URL;

// Referenced classes of package com.squareup.okhttp:
//            Request, Headers, RequestBody

public static class <init>
{

    private String a;
    private URL b;
    private String c;
    private t> d;
    private RequestBody e;
    private Object f;

    static String a(<init> <init>1)
    {
        return <init>1.a;
    }

    static String b(a a1)
    {
        return a1.c;
    }

    static c c(c c1)
    {
        return c1.d;
    }

    static RequestBody d(d d1)
    {
        return d1.e;
    }

    static Object e(e e1)
    {
        return e1.f;
    }

    static URL f(f f1)
    {
        return f1.b;
    }

    public b a()
    {
        return a("GET", ((RequestBody) (null)));
    }

    public a a(Headers headers)
    {
        d = headers.c();
        return this;
    }

    public d a(RequestBody requestbody)
    {
        return a("POST", requestbody);
    }

    public a a(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("url == null");
        } else
        {
            a = s;
            return this;
        }
    }

    public a a(String s, RequestBody requestbody)
    {
        if (s == null || s.length() == 0)
        {
            throw new IllegalArgumentException("method == null || method.length() == 0");
        }
        if (requestbody != null && !HttpMethod.c(s))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("method ").append(s).append(" must not have a request body.").toString());
        }
        if (requestbody == null && HttpMethod.c(s))
        {
            requestbody = RequestBody.a(null, Util.a);
        }
        c = s;
        e = requestbody;
        return this;
    }

    public e a(String s, String s1)
    {
        d.b(s, s1);
        return this;
    }

    public b a(URL url)
    {
        if (url == null)
        {
            throw new IllegalArgumentException("url == null");
        } else
        {
            b = url;
            a = url.toString();
            return this;
        }
    }

    public a b()
    {
        return a("DELETE", ((RequestBody) (null)));
    }

    public a b(RequestBody requestbody)
    {
        return a("PUT", requestbody);
    }

    public a b(String s)
    {
        d.b(s);
        return this;
    }

    public b b(String s, String s1)
    {
        d.a(s, s1);
        return this;
    }

    public Request c()
    {
        if (a == null)
        {
            throw new IllegalStateException("url == null");
        } else
        {
            return new Request(this, null);
        }
    }

    public tpMethod()
    {
        c = "GET";
        d = new <init>();
    }

    private <init>(Request request)
    {
        a = Request.a(request);
        b = Request.b(request);
        c = Request.c(request);
        e = Request.d(request);
        f = Request.e(request);
        d = Request.f(request).c();
    }

    d(Request request, d d1)
    {
        this(request);
    }
}
