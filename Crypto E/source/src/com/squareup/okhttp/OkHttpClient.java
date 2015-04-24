// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Network;
import com.squareup.okhttp.internal.RouteDatabase;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.AuthenticatorAdapter;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.Transport;
import com.squareup.okhttp.internal.tls.OkHostnameVerifier;
import java.net.CookieHandler;
import java.net.Proxy;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

// Referenced classes of package com.squareup.okhttp:
//            Protocol, ConnectionSpec, Dispatcher, Cache, 
//            Call, CertificatePinner, ConnectionPool, Authenticator, 
//            Request, Connection

public class OkHttpClient
    implements Cloneable
{

    private static final List a;
    private static final List b;
    private static SSLSocketFactory c;
    private int A;
    private final RouteDatabase d;
    private Dispatcher e;
    private Proxy f;
    private List g;
    private List h;
    private final List i;
    private final List j;
    private ProxySelector k;
    private CookieHandler l;
    private InternalCache m;
    private Cache n;
    private SocketFactory o;
    private SSLSocketFactory p;
    private HostnameVerifier q;
    private CertificatePinner r;
    private Authenticator s;
    private ConnectionPool t;
    private Network u;
    private boolean v;
    private boolean w;
    private boolean x;
    private int y;
    private int z;

    public OkHttpClient()
    {
        i = new ArrayList();
        j = new ArrayList();
        v = true;
        w = true;
        x = true;
        d = new RouteDatabase();
        e = new Dispatcher();
    }

    private OkHttpClient(OkHttpClient okhttpclient)
    {
        i = new ArrayList();
        j = new ArrayList();
        v = true;
        w = true;
        x = true;
        d = okhttpclient.d;
        e = okhttpclient.e;
        f = okhttpclient.f;
        g = okhttpclient.g;
        h = okhttpclient.h;
        i.addAll(okhttpclient.i);
        j.addAll(okhttpclient.j);
        k = okhttpclient.k;
        l = okhttpclient.l;
        n = okhttpclient.n;
        InternalCache internalcache;
        if (n != null)
        {
            internalcache = n.a;
        } else
        {
            internalcache = okhttpclient.m;
        }
        m = internalcache;
        o = okhttpclient.o;
        p = okhttpclient.p;
        q = okhttpclient.q;
        r = okhttpclient.r;
        s = okhttpclient.s;
        t = okhttpclient.t;
        u = okhttpclient.u;
        v = okhttpclient.v;
        w = okhttpclient.w;
        x = okhttpclient.x;
        y = okhttpclient.y;
        z = okhttpclient.z;
        A = okhttpclient.A;
    }

    static Network a(OkHttpClient okhttpclient)
    {
        return okhttpclient.u;
    }

    private SSLSocketFactory y()
    {
        this;
        JVM INSTR monitorenter ;
        SSLSocketFactory sslsocketfactory = c;
        if (sslsocketfactory != null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        SSLContext sslcontext = SSLContext.getInstance("TLS");
        sslcontext.init(null, null, null);
        c = sslcontext.getSocketFactory();
        SSLSocketFactory sslsocketfactory1 = c;
        this;
        JVM INSTR monitorexit ;
        return sslsocketfactory1;
        GeneralSecurityException generalsecurityexception;
        generalsecurityexception;
        throw new AssertionError();
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final int a()
    {
        return y;
    }

    public Call a(Request request)
    {
        return new Call(this, request);
    }

    public final OkHttpClient a(Cache cache)
    {
        n = cache;
        m = null;
        return this;
    }

    public final OkHttpClient a(ConnectionPool connectionpool)
    {
        t = connectionpool;
        return this;
    }

    public final OkHttpClient a(Proxy proxy)
    {
        f = proxy;
        return this;
    }

    public final OkHttpClient a(List list)
    {
        List list1 = Util.a(list);
        if (!list1.contains(Protocol.b))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("protocols doesn't contain http/1.1: ").append(list1).toString());
        }
        if (list1.contains(Protocol.a))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("protocols must not contain http/1.0: ").append(list1).toString());
        }
        if (list1.contains(null))
        {
            throw new IllegalArgumentException("protocols must not contain null");
        } else
        {
            g = Util.a(list1);
            return this;
        }
    }

    public final OkHttpClient a(HostnameVerifier hostnameverifier)
    {
        q = hostnameverifier;
        return this;
    }

    public final OkHttpClient a(SSLSocketFactory sslsocketfactory)
    {
        p = sslsocketfactory;
        return this;
    }

    public final void a(long l1, TimeUnit timeunit)
    {
        if (l1 < 0L)
        {
            throw new IllegalArgumentException("timeout < 0");
        }
        if (timeunit == null)
        {
            throw new IllegalArgumentException("unit == null");
        }
        long l2 = timeunit.toMillis(l1);
        if (l2 > 0x7fffffffL)
        {
            throw new IllegalArgumentException("Timeout too large.");
        } else
        {
            y = (int)l2;
            return;
        }
    }

    public final void a(boolean flag)
    {
        w = flag;
    }

    public final int b()
    {
        return z;
    }

    public final void b(long l1, TimeUnit timeunit)
    {
        if (l1 < 0L)
        {
            throw new IllegalArgumentException("timeout < 0");
        }
        if (timeunit == null)
        {
            throw new IllegalArgumentException("unit == null");
        }
        long l2 = timeunit.toMillis(l1);
        if (l2 > 0x7fffffffL)
        {
            throw new IllegalArgumentException("Timeout too large.");
        } else
        {
            z = (int)l2;
            return;
        }
    }

    public final int c()
    {
        return A;
    }

    public Object clone()
    {
        return x();
    }

    public final Proxy d()
    {
        return f;
    }

    public final ProxySelector e()
    {
        return k;
    }

    public final CookieHandler f()
    {
        return l;
    }

    final InternalCache g()
    {
        return m;
    }

    public final SocketFactory h()
    {
        return o;
    }

    public final SSLSocketFactory i()
    {
        return p;
    }

    public final HostnameVerifier j()
    {
        return q;
    }

    public final CertificatePinner k()
    {
        return r;
    }

    public final Authenticator l()
    {
        return s;
    }

    public final ConnectionPool m()
    {
        return t;
    }

    public final boolean n()
    {
        return v;
    }

    public final boolean o()
    {
        return w;
    }

    public final boolean p()
    {
        return x;
    }

    final RouteDatabase q()
    {
        return d;
    }

    public final Dispatcher r()
    {
        return e;
    }

    public final List s()
    {
        return g;
    }

    public final List t()
    {
        return h;
    }

    public List u()
    {
        return i;
    }

    public List v()
    {
        return j;
    }

    final OkHttpClient w()
    {
        OkHttpClient okhttpclient = new OkHttpClient(this);
        if (okhttpclient.k == null)
        {
            okhttpclient.k = ProxySelector.getDefault();
        }
        if (okhttpclient.l == null)
        {
            okhttpclient.l = CookieHandler.getDefault();
        }
        if (okhttpclient.o == null)
        {
            okhttpclient.o = SocketFactory.getDefault();
        }
        if (okhttpclient.p == null)
        {
            okhttpclient.p = y();
        }
        if (okhttpclient.q == null)
        {
            okhttpclient.q = OkHostnameVerifier.a;
        }
        if (okhttpclient.r == null)
        {
            okhttpclient.r = CertificatePinner.a;
        }
        if (okhttpclient.s == null)
        {
            okhttpclient.s = AuthenticatorAdapter.a;
        }
        if (okhttpclient.t == null)
        {
            okhttpclient.t = ConnectionPool.a();
        }
        if (okhttpclient.g == null)
        {
            okhttpclient.g = a;
        }
        if (okhttpclient.h == null)
        {
            okhttpclient.h = b;
        }
        if (okhttpclient.u == null)
        {
            okhttpclient.u = Network.a;
        }
        return okhttpclient;
    }

    public final OkHttpClient x()
    {
        OkHttpClient okhttpclient;
        try
        {
            okhttpclient = (OkHttpClient)super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new AssertionError();
        }
        return okhttpclient;
    }

    static 
    {
        Protocol aprotocol[] = new Protocol[3];
        aprotocol[0] = Protocol.d;
        aprotocol[1] = Protocol.c;
        aprotocol[2] = Protocol.b;
        a = Util.a(aprotocol);
        ConnectionSpec aconnectionspec[] = new ConnectionSpec[3];
        aconnectionspec[0] = ConnectionSpec.a;
        aconnectionspec[1] = ConnectionSpec.b;
        aconnectionspec[2] = ConnectionSpec.c;
        b = Util.a(aconnectionspec);
        Internal.b = new Internal() {

            public InternalCache a(OkHttpClient okhttpclient)
            {
                return okhttpclient.g();
            }

            public Transport a(Connection connection, HttpEngine httpengine)
            {
                return connection.a(httpengine);
            }

            public void a(Connection connection, Protocol protocol)
            {
                connection.a(protocol);
            }

            public void a(Connection connection, Object obj)
            {
                connection.b(obj);
            }

            public void a(ConnectionPool connectionpool, Connection connection)
            {
                connectionpool.a(connection);
            }

            public void a(Headers.Builder builder, String s1)
            {
                builder.a(s1);
            }

            public void a(OkHttpClient okhttpclient, Connection connection, HttpEngine httpengine, Request request)
            {
                connection.a(okhttpclient, httpengine, request);
            }

            public boolean a(Connection connection)
            {
                return connection.a();
            }

            public int b(Connection connection)
            {
                return connection.n();
            }

            public RouteDatabase b(OkHttpClient okhttpclient)
            {
                return okhttpclient.q();
            }

            public void b(Connection connection, HttpEngine httpengine)
            {
                connection.a(httpengine);
            }

            public void b(Connection connection, Object obj)
            {
                connection.b(obj);
            }

            public Network c(OkHttpClient okhttpclient)
            {
                return OkHttpClient.a(okhttpclient);
            }

            public boolean c(Connection connection)
            {
                return connection.f();
            }

        };
    }
}
