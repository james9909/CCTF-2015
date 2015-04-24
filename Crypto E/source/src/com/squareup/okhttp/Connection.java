// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.RouteDatabase;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpConnection;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.HttpTransport;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.SpdyTransport;
import com.squareup.okhttp.internal.http.Transport;
import com.squareup.okhttp.internal.spdy.SpdyConnection;
import com.squareup.okhttp.internal.tls.OkHostnameVerifier;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.URL;
import java.security.Principal;
import java.security.cert.X509Certificate;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okio.Source;

// Referenced classes of package com.squareup.okhttp:
//            Protocol, Route, Request, Address, 
//            ConnectionSpec, Handshake, CertificatePinner, Response, 
//            OkHttpClient, ConnectionPool

public final class Connection
{

    private final ConnectionPool a;
    private final Route b;
    private Socket c;
    private boolean d;
    private HttpConnection e;
    private SpdyConnection f;
    private Protocol g;
    private long h;
    private Handshake i;
    private int j;
    private Object k;

    public Connection(ConnectionPool connectionpool, Route route)
    {
        d = false;
        g = Protocol.b;
        a = connectionpool;
        b = route;
    }

    private Request a(Request request)
    {
        if (!b.c())
        {
            return null;
        }
        String s = request.a().getHost();
        int i1 = Util.a(request.a());
        String s1;
        Request.Builder builder;
        String s2;
        String s3;
        if (i1 == Util.a("https"))
        {
            s1 = s;
        } else
        {
            s1 = (new StringBuilder()).append(s).append(":").append(i1).toString();
        }
        builder = (new Request.Builder()).a(new URL("https", s, i1, "/")).a("Host", s1).a("Proxy-Connection", "Keep-Alive");
        s2 = request.a("User-Agent");
        if (s2 != null)
        {
            builder.a("User-Agent", s2);
        }
        s3 = request.a("Proxy-Authorization");
        if (s3 != null)
        {
            builder.a("Proxy-Authorization", s3);
        }
        return builder.c();
    }

    private void a(Request request, int i1, int j1)
    {
        Platform platform;
        SSLSocket sslsocket;
        platform = Platform.a();
        if (request != null)
        {
            b(request, i1, j1);
        }
        c = b.a.e.createSocket(c, b.a.b, b.a.c, true);
        sslsocket = (SSLSocket)c;
        b.d.a(sslsocket, b);
        String s;
        sslsocket.startHandshake();
        if (!b.d.d())
        {
            break MISSING_BLOCK_LABEL_124;
        }
        s = platform.b(sslsocket);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        g = Protocol.a(s);
        platform.a(sslsocket);
        i = Handshake.a(sslsocket.getSession());
        if (!b.a.f.verify(b.a.b, sslsocket.getSession()))
        {
            X509Certificate x509certificate = (X509Certificate)sslsocket.getSession().getPeerCertificates()[0];
            throw new IOException((new StringBuilder()).append("Hostname ").append(b.a.b).append(" not verified:").append("\n    certificate: ").append(CertificatePinner.a(x509certificate)).append("\n    DN: ").append(x509certificate.getSubjectDN().getName()).append("\n    subjectAltNames: ").append(OkHostnameVerifier.a(x509certificate)).toString());
        }
        break MISSING_BLOCK_LABEL_290;
        Exception exception;
        exception;
        platform.a(sslsocket);
        throw exception;
        b.a.g.a(b.a.b, i.b());
        if (g == Protocol.c || g == Protocol.d)
        {
            sslsocket.setSoTimeout(0);
            f = (new com.squareup.okhttp.internal.spdy.SpdyConnection.Builder(b.a.a(), true, c)).a(g).a();
            f.e();
            return;
        } else
        {
            e = new HttpConnection(a, this, c);
            return;
        }
    }

    private void b(Request request, int i1, int j1)
    {
        HttpConnection httpconnection = new HttpConnection(a, this, c);
        httpconnection.a(i1, j1);
        URL url = request.a();
        String s = (new StringBuilder()).append("CONNECT ").append(url.getHost()).append(":").append(url.getPort()).append(" HTTP/1.1").toString();
        do
        {
            httpconnection.a(request.e(), s);
            httpconnection.d();
            Response response = httpconnection.g().a(request).a();
            long l1 = OkHeaders.a(response);
            if (l1 == -1L)
            {
                l1 = 0L;
            }
            Source source = httpconnection.b(l1);
            Util.b(source, 0x7fffffff, TimeUnit.MILLISECONDS);
            source.close();
            switch (response.c())
            {
            default:
                throw new IOException((new StringBuilder()).append("Unexpected response code for CONNECT: ").append(response.c()).toString());

            case 200: 
                if (httpconnection.e() > 0L)
                {
                    throw new IOException("TLS tunnel buffered too many bytes!");
                } else
                {
                    return;
                }

            case 407: 
                request = OkHeaders.a(b.a.h, response, b.b);
                break;
            }
        } while (request != null);
        throw new IOException("Failed to authenticate with proxy");
    }

    Transport a(HttpEngine httpengine)
    {
        if (f != null)
        {
            return new SpdyTransport(httpengine, f);
        } else
        {
            return new HttpTransport(httpengine, e);
        }
    }

    void a(int i1, int j1)
    {
        if (!d)
        {
            throw new IllegalStateException("setTimeouts - not connected");
        }
        if (e != null)
        {
            c.setSoTimeout(i1);
            e.a(i1, j1);
        }
    }

    void a(int i1, int j1, int k1, Request request)
    {
        if (d)
        {
            throw new IllegalStateException("already connected");
        }
        if (b.b.type() == java.net.Proxy.Type.DIRECT || b.b.type() == java.net.Proxy.Type.HTTP)
        {
            c = b.a.d.createSocket();
        } else
        {
            c = new Socket(b.b);
        }
        c.setSoTimeout(j1);
        Platform.a().a(c, b.c, i1);
        if (b.a.e != null)
        {
            a(request, j1, k1);
        } else
        {
            e = new HttpConnection(a, this, c);
        }
        d = true;
    }

    void a(OkHttpClient okhttpclient, Object obj, Request request)
    {
        a(obj);
        if (!b())
        {
            Request request1 = a(request);
            a(okhttpclient.a(), okhttpclient.b(), okhttpclient.c(), request1);
            if (k())
            {
                okhttpclient.m().b(this);
            }
            okhttpclient.q().b(c());
        }
        a(okhttpclient.b(), okhttpclient.c());
    }

    void a(Protocol protocol)
    {
        if (protocol == null)
        {
            throw new IllegalArgumentException("protocol == null");
        } else
        {
            g = protocol;
            return;
        }
    }

    void a(Object obj)
    {
        if (k())
        {
            return;
        }
        ConnectionPool connectionpool = a;
        connectionpool;
        JVM INSTR monitorenter ;
        if (k != null)
        {
            throw new IllegalStateException("Connection already has an owner!");
        }
        break MISSING_BLOCK_LABEL_38;
        Exception exception;
        exception;
        connectionpool;
        JVM INSTR monitorexit ;
        throw exception;
        k = obj;
        connectionpool;
        JVM INSTR monitorexit ;
    }

    boolean a()
    {
label0:
        {
            synchronized (a)
            {
                if (k != null)
                {
                    break label0;
                }
            }
            return false;
        }
        k = null;
        connectionpool;
        JVM INSTR monitorexit ;
        return true;
        exception;
        connectionpool;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void b(Object obj)
    {
label0:
        {
            if (k())
            {
                throw new IllegalStateException();
            }
            synchronized (a)
            {
                if (k == obj)
                {
                    break label0;
                }
            }
            return;
        }
        k = null;
        connectionpool;
        JVM INSTR monitorexit ;
        c.close();
        return;
        exception;
        connectionpool;
        JVM INSTR monitorexit ;
        throw exception;
    }

    boolean b()
    {
        return d;
    }

    public Route c()
    {
        return b;
    }

    public Socket d()
    {
        return c;
    }

    boolean e()
    {
        return !c.isClosed() && !c.isInputShutdown() && !c.isOutputShutdown();
    }

    boolean f()
    {
        if (e != null)
        {
            return e.f();
        } else
        {
            return true;
        }
    }

    void g()
    {
        if (f != null)
        {
            throw new IllegalStateException("spdyConnection != null");
        } else
        {
            h = System.nanoTime();
            return;
        }
    }

    boolean h()
    {
        return f == null || f.b();
    }

    long i()
    {
        if (f == null)
        {
            return h;
        } else
        {
            return f.c();
        }
    }

    public Handshake j()
    {
        return i;
    }

    boolean k()
    {
        return f != null;
    }

    public Protocol l()
    {
        return g;
    }

    void m()
    {
        j = 1 + j;
    }

    int n()
    {
        return j;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("Connection{").append(b.a.b).append(":").append(b.a.c).append(", proxy=").append(b.b).append(" hostAddress=").append(b.c.getAddress().getHostAddress()).append(" cipherSuite=");
        String s;
        if (i != null)
        {
            s = i.a();
        } else
        {
            s = "none";
        }
        return stringbuilder.append(s).append(" protocol=").append(g).append('}').toString();
    }
}
