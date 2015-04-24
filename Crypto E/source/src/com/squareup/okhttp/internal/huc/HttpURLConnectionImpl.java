// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpDate;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.HttpMethod;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.RetryableSink;
import com.squareup.okhttp.internal.http.StatusLine;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpRetryException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketPermission;
import java.net.URL;
import java.security.Permission;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okio.BufferedSink;

public class HttpURLConnectionImpl extends HttpURLConnection
{

    private static final Set e = new LinkedHashSet(Arrays.asList(new String[] {
        "OPTIONS", "GET", "HEAD", "POST", "PUT", "DELETE", "TRACE", "PATCH"
    }));
    final OkHttpClient a;
    protected IOException b;
    protected HttpEngine c;
    Handshake d;
    private com.squareup.okhttp.Headers.Builder f;
    private long g;
    private int h;
    private Headers i;
    private Route j;

    public HttpURLConnectionImpl(URL url, OkHttpClient okhttpclient)
    {
        super(url);
        f = new com.squareup.okhttp.Headers.Builder();
        g = -1L;
        a = okhttpclient;
    }

    private Headers a()
    {
        if (i == null)
        {
            Response response = d().h();
            i = response.f().c().a((new StringBuilder()).append(Platform.a().b()).append("-Response-Source").toString(), a(response)).a();
        }
        return i;
    }

    private HttpEngine a(String s, Connection connection, RetryableSink retryablesink, Response response)
    {
        com.squareup.okhttp.Request.Builder builder = (new com.squareup.okhttp.Request.Builder()).a(getURL()).a(s, null);
        Headers headers = f.a();
        int k = 0;
        for (int l = headers.a(); k < l; k++)
        {
            builder.b(headers.a(k), headers.b(k));
        }

        boolean flag = HttpMethod.c(s);
        boolean flag1 = false;
        if (flag)
        {
            boolean flag2;
            Request request;
            OkHttpClient okhttpclient;
            if (g != -1L)
            {
                builder.a("Content-Length", Long.toString(g));
            } else
            if (chunkLength > 0)
            {
                builder.a("Transfer-Encoding", "chunked");
                flag1 = false;
            } else
            {
                flag1 = true;
            }
            if (headers.a("Content-Type") == null)
            {
                builder.a("Content-Type", "application/x-www-form-urlencoded");
            }
        }
        flag2 = flag1;
        if (headers.a("User-Agent") == null)
        {
            builder.a("User-Agent", c());
        }
        request = builder.c();
        okhttpclient = a;
        if (Internal.b.a(okhttpclient) != null && !getUseCaches())
        {
            okhttpclient = a.x().a(null);
        }
        return new HttpEngine(okhttpclient, request, flag2, true, false, connection, null, retryablesink, response);
    }

    private static String a(Response response)
    {
        if (response.i() == null)
        {
            if (response.j() == null)
            {
                return "NONE";
            } else
            {
                return (new StringBuilder()).append("CACHE ").append(response.c()).toString();
            }
        }
        if (response.j() == null)
        {
            return (new StringBuilder()).append("NETWORK ").append(response.c()).toString();
        } else
        {
            return (new StringBuilder()).append("CONDITIONAL_CACHE ").append(response.i().c()).toString();
        }
    }

    private void a(String s, boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        if (flag)
        {
            arraylist.addAll(a.s());
        }
        String as[] = s.split(",", -1);
        int k = as.length;
        int l = 0;
        while (l < k) 
        {
            String s1 = as[l];
            try
            {
                arraylist.add(Protocol.a(s1));
            }
            catch (IOException ioexception)
            {
                throw new IllegalStateException(ioexception);
            }
            l++;
        }
        a.a(arraylist);
    }

    private boolean a(boolean flag)
    {
        Handshake handshake;
        c.a();
        j = c.j();
        if (c.i() == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        handshake = c.i().j();
_L1:
        d = handshake;
        if (flag)
        {
            try
            {
                c.n();
            }
            catch (IOException ioexception)
            {
                HttpEngine httpengine = c.a(ioexception);
                if (httpengine != null)
                {
                    c = httpengine;
                    return false;
                } else
                {
                    b = ioexception;
                    throw ioexception;
                }
            }
        }
        return true;
        handshake = null;
          goto _L1
    }

    private void b()
    {
        if (b != null)
        {
            throw b;
        }
        if (c != null)
        {
            return;
        }
        connected = true;
        if (!doOutput) goto _L2; else goto _L1
_L1:
        if (!method.equals("GET")) goto _L4; else goto _L3
_L3:
        method = "POST";
_L2:
        c = a(method, null, null, null);
        return;
        IOException ioexception;
        ioexception;
        b = ioexception;
        throw ioexception;
_L4:
        if (HttpMethod.c(method)) goto _L2; else goto _L5
_L5:
        throw new ProtocolException((new StringBuilder()).append(method).append(" does not support writing").toString());
    }

    private String c()
    {
        String s = System.getProperty("http.agent");
        if (s != null)
        {
            return s;
        } else
        {
            return (new StringBuilder()).append("Java").append(System.getProperty("java.version")).toString();
        }
    }

    private HttpEngine d()
    {
        b();
        if (c.f())
        {
            return c;
        }
        do
        {
            while (!a(true)) ;
            Response response = c.h();
            Request request = c.o();
            if (request == null)
            {
                c.k();
                return c;
            }
            int k = 1 + h;
            h = k;
            if (k > 20)
            {
                throw new ProtocolException((new StringBuilder()).append("Too many follow-up requests: ").append(h).toString());
            }
            url = request.a();
            f = request.e().c();
            okio.Sink sink = c.d();
            if (!request.d().equals(method))
            {
                sink = null;
            }
            if (sink != null && !(sink instanceof RetryableSink))
            {
                throw new HttpRetryException("Cannot retry streamed HTTP body", responseCode);
            }
            if (!c.b(request.a()))
            {
                c.k();
            }
            Connection connection = c.m();
            c = a(request.d(), connection, (RetryableSink)sink, response);
        } while (true);
    }

    public final void addRequestProperty(String s, String s1)
    {
        if (connected)
        {
            throw new IllegalStateException("Cannot add request property after connection is made");
        }
        if (s == null)
        {
            throw new NullPointerException("field == null");
        }
        if (s1 == null)
        {
            Platform.a().a((new StringBuilder()).append("Ignoring header ").append(s).append(" because its value was null.").toString());
            return;
        }
        if ("X-Android-Transports".equals(s) || "X-Android-Protocols".equals(s))
        {
            a(s1, true);
            return;
        } else
        {
            f.a(s, s1);
            return;
        }
    }

    public final void connect()
    {
        b();
        while (!a(false)) ;
    }

    public final void disconnect()
    {
        if (c == null)
        {
            return;
        } else
        {
            c.l();
            return;
        }
    }

    public int getConnectTimeout()
    {
        return a.a();
    }

    public final InputStream getErrorStream()
    {
        HttpEngine httpengine;
        boolean flag;
        InputStream inputstream;
        int k;
        InputStream inputstream1;
        try
        {
            httpengine = d();
            flag = HttpEngine.a(httpengine.h());
        }
        catch (IOException ioexception)
        {
            return null;
        }
        inputstream = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        k = httpengine.h().c();
        inputstream = null;
        if (k < 400)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        inputstream1 = httpengine.h().g().c();
        inputstream = inputstream1;
        return inputstream;
    }

    public final String getHeaderField(int k)
    {
        String s;
        try
        {
            s = a().b(k);
        }
        catch (IOException ioexception)
        {
            return null;
        }
        return s;
    }

    public final String getHeaderField(String s)
    {
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        return StatusLine.a(d().h()).toString();
        String s1 = a().a(s);
        return s1;
        IOException ioexception;
        ioexception;
        return null;
    }

    public final String getHeaderFieldKey(int k)
    {
        String s;
        try
        {
            s = a().a(k);
        }
        catch (IOException ioexception)
        {
            return null;
        }
        return s;
    }

    public final Map getHeaderFields()
    {
        Map map;
        try
        {
            map = OkHeaders.a(a(), StatusLine.a(d().h()).toString());
        }
        catch (IOException ioexception)
        {
            return Collections.emptyMap();
        }
        return map;
    }

    public final InputStream getInputStream()
    {
        if (!doInput)
        {
            throw new ProtocolException("This protocol does not support input");
        }
        HttpEngine httpengine = d();
        if (getResponseCode() >= 400)
        {
            throw new FileNotFoundException(url.toString());
        } else
        {
            return httpengine.h().g().c();
        }
    }

    public final OutputStream getOutputStream()
    {
        connect();
        BufferedSink bufferedsink = c.e();
        if (bufferedsink == null)
        {
            throw new ProtocolException((new StringBuilder()).append("method does not support a request body: ").append(method).toString());
        }
        if (c.f())
        {
            throw new ProtocolException("cannot write request body after response has been read");
        } else
        {
            return bufferedsink.e();
        }
    }

    public final Permission getPermission()
    {
        String s = getURL().getHost();
        int k = Util.a(getURL());
        if (usingProxy())
        {
            InetSocketAddress inetsocketaddress = (InetSocketAddress)a.d().address();
            s = inetsocketaddress.getHostName();
            k = inetsocketaddress.getPort();
        }
        return new SocketPermission((new StringBuilder()).append(s).append(":").append(k).toString(), "connect, resolve");
    }

    public int getReadTimeout()
    {
        return a.b();
    }

    public final Map getRequestProperties()
    {
        if (connected)
        {
            throw new IllegalStateException("Cannot access request header fields after connection is set");
        } else
        {
            return OkHeaders.a(f.a(), null);
        }
    }

    public final String getRequestProperty(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return f.c(s);
        }
    }

    public final int getResponseCode()
    {
        return d().h().c();
    }

    public String getResponseMessage()
    {
        return d().h().d();
    }

    public void setConnectTimeout(int k)
    {
        a.a(k, TimeUnit.MILLISECONDS);
    }

    public void setFixedLengthStreamingMode(int k)
    {
        setFixedLengthStreamingMode(k);
    }

    public void setFixedLengthStreamingMode(long l)
    {
        if (super.connected)
        {
            throw new IllegalStateException("Already connected");
        }
        if (chunkLength > 0)
        {
            throw new IllegalStateException("Already in chunked mode");
        }
        if (l < 0L)
        {
            throw new IllegalArgumentException("contentLength < 0");
        } else
        {
            g = l;
            super.fixedContentLength = (int)Math.min(l, 0x7fffffffL);
            return;
        }
    }

    public void setIfModifiedSince(long l)
    {
        super.setIfModifiedSince(l);
        if (ifModifiedSince != 0L)
        {
            f.b("If-Modified-Since", HttpDate.a(new Date(ifModifiedSince)));
            return;
        } else
        {
            f.b("If-Modified-Since");
            return;
        }
    }

    public void setInstanceFollowRedirects(boolean flag)
    {
        a.a(flag);
    }

    public void setReadTimeout(int k)
    {
        a.b(k, TimeUnit.MILLISECONDS);
    }

    public void setRequestMethod(String s)
    {
        if (!e.contains(s))
        {
            throw new ProtocolException((new StringBuilder()).append("Expected one of ").append(e).append(" but was ").append(s).toString());
        } else
        {
            method = s;
            return;
        }
    }

    public final void setRequestProperty(String s, String s1)
    {
        if (connected)
        {
            throw new IllegalStateException("Cannot set request property after connection is made");
        }
        if (s == null)
        {
            throw new NullPointerException("field == null");
        }
        if (s1 == null)
        {
            Platform.a().a((new StringBuilder()).append("Ignoring header ").append(s).append(" because its value was null.").toString());
            return;
        }
        if ("X-Android-Transports".equals(s) || "X-Android-Protocols".equals(s))
        {
            a(s1, false);
            return;
        } else
        {
            f.b(s, s1);
            return;
        }
    }

    public final boolean usingProxy()
    {
        Proxy proxy;
        if (j != null)
        {
            proxy = j.b();
        } else
        {
            proxy = a.d();
        }
        return proxy != null && proxy.type() != java.net.Proxy.Type.DIRECT;
    }

}
