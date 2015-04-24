// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.net.URL;
import java.util.Date;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            HttpDate, HeaderParser, OkHeaders

public final class CacheStrategy
{
    public static class Factory
    {

        final long a;
        final Request b;
        final Response c;
        private Date d;
        private String e;
        private Date f;
        private String g;
        private Date h;
        private long i;
        private long j;
        private String k;
        private int l;

        private static boolean a(Request request)
        {
            return request.a("If-Modified-Since") != null || request.a("If-None-Match") != null;
        }

        private CacheStrategy b()
        {
            long l1 = 0L;
            if (c == null)
            {
                return new CacheStrategy(b, null);
            }
            if (b.i() && c.e() == null)
            {
                return new CacheStrategy(b, null);
            }
            if (!CacheStrategy.a(c, b))
            {
                return new CacheStrategy(b, null);
            }
            CacheControl cachecontrol = b.h();
            if (cachecontrol.a() || a(b))
            {
                return new CacheStrategy(b, null);
            }
            long l2 = d();
            long l3 = c();
            if (cachecontrol.c() != -1)
            {
                l3 = Math.min(l3, TimeUnit.SECONDS.toMillis(cachecontrol.c()));
            }
            long l4;
            CacheControl cachecontrol1;
            com.squareup.okhttp.Request.Builder builder;
            Request request;
            if (cachecontrol.h() != -1)
            {
                l4 = TimeUnit.SECONDS.toMillis(cachecontrol.h());
            } else
            {
                l4 = l1;
            }
            cachecontrol1 = c.l();
            if (!cachecontrol1.f() && cachecontrol.g() != -1)
            {
                l1 = TimeUnit.SECONDS.toMillis(cachecontrol.g());
            }
            if (!cachecontrol1.a() && l2 + l4 < l1 + l3)
            {
                com.squareup.okhttp.Response.Builder builder1 = c.h();
                if (l4 + l2 >= l3)
                {
                    builder1.b("Warning", "110 HttpURLConnection \"Response is stale\"");
                }
                if (l2 > 0x5265c00L && e())
                {
                    builder1.b("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                }
                return new CacheStrategy(null, builder1.a());
            }
            builder = b.g();
            if (f != null)
            {
                builder.a("If-Modified-Since", g);
            } else
            if (d != null)
            {
                builder.a("If-Modified-Since", e);
            }
            if (k != null)
            {
                builder.a("If-None-Match", k);
            }
            request = builder.c();
            if (a(request))
            {
                return new CacheStrategy(request, c);
            } else
            {
                return new CacheStrategy(request, null);
            }
        }

        private long c()
        {
            long l1 = 0L;
            CacheControl cachecontrol = c.l();
            if (cachecontrol.c() != -1)
            {
                l1 = TimeUnit.SECONDS.toMillis(cachecontrol.c());
            } else
            {
                if (h != null)
                {
                    long l4;
                    long l5;
                    if (d != null)
                    {
                        l4 = d.getTime();
                    } else
                    {
                        l4 = j;
                    }
                    l5 = h.getTime() - l4;
                    if (l5 <= l1)
                    {
                        l5 = l1;
                    }
                    return l5;
                }
                if (f != null && c.a().a().getQuery() == null)
                {
                    long l2;
                    long l3;
                    if (d != null)
                    {
                        l2 = d.getTime();
                    } else
                    {
                        l2 = i;
                    }
                    l3 = l2 - f.getTime();
                    if (l3 > l1)
                    {
                        return l3 / 10L;
                    }
                }
            }
            return l1;
        }

        private long d()
        {
            long l1 = 0L;
            if (d != null)
            {
                l1 = Math.max(l1, j - d.getTime());
            }
            if (l != -1)
            {
                l1 = Math.max(l1, TimeUnit.SECONDS.toMillis(l));
            }
            long l2 = j - i;
            return (a - j) + (l1 + l2);
        }

        private boolean e()
        {
            return c.l().c() == -1 && h == null;
        }

        public CacheStrategy a()
        {
            CacheStrategy cachestrategy = b();
            if (cachestrategy.a != null && b.h().i())
            {
                cachestrategy = new CacheStrategy(null, null);
            }
            return cachestrategy;
        }

        public Factory(long l1, Request request, Response response)
        {
            l = -1;
            a = l1;
            b = request;
            c = response;
            if (response != null)
            {
                Headers headers = response.f();
                int i1 = 0;
                int j1 = headers.a();
                while (i1 < j1) 
                {
                    String s = headers.a(i1);
                    String s1 = headers.b(i1);
                    if ("Date".equalsIgnoreCase(s))
                    {
                        d = HttpDate.a(s1);
                        e = s1;
                    } else
                    if ("Expires".equalsIgnoreCase(s))
                    {
                        h = HttpDate.a(s1);
                    } else
                    if ("Last-Modified".equalsIgnoreCase(s))
                    {
                        f = HttpDate.a(s1);
                        g = s1;
                    } else
                    if ("ETag".equalsIgnoreCase(s))
                    {
                        k = s1;
                    } else
                    if ("Age".equalsIgnoreCase(s))
                    {
                        l = HeaderParser.b(s1, -1);
                    } else
                    if (OkHeaders.b.equalsIgnoreCase(s))
                    {
                        i = Long.parseLong(s1);
                    } else
                    if (OkHeaders.c.equalsIgnoreCase(s))
                    {
                        j = Long.parseLong(s1);
                    }
                    i1++;
                }
            }
        }
    }


    public final Request a;
    public final Response b;

    private CacheStrategy(Request request, Response response)
    {
        a = request;
        b = response;
    }


    public static boolean a(Response response, Request request)
    {
        response.c();
        JVM INSTR lookupswitch 8: default 80
    //                   200: 123
    //                   203: 123
    //                   300: 123
    //                   301: 123
    //                   302: 82
    //                   307: 82
    //                   308: 123
    //                   410: 123;
           goto _L1 _L2 _L2 _L2 _L2 _L3 _L3 _L2 _L2
_L1:
        return false;
_L3:
        if (response.a("Expires") == null && response.l().c() == -1 && response.l().d() == -1 && !response.l().e())
        {
            continue; /* Loop/switch isn't completed */
        }
_L2:
        if (!response.l().b() && !request.h().b())
        {
            return true;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }
}
