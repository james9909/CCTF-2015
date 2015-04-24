// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.pool;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.HttpHost;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.SocketConfig;
import org.apache.http.impl.DefaultBHttpClientConnection;
import org.apache.http.impl.DefaultBHttpClientConnectionFactory;
import org.apache.http.params.HttpParamConfig;
import org.apache.http.params.HttpParams;
import org.apache.http.pool.ConnFactory;
import org.apache.http.util.Args;

public class BasicConnFactory
    implements ConnFactory
{

    private final HttpConnectionFactory connFactory;
    private final int connectTimeout;
    private final SocketFactory plainfactory;
    private final SocketConfig sconfig;
    private final SSLSocketFactory sslfactory;

    public BasicConnFactory()
    {
        this(null, null, 0, SocketConfig.DEFAULT, ConnectionConfig.DEFAULT);
    }

    public BasicConnFactory(int i, SocketConfig socketconfig, ConnectionConfig connectionconfig)
    {
        this(null, null, i, socketconfig, connectionconfig);
    }

    public BasicConnFactory(SocketFactory socketfactory, SSLSocketFactory sslsocketfactory, int i, SocketConfig socketconfig, ConnectionConfig connectionconfig)
    {
        plainfactory = socketfactory;
        sslfactory = sslsocketfactory;
        connectTimeout = i;
        if (socketconfig == null)
        {
            socketconfig = SocketConfig.DEFAULT;
        }
        sconfig = socketconfig;
        if (connectionconfig == null)
        {
            connectionconfig = ConnectionConfig.DEFAULT;
        }
        connFactory = new DefaultBHttpClientConnectionFactory(connectionconfig);
    }

    public BasicConnFactory(SSLSocketFactory sslsocketfactory, HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP params");
        plainfactory = null;
        sslfactory = sslsocketfactory;
        connectTimeout = httpparams.getIntParameter("http.connection.timeout", 0);
        sconfig = HttpParamConfig.getSocketConfig(httpparams);
        connFactory = new DefaultBHttpClientConnectionFactory(HttpParamConfig.getConnectionConfig(httpparams));
    }

    public BasicConnFactory(SocketConfig socketconfig, ConnectionConfig connectionconfig)
    {
        this(null, null, 0, socketconfig, connectionconfig);
    }

    public BasicConnFactory(HttpParams httpparams)
    {
        this(((SSLSocketFactory) (null)), httpparams);
    }

    public volatile Object create(Object obj)
    {
        return create((HttpHost)obj);
    }

    protected HttpClientConnection create(Socket socket, HttpParams httpparams)
    {
        DefaultBHttpClientConnection defaultbhttpclientconnection = new DefaultBHttpClientConnection(httpparams.getIntParameter("http.socket.buffer-size", 8192));
        defaultbhttpclientconnection.bind(socket);
        return defaultbhttpclientconnection;
    }

    public HttpClientConnection create(HttpHost httphost)
    {
        String s = httphost.getSchemeName();
        boolean flag = "http".equalsIgnoreCase(s);
        Socket socket = null;
        Socket socket1;
        if (flag)
        {
            if (plainfactory != null)
            {
                socket = plainfactory.createSocket();
            } else
            {
                socket = new Socket();
            }
        }
        String s1;
        int i;
        int j;
        if ("https".equalsIgnoreCase(s))
        {
            Object obj;
            if (sslfactory != null)
            {
                obj = sslfactory;
            } else
            {
                obj = SSLSocketFactory.getDefault();
            }
            socket1 = ((SocketFactory) (obj)).createSocket();
        } else
        {
            socket1 = socket;
        }
        if (socket1 == null)
        {
            throw new IOException((new StringBuilder()).append(s).append(" scheme is not supported").toString());
        }
        s1 = httphost.getHostName();
        i = httphost.getPort();
        if (i == -1)
        {
            if (httphost.getSchemeName().equalsIgnoreCase("http"))
            {
                i = 80;
            } else
            if (httphost.getSchemeName().equalsIgnoreCase("https"))
            {
                i = 443;
            }
        }
        socket1.setSoTimeout(sconfig.getSoTimeout());
        socket1.connect(new InetSocketAddress(s1, i), connectTimeout);
        socket1.setTcpNoDelay(sconfig.isTcpNoDelay());
        j = sconfig.getSoLinger();
        if (j >= 0)
        {
            boolean flag1;
            if (j > 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            socket1.setSoLinger(flag1, j);
        }
        socket1.setKeepAlive(sconfig.isSoKeepAlive());
        return (HttpClientConnection)connFactory.createConnection(socket1);
    }
}
