// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import java.net.InetAddress;
import org.apache.http.HttpHost;
import org.apache.http.HttpInetConnection;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.protocol:
//            HttpCoreContext, HttpContext

public class RequestTargetHost
    implements HttpRequestInterceptor
{

    public RequestTargetHost()
    {
    }

    public void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        HttpCoreContext httpcorecontext;
        ProtocolVersion protocolversion;
        HttpHost httphost;
        Args.notNull(httprequest, "HTTP request");
        httpcorecontext = HttpCoreContext.adapt(httpcontext);
        protocolversion = httprequest.getRequestLine().getProtocolVersion();
        break MISSING_BLOCK_LABEL_26;
_L5:
        if (httphost != null) goto _L2; else goto _L1
_L1:
        HttpHost httphost1;
        org.apache.http.HttpConnection httpconnection = httpcorecontext.getConnection();
        if (!(httpconnection instanceof HttpInetConnection))
        {
            break MISSING_BLOCK_LABEL_184;
        }
        InetAddress inetaddress = ((HttpInetConnection)httpconnection).getRemoteAddress();
        int i = ((HttpInetConnection)httpconnection).getRemotePort();
        if (inetaddress == null)
        {
            break MISSING_BLOCK_LABEL_184;
        }
        httphost1 = new HttpHost(inetaddress.getHostName(), i);
_L6:
        if (httphost1 != null) goto _L4; else goto _L3
_L3:
        if (!protocolversion.lessEquals(HttpVersion.HTTP_1_0))
        {
            throw new ProtocolException("Target host missing");
        }
        do
        {
            return;
        } while (httprequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT") && protocolversion.lessEquals(HttpVersion.HTTP_1_0) || httprequest.containsHeader("Host"));
        httphost = httpcorecontext.getTargetHost();
          goto _L5
_L2:
        httphost1 = httphost;
_L4:
        httprequest.addHeader("Host", httphost1.toHostString());
        return;
        httphost1 = httphost;
          goto _L6
    }
}
