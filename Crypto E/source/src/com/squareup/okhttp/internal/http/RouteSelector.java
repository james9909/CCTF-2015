// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.ConnectionSpec;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Network;
import com.squareup.okhttp.internal.RouteDatabase;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.SocketException;
import java.net.URI;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLProtocolException;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            HttpEngine

public final class RouteSelector
{

    private final Address a;
    private final URI b;
    private final Network c;
    private final OkHttpClient d;
    private final ConnectionPool e;
    private final RouteDatabase f;
    private final Request g;
    private Proxy h;
    private InetSocketAddress i;
    private ConnectionSpec j;
    private List k;
    private int l;
    private List m;
    private int n;
    private List o;
    private int p;
    private final List q = new ArrayList();

    private RouteSelector(Address address, URI uri, OkHttpClient okhttpclient, Request request)
    {
        k = Collections.emptyList();
        m = Collections.emptyList();
        o = Collections.emptyList();
        a = address;
        b = uri;
        d = okhttpclient;
        e = okhttpclient.m();
        f = Internal.b.b(okhttpclient);
        c = Internal.b.c(okhttpclient);
        g = request;
        a(uri, address.d());
    }

    public static RouteSelector a(Request request, OkHttpClient okhttpclient)
    {
        String s = request.a().getHost();
        if (s == null || s.length() == 0)
        {
            throw new UnknownHostException(request.a().toString());
        }
        javax.net.ssl.SSLSocketFactory sslsocketfactory;
        javax.net.ssl.HostnameVerifier hostnameverifier;
        com.squareup.okhttp.CertificatePinner certificatepinner;
        if (request.i())
        {
            sslsocketfactory = okhttpclient.i();
            hostnameverifier = okhttpclient.j();
            certificatepinner = okhttpclient.k();
        } else
        {
            sslsocketfactory = null;
            hostnameverifier = null;
            certificatepinner = null;
        }
        return new RouteSelector(new Address(s, Util.a(request.a()), okhttpclient.h(), sslsocketfactory, hostnameverifier, certificatepinner, okhttpclient.l(), okhttpclient.d(), okhttpclient.s(), okhttpclient.t(), okhttpclient.e()), request.b(), okhttpclient, request);
    }

    static String a(InetSocketAddress inetsocketaddress)
    {
        InetAddress inetaddress = inetsocketaddress.getAddress();
        if (inetaddress == null)
        {
            return inetsocketaddress.getHostName();
        } else
        {
            return inetaddress.getHostAddress();
        }
    }

    private void a(Proxy proxy)
    {
        m = new ArrayList();
        String s;
        int i1;
        InetAddress ainetaddress[];
        int j1;
        if (proxy.type() == java.net.Proxy.Type.DIRECT || proxy.type() == java.net.Proxy.Type.SOCKS)
        {
            s = a.a();
            i1 = Util.a(b);
        } else
        {
            java.net.SocketAddress socketaddress = proxy.address();
            if (!(socketaddress instanceof InetSocketAddress))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Proxy.address() is not an InetSocketAddress: ").append(socketaddress.getClass()).toString());
            }
            InetSocketAddress inetsocketaddress = (InetSocketAddress)socketaddress;
            s = a(inetsocketaddress);
            i1 = inetsocketaddress.getPort();
        }
        ainetaddress = c.a(s);
        j1 = ainetaddress.length;
        for (int k1 = 0; k1 < j1; k1++)
        {
            InetAddress inetaddress = ainetaddress[k1];
            m.add(new InetSocketAddress(inetaddress, i1));
        }

        n = 0;
    }

    private void a(URI uri, Proxy proxy)
    {
        if (proxy != null)
        {
            k = Collections.singletonList(proxy);
        } else
        {
            k = new ArrayList();
            List list = d.e().select(uri);
            if (list != null)
            {
                k.addAll(list);
            }
            k.removeAll(Collections.singleton(Proxy.NO_PROXY));
            k.add(Proxy.NO_PROXY);
        }
        l = 0;
    }

    private boolean a(ConnectionSpec connectionspec)
    {
        Object obj = o.get(0);
        boolean flag = false;
        if (connectionspec != obj)
        {
            boolean flag1 = connectionspec.a();
            flag = false;
            if (flag1)
            {
                flag = true;
            }
        }
        return flag;
    }

    private boolean c()
    {
        return l < k.size();
    }

    private Proxy d()
    {
        if (!c())
        {
            throw new SocketException((new StringBuilder()).append("No route to ").append(a.a()).append("; exhausted proxy configurations: ").append(k).toString());
        } else
        {
            List list = k;
            int i1 = l;
            l = i1 + 1;
            Proxy proxy = (Proxy)list.get(i1);
            a(proxy);
            return proxy;
        }
    }

    private boolean e()
    {
        return n < m.size();
    }

    private InetSocketAddress f()
    {
        if (!e())
        {
            throw new SocketException((new StringBuilder()).append("No route to ").append(a.a()).append("; exhausted inet socket addresses: ").append(m).toString());
        } else
        {
            List list = m;
            int i1 = n;
            n = i1 + 1;
            InetSocketAddress inetsocketaddress = (InetSocketAddress)list.get(i1);
            g();
            return inetsocketaddress;
        }
    }

    private void g()
    {
        o = new ArrayList();
        List list = a.c();
        int i1 = list.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            ConnectionSpec connectionspec = (ConnectionSpec)list.get(j1);
            if (g.i() == connectionspec.a())
            {
                o.add(connectionspec);
            }
        }

        p = 0;
    }

    private boolean h()
    {
        return p < o.size();
    }

    private ConnectionSpec i()
    {
        if (!h())
        {
            throw new SocketException((new StringBuilder()).append("No route to ").append(a.a()).append("; exhausted connection specs: ").append(o).toString());
        } else
        {
            List list = o;
            int i1 = p;
            p = i1 + 1;
            return (ConnectionSpec)list.get(i1);
        }
    }

    private boolean j()
    {
        return !q.isEmpty();
    }

    private Route k()
    {
        return (Route)q.remove(0);
    }

    public Connection a(HttpEngine httpengine)
    {
        Connection connection = b();
        Internal.b.a(d, connection, httpengine, g);
        return connection;
    }

    public void a(Connection connection, IOException ioexception)
    {
        if (Internal.b.b(connection) <= 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Route route = connection.c();
        if (route.b().type() != java.net.Proxy.Type.DIRECT && a.e() != null)
        {
            a.e().connectFailed(b, route.b().address(), ioexception);
        }
        f.a(route);
        if (!(ioexception instanceof SSLHandshakeException) && !(ioexception instanceof SSLProtocolException))
        {
            while (p < o.size()) 
            {
                List list = o;
                int i1 = p;
                p = i1 + 1;
                ConnectionSpec connectionspec = (ConnectionSpec)list.get(i1);
                boolean flag = a(connectionspec);
                Route route1 = new Route(a, h, i, connectionspec, flag);
                f.a(route1);
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public boolean a()
    {
        return h() || e() || c() || j();
    }

    Connection b()
    {
        do
        {
            Connection connection = e.a(a);
            if (connection == null)
            {
                break;
            }
            if (g.d().equals("GET") || Internal.b.c(connection))
            {
                return connection;
            }
            connection.d().close();
        } while (true);
        if (!h())
        {
            if (!e())
            {
                if (!c())
                {
                    if (!j())
                    {
                        throw new NoSuchElementException();
                    } else
                    {
                        return new Connection(e, k());
                    }
                }
                h = d();
            }
            i = f();
        }
        j = i();
        boolean flag = a(j);
        Route route = new Route(a, h, i, j, flag);
        if (f.c(route))
        {
            q.add(route);
            return b();
        } else
        {
            return new Connection(e, route);
        }
    }
}
