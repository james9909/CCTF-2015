// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.OkHeaders;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.squareup.okhttp:
//            Headers, CacheControl, Request, Protocol, 
//            Handshake, ResponseBody

public final class Response
{
    public static class Builder
    {

        private Request a;
        private Protocol b;
        private int c;
        private String d;
        private Handshake e;
        private Headers.Builder f;
        private ResponseBody g;
        private Response h;
        private Response i;
        private Response j;

        static Request a(Builder builder)
        {
            return builder.a;
        }

        private void a(String s, Response response)
        {
            if (Response.g(response) != null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append(s).append(".body != null").toString());
            }
            if (Response.h(response) != null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append(s).append(".networkResponse != null").toString());
            }
            if (Response.i(response) != null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append(s).append(".cacheResponse != null").toString());
            }
            if (Response.j(response) != null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append(s).append(".priorResponse != null").toString());
            } else
            {
                return;
            }
        }

        static Protocol b(Builder builder)
        {
            return builder.b;
        }

        static int c(Builder builder)
        {
            return builder.c;
        }

        static String d(Builder builder)
        {
            return builder.d;
        }

        private void d(Response response)
        {
            if (Response.g(response) != null)
            {
                throw new IllegalArgumentException("priorResponse.body != null");
            } else
            {
                return;
            }
        }

        static Handshake e(Builder builder)
        {
            return builder.e;
        }

        static Headers.Builder f(Builder builder)
        {
            return builder.f;
        }

        static ResponseBody g(Builder builder)
        {
            return builder.g;
        }

        static Response h(Builder builder)
        {
            return builder.h;
        }

        static Response i(Builder builder)
        {
            return builder.i;
        }

        static Response j(Builder builder)
        {
            return builder.j;
        }

        public Builder a(int i1)
        {
            c = i1;
            return this;
        }

        public Builder a(Handshake handshake)
        {
            e = handshake;
            return this;
        }

        public Builder a(Headers headers)
        {
            f = headers.c();
            return this;
        }

        public Builder a(Protocol protocol)
        {
            b = protocol;
            return this;
        }

        public Builder a(Request request)
        {
            a = request;
            return this;
        }

        public Builder a(Response response)
        {
            if (response != null)
            {
                a("networkResponse", response);
            }
            h = response;
            return this;
        }

        public Builder a(ResponseBody responsebody)
        {
            g = responsebody;
            return this;
        }

        public Builder a(String s)
        {
            d = s;
            return this;
        }

        public Builder a(String s, String s1)
        {
            f.b(s, s1);
            return this;
        }

        public Response a()
        {
            if (a == null)
            {
                throw new IllegalStateException("request == null");
            }
            if (b == null)
            {
                throw new IllegalStateException("protocol == null");
            }
            if (c < 0)
            {
                throw new IllegalStateException((new StringBuilder()).append("code < 0: ").append(c).toString());
            } else
            {
                return new Response(this);
            }
        }

        public Builder b(Response response)
        {
            if (response != null)
            {
                a("cacheResponse", response);
            }
            i = response;
            return this;
        }

        public Builder b(String s, String s1)
        {
            f.a(s, s1);
            return this;
        }

        public Builder c(Response response)
        {
            if (response != null)
            {
                d(response);
            }
            j = response;
            return this;
        }

        public Builder()
        {
            c = -1;
            f = new Headers.Builder();
        }

        private Builder(Response response)
        {
            c = -1;
            a = Response.a(response);
            b = Response.b(response);
            c = Response.c(response);
            d = Response.d(response);
            e = Response.e(response);
            f = Response.f(response).c();
            g = Response.g(response);
            h = Response.h(response);
            i = Response.i(response);
            j = Response.j(response);
        }

    }


    private final Request a;
    private final Protocol b;
    private final int c;
    private final String d;
    private final Handshake e;
    private final Headers f;
    private final ResponseBody g;
    private Response h;
    private Response i;
    private final Response j;
    private volatile CacheControl k;

    private Response(Builder builder)
    {
        a = Builder.a(builder);
        b = Builder.b(builder);
        c = Builder.c(builder);
        d = Builder.d(builder);
        e = Builder.e(builder);
        f = Builder.f(builder).a();
        g = Builder.g(builder);
        h = Builder.h(builder);
        i = Builder.i(builder);
        j = Builder.j(builder);
    }


    static Request a(Response response)
    {
        return response.a;
    }

    static Protocol b(Response response)
    {
        return response.b;
    }

    static int c(Response response)
    {
        return response.c;
    }

    static String d(Response response)
    {
        return response.d;
    }

    static Handshake e(Response response)
    {
        return response.e;
    }

    static Headers f(Response response)
    {
        return response.f;
    }

    static ResponseBody g(Response response)
    {
        return response.g;
    }

    static Response h(Response response)
    {
        return response.h;
    }

    static Response i(Response response)
    {
        return response.i;
    }

    static Response j(Response response)
    {
        return response.j;
    }

    public Request a()
    {
        return a;
    }

    public String a(String s)
    {
        return a(s, null);
    }

    public String a(String s, String s1)
    {
        String s2 = f.a(s);
        if (s2 != null)
        {
            s1 = s2;
        }
        return s1;
    }

    public Protocol b()
    {
        return b;
    }

    public int c()
    {
        return c;
    }

    public String d()
    {
        return d;
    }

    public Handshake e()
    {
        return e;
    }

    public Headers f()
    {
        return f;
    }

    public ResponseBody g()
    {
        return g;
    }

    public Builder h()
    {
        return new Builder(this);
    }

    public Response i()
    {
        return h;
    }

    public Response j()
    {
        return i;
    }

    public List k()
    {
        String s;
        if (c == 401)
        {
            s = "WWW-Authenticate";
        } else
        if (c == 407)
        {
            s = "Proxy-Authenticate";
        } else
        {
            return Collections.emptyList();
        }
        return OkHeaders.b(f(), s);
    }

    public CacheControl l()
    {
        CacheControl cachecontrol = k;
        if (cachecontrol != null)
        {
            return cachecontrol;
        } else
        {
            CacheControl cachecontrol1 = CacheControl.a(f);
            k = cachecontrol1;
            return cachecontrol1;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("Response{protocol=").append(b).append(", code=").append(c).append(", message=").append(d).append(", url=").append(a.c()).append('}').toString();
    }
}
