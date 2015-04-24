// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;


// Referenced classes of package com.squareup.okhttp:
//            Response, Headers, Request, Protocol, 
//            Handshake, ResponseBody

public static class <init>
{

    private Request a;
    private Protocol b;
    private int c;
    private String d;
    private Handshake e;
    private j f;
    private ResponseBody g;
    private Response h;
    private Response i;
    private Response j;

    static Request a(<init> <init>1)
    {
        return <init>1.a;
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

    static Protocol b(nit> nit>)
    {
        return nit>.b;
    }

    static int c(b b1)
    {
        return b1.c;
    }

    static String d(c c1)
    {
        return c1.d;
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

    static Handshake e(nit> nit>)
    {
        return nit>.e;
    }

    static e f(e e1)
    {
        return e1.f;
    }

    static ResponseBody g(f f1)
    {
        return f1.g;
    }

    static Response h(g g1)
    {
        return g1.h;
    }

    static Response i(h h1)
    {
        return h1.i;
    }

    static Response j(i k)
    {
        return k.j;
    }

    public j a(int k)
    {
        c = k;
        return this;
    }

    public c a(Handshake handshake)
    {
        e = handshake;
        return this;
    }

    public e a(Headers headers)
    {
        f = headers.c();
        return this;
    }

    public f a(Protocol protocol)
    {
        b = protocol;
        return this;
    }

    public b a(Request request)
    {
        a = request;
        return this;
    }

    public a a(Response response)
    {
        if (response != null)
        {
            a("networkResponse", response);
        }
        h = response;
        return this;
    }

    public h a(ResponseBody responsebody)
    {
        g = responsebody;
        return this;
    }

    public g a(String s)
    {
        d = s;
        return this;
    }

    public d a(String s, String s1)
    {
        f.(s, s1);
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
            return new Response(this, null);
        }
    }

    public c b(Response response)
    {
        if (response != null)
        {
            a("cacheResponse", response);
        }
        i = response;
        return this;
    }

    public i b(String s, String s1)
    {
        f.(s, s1);
        return this;
    }

    public  c(Response response)
    {
        if (response != null)
        {
            d(response);
        }
        j = response;
        return this;
    }

    public ()
    {
        c = -1;
        f = new init>();
    }

    private init>(Response response)
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

    j(Response response, j j1)
    {
        this(response);
    }
}
