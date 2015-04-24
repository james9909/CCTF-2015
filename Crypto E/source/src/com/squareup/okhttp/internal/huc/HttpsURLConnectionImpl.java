// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.http.HttpEngine;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

// Referenced classes of package com.squareup.okhttp.internal.huc:
//            DelegatingHttpsURLConnection, HttpURLConnectionImpl

public final class HttpsURLConnectionImpl extends DelegatingHttpsURLConnection
{

    private final HttpURLConnectionImpl a;

    public HttpsURLConnectionImpl(HttpURLConnectionImpl httpurlconnectionimpl)
    {
        super(httpurlconnectionimpl);
        a = httpurlconnectionimpl;
    }

    public HttpsURLConnectionImpl(URL url, OkHttpClient okhttpclient)
    {
        this(new HttpURLConnectionImpl(url, okhttpclient));
    }

    protected Handshake a()
    {
        if (a.c == null)
        {
            throw new IllegalStateException("Connection has not yet been established");
        }
        if (a.c.f())
        {
            return a.c.h().e();
        } else
        {
            return a.d;
        }
    }

    public volatile void addRequestProperty(String s, String s1)
    {
        super.addRequestProperty(s, s1);
    }

    public volatile void connect()
    {
        super.connect();
    }

    public volatile void disconnect()
    {
        super.disconnect();
    }

    public volatile boolean getAllowUserInteraction()
    {
        return super.getAllowUserInteraction();
    }

    public volatile String getCipherSuite()
    {
        return super.getCipherSuite();
    }

    public volatile int getConnectTimeout()
    {
        return super.getConnectTimeout();
    }

    public volatile Object getContent()
    {
        return super.getContent();
    }

    public volatile Object getContent(Class aclass[])
    {
        return super.getContent(aclass);
    }

    public volatile String getContentEncoding()
    {
        return super.getContentEncoding();
    }

    public volatile int getContentLength()
    {
        return super.getContentLength();
    }

    public volatile String getContentType()
    {
        return super.getContentType();
    }

    public volatile long getDate()
    {
        return super.getDate();
    }

    public volatile boolean getDefaultUseCaches()
    {
        return super.getDefaultUseCaches();
    }

    public volatile boolean getDoInput()
    {
        return super.getDoInput();
    }

    public volatile boolean getDoOutput()
    {
        return super.getDoOutput();
    }

    public volatile InputStream getErrorStream()
    {
        return super.getErrorStream();
    }

    public volatile long getExpiration()
    {
        return super.getExpiration();
    }

    public volatile String getHeaderField(int i)
    {
        return super.getHeaderField(i);
    }

    public volatile String getHeaderField(String s)
    {
        return super.getHeaderField(s);
    }

    public volatile long getHeaderFieldDate(String s, long l)
    {
        return super.getHeaderFieldDate(s, l);
    }

    public volatile int getHeaderFieldInt(String s, int i)
    {
        return super.getHeaderFieldInt(s, i);
    }

    public volatile String getHeaderFieldKey(int i)
    {
        return super.getHeaderFieldKey(i);
    }

    public volatile Map getHeaderFields()
    {
        return super.getHeaderFields();
    }

    public HostnameVerifier getHostnameVerifier()
    {
        return a.a.j();
    }

    public volatile long getIfModifiedSince()
    {
        return super.getIfModifiedSince();
    }

    public volatile InputStream getInputStream()
    {
        return super.getInputStream();
    }

    public volatile boolean getInstanceFollowRedirects()
    {
        return super.getInstanceFollowRedirects();
    }

    public volatile long getLastModified()
    {
        return super.getLastModified();
    }

    public volatile Certificate[] getLocalCertificates()
    {
        return super.getLocalCertificates();
    }

    public volatile Principal getLocalPrincipal()
    {
        return super.getLocalPrincipal();
    }

    public volatile OutputStream getOutputStream()
    {
        return super.getOutputStream();
    }

    public volatile Principal getPeerPrincipal()
    {
        return super.getPeerPrincipal();
    }

    public volatile Permission getPermission()
    {
        return super.getPermission();
    }

    public volatile int getReadTimeout()
    {
        return super.getReadTimeout();
    }

    public volatile String getRequestMethod()
    {
        return super.getRequestMethod();
    }

    public volatile Map getRequestProperties()
    {
        return super.getRequestProperties();
    }

    public volatile String getRequestProperty(String s)
    {
        return super.getRequestProperty(s);
    }

    public volatile int getResponseCode()
    {
        return super.getResponseCode();
    }

    public volatile String getResponseMessage()
    {
        return super.getResponseMessage();
    }

    public SSLSocketFactory getSSLSocketFactory()
    {
        return a.a.i();
    }

    public volatile Certificate[] getServerCertificates()
    {
        return super.getServerCertificates();
    }

    public volatile URL getURL()
    {
        return super.getURL();
    }

    public volatile boolean getUseCaches()
    {
        return super.getUseCaches();
    }

    public volatile void setAllowUserInteraction(boolean flag)
    {
        super.setAllowUserInteraction(flag);
    }

    public volatile void setChunkedStreamingMode(int i)
    {
        super.setChunkedStreamingMode(i);
    }

    public volatile void setConnectTimeout(int i)
    {
        super.setConnectTimeout(i);
    }

    public volatile void setDefaultUseCaches(boolean flag)
    {
        super.setDefaultUseCaches(flag);
    }

    public volatile void setDoInput(boolean flag)
    {
        super.setDoInput(flag);
    }

    public volatile void setDoOutput(boolean flag)
    {
        super.setDoOutput(flag);
    }

    public volatile void setFixedLengthStreamingMode(int i)
    {
        super.setFixedLengthStreamingMode(i);
    }

    public void setFixedLengthStreamingMode(long l)
    {
        a.setFixedLengthStreamingMode(l);
    }

    public void setHostnameVerifier(HostnameVerifier hostnameverifier)
    {
        a.a.a(hostnameverifier);
    }

    public volatile void setIfModifiedSince(long l)
    {
        super.setIfModifiedSince(l);
    }

    public volatile void setInstanceFollowRedirects(boolean flag)
    {
        super.setInstanceFollowRedirects(flag);
    }

    public volatile void setReadTimeout(int i)
    {
        super.setReadTimeout(i);
    }

    public volatile void setRequestMethod(String s)
    {
        super.setRequestMethod(s);
    }

    public volatile void setRequestProperty(String s, String s1)
    {
        super.setRequestProperty(s, s1);
    }

    public void setSSLSocketFactory(SSLSocketFactory sslsocketfactory)
    {
        a.a.a(sslsocketfactory);
    }

    public volatile void setUseCaches(boolean flag)
    {
        super.setUseCaches(flag);
    }

    public volatile String toString()
    {
        return super.toString();
    }

    public volatile boolean usingProxy()
    {
        return super.usingProxy();
    }
}
