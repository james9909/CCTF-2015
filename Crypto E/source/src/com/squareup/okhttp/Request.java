// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpMethod;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;

// Referenced classes of package com.squareup.okhttp:
//            Headers, CacheControl, RequestBody

public final class Request
{
    public static class Builder
    {

        private String a;
        private URL b;
        private String c;
        private Headers.Builder d;
        private RequestBody e;
        private Object f;

        static String a(Builder builder)
        {
            return builder.a;
        }

        static String b(Builder builder)
        {
            return builder.c;
        }

        static Headers.Builder c(Builder builder)
        {
            return builder.d;
        }

        static RequestBody d(Builder builder)
        {
            return builder.e;
        }

        static Object e(Builder builder)
        {
            return builder.f;
        }

        static URL f(Builder builder)
        {
            return builder.b;
        }

        public Builder a()
        {
            return a("GET", ((RequestBody) (null)));
        }

        public Builder a(Headers headers)
        {
            d = headers.c();
            return this;
        }

        public Builder a(RequestBody requestbody)
        {
            return a("POST", requestbody);
        }

        public Builder a(String s)
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

        public Builder a(String s, RequestBody requestbody)
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

        public Builder a(String s, String s1)
        {
            d.b(s, s1);
            return this;
        }

        public Builder a(URL url)
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

        public Builder b()
        {
            return a("DELETE", ((RequestBody) (null)));
        }

        public Builder b(RequestBody requestbody)
        {
            return a("PUT", requestbody);
        }

        public Builder b(String s)
        {
            d.b(s);
            return this;
        }

        public Builder b(String s, String s1)
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
                return new Request(this);
            }
        }

        public Builder()
        {
            c = "GET";
            d = new Headers.Builder();
        }

        private Builder(Request request)
        {
            a = Request.a(request);
            b = Request.b(request);
            c = Request.c(request);
            e = Request.d(request);
            f = Request.e(request);
            d = Request.f(request).c();
        }

    }


    private final String a;
    private final String b;
    private final Headers c;
    private final RequestBody d;
    private final Object e;
    private volatile URL f;
    private volatile URI g;
    private volatile CacheControl h;

    private Request(Builder builder)
    {
        a = Builder.a(builder);
        b = Builder.b(builder);
        c = Builder.c(builder).a();
        d = Builder.d(builder);
        Object obj;
        if (Builder.e(builder) != null)
        {
            obj = Builder.e(builder);
        } else
        {
            obj = this;
        }
        e = obj;
        f = Builder.f(builder);
    }


    static String a(Request request)
    {
        return request.a;
    }

    static URL b(Request request)
    {
        return request.f;
    }

    static String c(Request request)
    {
        return request.b;
    }

    static RequestBody d(Request request)
    {
        return request.d;
    }

    static Object e(Request request)
    {
        return request.e;
    }

    static Headers f(Request request)
    {
        return request.c;
    }

    public String a(String s)
    {
        return c.a(s);
    }

    public URL a()
    {
        URL url;
        URL url1;
        try
        {
            url = f;
        }
        catch (MalformedURLException malformedurlexception)
        {
            throw new RuntimeException((new StringBuilder()).append("Malformed URL: ").append(a).toString(), malformedurlexception);
        }
        if (url != null)
        {
            return url;
        }
        url1 = new URL(a);
        f = url1;
        return url1;
    }

    public URI b()
    {
        URI uri;
        URI uri1;
        try
        {
            uri = g;
        }
        catch (URISyntaxException urisyntaxexception)
        {
            throw new IOException(urisyntaxexception.getMessage());
        }
        if (uri != null)
        {
            return uri;
        }
        uri1 = Platform.a().a(a());
        g = uri1;
        return uri1;
    }

    public List b(String s)
    {
        return c.c(s);
    }

    public String c()
    {
        return a;
    }

    public String d()
    {
        return b;
    }

    public Headers e()
    {
        return c;
    }

    public RequestBody f()
    {
        return d;
    }

    public Builder g()
    {
        return new Builder(this);
    }

    public CacheControl h()
    {
        CacheControl cachecontrol = h;
        if (cachecontrol != null)
        {
            return cachecontrol;
        } else
        {
            CacheControl cachecontrol1 = CacheControl.a(c);
            h = cachecontrol1;
            return cachecontrol1;
        }
    }

    public boolean i()
    {
        return a().getProtocol().equals("https");
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("Request{method=").append(b).append(", url=").append(a).append(", tag=");
        Object obj;
        if (e != this)
        {
            obj = e;
        } else
        {
            obj = null;
        }
        return stringbuilder.append(obj).append('}').toString();
    }
}
