// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.Version;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.CookieHandler;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.security.cert.CertificateException;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            OkHeaders, CacheRequest, RealResponseBody, RouteSelector, 
//            CacheStrategy, HttpMethod, Transport, RetryableSink

public final class HttpEngine
{
    class NetworkInterceptorChain
        implements com.squareup.okhttp.Interceptor.Chain
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
                NetworkInterceptorChain networkinterceptorchain = a. new NetworkInterceptorChain(1 + b, request);
                Interceptor interceptor = (Interceptor)a.a.v().get(b);
                Response response = interceptor.a(networkinterceptorchain);
                if (networkinterceptorchain.d != 1)
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

        NetworkInterceptorChain(int i1, Request request)
        {
            a = HttpEngine.this;
            super();
            b = i1;
            c = request;
        }
    }


    private static final ResponseBody d = new ResponseBody() {

        public long a()
        {
            return 0L;
        }

        public BufferedSource b()
        {
            return new Buffer();
        }

    };
    final OkHttpClient a;
    long b;
    public final boolean c;
    private Connection e;
    private RouteSelector f;
    private Route g;
    private final Response h;
    private Transport i;
    private boolean j;
    private final Request k;
    private Request l;
    private Response m;
    private Response n;
    private Sink o;
    private BufferedSink p;
    private final boolean q;
    private final boolean r;
    private CacheRequest s;
    private CacheStrategy t;

    public HttpEngine(OkHttpClient okhttpclient, Request request, boolean flag, boolean flag1, boolean flag2, Connection connection, RouteSelector routeselector, 
            RetryableSink retryablesink, Response response)
    {
        b = -1L;
        a = okhttpclient;
        k = request;
        c = flag;
        q = flag1;
        r = flag2;
        e = connection;
        f = routeselector;
        o = retryablesink;
        h = response;
        if (connection != null)
        {
            Internal.b.b(connection, this);
            g = connection.c();
            return;
        } else
        {
            g = null;
            return;
        }
    }

    static Connection a(HttpEngine httpengine)
    {
        return httpengine.e;
    }

    private static Headers a(Headers headers, Headers headers1)
    {
        int i1 = 0;
        com.squareup.okhttp.Headers.Builder builder = new com.squareup.okhttp.Headers.Builder();
        int j1 = headers.a();
        int k1 = 0;
        do
        {
            if (k1 >= j1)
            {
                break;
            }
            String s2 = headers.a(k1);
            String s3 = headers.b(k1);
            if ((!"Warning".equalsIgnoreCase(s2) || !s3.startsWith("1")) && (!OkHeaders.a(s2) || headers1.a(s2) == null))
            {
                builder.a(s2, s3);
            }
            k1++;
        } while (true);
        int l1 = headers1.a();
        do
        {
            if (i1 >= l1)
            {
                break;
            }
            String s1 = headers1.a(i1);
            if (!"Content-Length".equalsIgnoreCase(s1) && OkHeaders.a(s1))
            {
                builder.a(s1, headers1.b(i1));
            }
            i1++;
        } while (true);
        return builder.a();
    }

    private Response a(CacheRequest cacherequest, Response response)
    {
        Sink sink;
        if (cacherequest != null)
        {
            if ((sink = cacherequest.b()) != null)
            {
                Source source = new Source(response.g().b(), cacherequest, Okio.a(sink)) {

                    boolean a;
                    final BufferedSource b;
                    final CacheRequest c;
                    final BufferedSink d;
                    final HttpEngine e;

                    public long a(Buffer buffer, long l1)
                    {
                        long l2;
                        try
                        {
                            l2 = b.a(buffer, l1);
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
                        if (l2 == -1L)
                        {
                            if (!a)
                            {
                                a = true;
                                d.close();
                            }
                            return -1L;
                        } else
                        {
                            buffer.a(d.d(), buffer.c() - l2, l2);
                            d.w();
                            return l2;
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

            
            {
                e = HttpEngine.this;
                b = bufferedsource;
                c = cacherequest;
                d = bufferedsink;
                super();
            }
                };
                return response.h().a(new RealResponseBody(response.f(), Okio.a(source))).a();
            }
        }
        return response;
    }

    public static String a(URL url)
    {
        if (Util.a(url) != Util.a(url.getProtocol()))
        {
            return (new StringBuilder()).append(url.getHost()).append(":").append(url.getPort()).toString();
        } else
        {
            return url.getHost();
        }
    }

    private void a(Request request)
    {
        if (e != null)
        {
            throw new IllegalStateException();
        }
        if (f == null)
        {
            f = RouteSelector.a(request, a);
        }
        e = f.a(this);
        g = e.c();
    }

    public static boolean a(Response response)
    {
        if (!response.a().d().equals("HEAD"))
        {
            int i1 = response.c();
            if ((i1 < 100 || i1 >= 200) && i1 != 204 && i1 != 304)
            {
                return true;
            }
            if (OkHeaders.a(response) != -1L || "chunked".equalsIgnoreCase(response.a("Transfer-Encoding")))
            {
                return true;
            }
        }
        return false;
    }

    private static boolean a(Response response, Response response1)
    {
        if (response1.c() != 304) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        Date date;
        Date date1;
        date = response.f().b("Last-Modified");
        if (date == null)
        {
            break; /* Loop/switch isn't completed */
        }
        date1 = response1.f().b("Last-Modified");
        if (date1 != null && date1.getTime() < date.getTime()) goto _L1; else goto _L3
_L3:
        return false;
    }

    private Request b(Request request)
    {
        com.squareup.okhttp.Request.Builder builder = request.g();
        if (request.a("Host") == null)
        {
            builder.a("Host", a(request.a()));
        }
        if ((e == null || e.l() != Protocol.a) && request.a("Connection") == null)
        {
            builder.a("Connection", "Keep-Alive");
        }
        if (request.a("Accept-Encoding") == null)
        {
            j = true;
            builder.a("Accept-Encoding", "gzip");
        }
        CookieHandler cookiehandler = a.f();
        if (cookiehandler != null)
        {
            java.util.Map map = OkHeaders.a(builder.c().e(), null);
            OkHeaders.a(builder, cookiehandler.get(request.b(), map));
        }
        if (request.a("User-Agent") == null)
        {
            builder.a("User-Agent", Version.a());
        }
        return builder.c();
    }

    private static Response b(Response response)
    {
        if (response != null && response.g() != null)
        {
            response = response.h().a(null).a();
        }
        return response;
    }

    static Transport b(HttpEngine httpengine)
    {
        return httpengine.i;
    }

    private boolean b(IOException ioexception)
    {
        while (!a.p() || (ioexception instanceof SSLPeerUnverifiedException) || (ioexception instanceof SSLHandshakeException) && (ioexception.getCause() instanceof CertificateException) || (ioexception instanceof ProtocolException) || (ioexception instanceof InterruptedIOException)) 
        {
            return false;
        }
        return true;
    }

    private Response c(Response response)
    {
        while (!j || !"gzip".equalsIgnoreCase(n.a("Content-Encoding")) || response.g() == null) 
        {
            return response;
        }
        GzipSource gzipsource = new GzipSource(response.g().b());
        Headers headers = response.f().c().b("Content-Encoding").b("Content-Length").a();
        return response.h().a(headers).a(new RealResponseBody(headers, Okio.a(gzipsource))).a();
    }

    static Response c(HttpEngine httpengine)
    {
        return httpengine.q();
    }

    private void p()
    {
        InternalCache internalcache = Internal.b.a(a);
        if (internalcache != null)
        {
            if (!CacheStrategy.a(n, l))
            {
                if (HttpMethod.a(l.d()))
                {
                    try
                    {
                        internalcache.b(l);
                        return;
                    }
                    catch (IOException ioexception)
                    {
                        return;
                    }
                }
            } else
            {
                s = internalcache.a(b(n));
                return;
            }
        }
    }

    private Response q()
    {
        i.a();
        Response response = i.b().a(l).a(e.j()).a(OkHeaders.b, Long.toString(b)).a(OkHeaders.c, Long.toString(System.currentTimeMillis())).a();
        if (!r)
        {
            response = response.h().a(i.a(response)).a();
        }
        Internal.b.a(e, response.b());
        return response;
    }

    public HttpEngine a(IOException ioexception)
    {
        return a(ioexception, o);
    }

    public HttpEngine a(IOException ioexception, Sink sink)
    {
        if (f != null && e != null)
        {
            f.a(e, ioexception);
        }
        boolean flag;
        if (sink == null || (sink instanceof RetryableSink))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (f == null && e == null || f != null && !f.a() || !b(ioexception) || !flag)
        {
            return null;
        } else
        {
            Connection connection = m();
            return new HttpEngine(a, k, c, q, r, connection, f, (RetryableSink)sink, h);
        }
    }

    public void a()
    {
        if (t == null)
        {
            if (i != null)
            {
                throw new IllegalStateException();
            }
            Request request = b(k);
            InternalCache internalcache = Internal.b.a(a);
            Response response;
            if (internalcache != null)
            {
                response = internalcache.a(request);
            } else
            {
                response = null;
            }
            t = (new CacheStrategy.Factory(System.currentTimeMillis(), request, response)).a();
            l = t.a;
            m = t.b;
            if (internalcache != null)
            {
                internalcache.a(t);
            }
            if (response != null && m == null)
            {
                Util.a(response.g());
            }
            if (l != null)
            {
                if (e == null)
                {
                    a(l);
                }
                i = Internal.b.a(e, this);
                if (q && c() && o == null)
                {
                    long l1 = OkHeaders.a(request);
                    if (c)
                    {
                        if (l1 > 0x7fffffffL)
                        {
                            throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
                        }
                        if (l1 != -1L)
                        {
                            i.a(l);
                            o = new RetryableSink((int)l1);
                            return;
                        } else
                        {
                            o = new RetryableSink();
                            return;
                        }
                    } else
                    {
                        i.a(l);
                        o = i.a(l, l1);
                        return;
                    }
                }
            } else
            {
                if (e != null)
                {
                    Internal.b.a(a.m(), e);
                    e = null;
                }
                if (m != null)
                {
                    n = m.h().a(k).c(b(h)).b(b(m)).a();
                } else
                {
                    n = (new com.squareup.okhttp.Response.Builder()).a(k).c(b(h)).a(Protocol.b).a(504).a("Unsatisfiable Request (only-if-cached)").a(d).a();
                }
                n = c(n);
                return;
            }
        }
    }

    public void a(Headers headers)
    {
        CookieHandler cookiehandler = a.f();
        if (cookiehandler != null)
        {
            cookiehandler.put(k.b(), OkHeaders.a(headers, null));
        }
    }

    public void b()
    {
        if (b != -1L)
        {
            throw new IllegalStateException();
        } else
        {
            b = System.currentTimeMillis();
            return;
        }
    }

    public boolean b(URL url)
    {
        URL url1 = k.a();
        return url1.getHost().equals(url.getHost()) && Util.a(url1) == Util.a(url) && url1.getProtocol().equals(url.getProtocol());
    }

    boolean c()
    {
        return HttpMethod.c(k.d());
    }

    public Sink d()
    {
        if (t == null)
        {
            throw new IllegalStateException();
        } else
        {
            return o;
        }
    }

    public BufferedSink e()
    {
        BufferedSink bufferedsink = p;
        if (bufferedsink != null)
        {
            return bufferedsink;
        }
        Sink sink = d();
        if (sink != null)
        {
            BufferedSink bufferedsink1 = Okio.a(sink);
            p = bufferedsink1;
            return bufferedsink1;
        } else
        {
            return null;
        }
    }

    public boolean f()
    {
        return n != null;
    }

    public Request g()
    {
        return k;
    }

    public Response h()
    {
        if (n == null)
        {
            throw new IllegalStateException();
        } else
        {
            return n;
        }
    }

    public Connection i()
    {
        return e;
    }

    public Route j()
    {
        return g;
    }

    public void k()
    {
        if (i != null && e != null)
        {
            i.c();
        }
        e = null;
    }

    public void l()
    {
        if (i == null)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        i.a(this);
        return;
        IOException ioexception;
        ioexception;
    }

    public Connection m()
    {
        if (p == null) goto _L2; else goto _L1
_L1:
        Util.a(p);
_L4:
        if (n == null)
        {
            if (e != null)
            {
                Util.a(e.d());
            }
            e = null;
            return null;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (o != null)
        {
            Util.a(o);
        }
        if (true) goto _L4; else goto _L3
_L3:
        Util.a(n.g());
        if (i != null && e != null && !i.d())
        {
            Util.a(e.d());
            e = null;
            return null;
        }
        if (e != null && !Internal.b.a(e))
        {
            e = null;
        }
        Connection connection = e;
        e = null;
        return connection;
    }

    public void n()
    {
        if (n == null)
        {
            if (l == null && m == null)
            {
                throw new IllegalStateException("call sendRequest() first!");
            }
            if (l != null)
            {
                Response response;
                if (r)
                {
                    i.a(l);
                    response = q();
                } else
                if (!q)
                {
                    response = (new NetworkInterceptorChain(0, l)).a(l);
                } else
                {
                    if (p != null && p.d().c() > 0L)
                    {
                        p.g();
                    }
                    if (b == -1L)
                    {
                        if (OkHeaders.a(l) == -1L && (o instanceof RetryableSink))
                        {
                            long l1 = ((RetryableSink)o).c();
                            l = l.g().a("Content-Length", Long.toString(l1)).c();
                        }
                        i.a(l);
                    }
                    if (o != null)
                    {
                        if (p != null)
                        {
                            p.close();
                        } else
                        {
                            o.close();
                        }
                        if (o instanceof RetryableSink)
                        {
                            i.a((RetryableSink)o);
                        }
                    }
                    response = q();
                }
                a(response.f());
                if (m != null)
                {
                    if (a(m, response))
                    {
                        n = m.h().a(k).c(b(h)).a(a(m.f(), response.f())).b(b(m)).a(b(response)).a();
                        response.g().close();
                        k();
                        InternalCache internalcache = Internal.b.a(a);
                        internalcache.a();
                        internalcache.a(m, b(n));
                        n = c(n);
                        return;
                    }
                    Util.a(m.g());
                }
                n = response.h().a(k).c(b(h)).b(b(m)).a(b(response)).a();
                if (a(n))
                {
                    p();
                    n = c(a(s, n));
                    return;
                }
            }
        }
    }

    public Request o()
    {
        if (n == null)
        {
            throw new IllegalStateException();
        }
        Proxy proxy;
        if (j() != null)
        {
            proxy = j().b();
        } else
        {
            proxy = a.d();
        }
        switch (n.c())
        {
        default:
            return null;

        case 407: 
            if (proxy.type() != java.net.Proxy.Type.HTTP)
            {
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            // fall through

        case 401: 
            return OkHeaders.a(a.l(), n, proxy);

        case 307: 
        case 308: 
            if (!k.d().equals("GET") && !k.d().equals("HEAD"))
            {
                return null;
            }
            break;

        case 300: 
        case 301: 
        case 302: 
        case 303: 
            break;
        }
        if (!a.o())
        {
            return null;
        }
        String s1 = n.a("Location");
        if (s1 == null)
        {
            return null;
        }
        URL url = new URL(k.a(), s1);
        if (!url.getProtocol().equals("https") && !url.getProtocol().equals("http"))
        {
            return null;
        }
        if (!url.getProtocol().equals(k.a().getProtocol()) && !a.n())
        {
            return null;
        }
        com.squareup.okhttp.Request.Builder builder = k.g();
        if (HttpMethod.c(k.d()))
        {
            builder.a("GET", null);
            builder.b("Transfer-Encoding");
            builder.b("Content-Length");
            builder.b("Content-Type");
        }
        if (!b(url))
        {
            builder.b("Authorization");
        }
        return builder.a(url).c();
    }

}
