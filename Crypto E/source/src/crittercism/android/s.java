// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

// Referenced classes of package crittercism.android:
//            c, ab, d, bb, 
//            dg, bz, e, p, 
//            t, u

public final class s extends HttpsURLConnection
{

    private e a;
    private HttpsURLConnection b;
    private c c;
    private d d;
    private boolean e;
    private boolean f;

    public s(HttpsURLConnection httpsurlconnection, e e1, d d1)
    {
        super(httpsurlconnection.getURL());
        a = null;
        b = null;
        c = null;
        d = null;
        e = false;
        f = false;
        a = e1;
        b = httpsurlconnection;
        d = d1;
        c = new c(httpsurlconnection.getURL());
        SSLSocketFactory sslsocketfactory = b.getSSLSocketFactory();
        if (sslsocketfactory instanceof ab)
        {
            ab ab1 = (ab)sslsocketfactory;
            b.setSSLSocketFactory(ab1.a());
        }
    }

    private void a()
    {
        try
        {
            if (!f)
            {
                f = true;
                c.f = b.getRequestMethod();
                c.c();
                c.j = d.a();
                if (bb.b())
                {
                    c.a(bb.a());
                }
            }
            return;
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable)
        {
            dg.a(throwable);
        }
    }

    private void a(Throwable throwable)
    {
        if (e)
        {
            return;
        }
        try
        {
            e = true;
            c.d();
            c.g = bz.a(throwable);
            a.a(c);
            return;
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable1)
        {
            dg.a(throwable1);
        }
        return;
    }

    private void b()
    {
        Map map;
        if (e)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        e = true;
        c.d();
        map = b.getHeaderFields();
        boolean flag = false;
        if (map == null)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        p p1;
        int i;
        long l;
        long l1;
        try
        {
            p1 = new p(b.getHeaderFields());
            i = p1.b("Content-Length");
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable)
        {
            dg.a(throwable);
            return;
        }
        flag = false;
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        c.b(i);
        flag = true;
        l = p1.a("X-Android-Sent-Millis");
        l1 = p1.a("X-Android-Received-Millis");
        if (l == 0x7fffffffffffffffL || l1 == 0x7fffffffffffffffL)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        c.e(l);
        c.f(l1);
        try
        {
            c.e = b.getResponseCode();
        }
        catch (IOException ioexception) { }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        a.a(c);
    }

    public final void addRequestProperty(String s1, String s2)
    {
        b.addRequestProperty(s1, s2);
    }

    public final void connect()
    {
        b.connect();
    }

    public final void disconnect()
    {
        b.disconnect();
        try
        {
            if (e && !c.b)
            {
                a.a(c);
            }
            return;
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable)
        {
            dg.a(throwable);
        }
    }

    public final boolean equals(Object obj)
    {
        return b.equals(obj);
    }

    public final boolean getAllowUserInteraction()
    {
        return b.getAllowUserInteraction();
    }

    public final String getCipherSuite()
    {
        return b.getCipherSuite();
    }

    public final int getConnectTimeout()
    {
        return b.getConnectTimeout();
    }

    public final Object getContent()
    {
        a();
        Object obj;
        try
        {
            obj = b.getContent();
            b();
        }
        catch (IOException ioexception)
        {
            a(ioexception);
            throw ioexception;
        }
        return obj;
    }

    public final Object getContent(Class aclass[])
    {
        a();
        Object obj;
        try
        {
            obj = b.getContent(aclass);
            b();
        }
        catch (IOException ioexception)
        {
            a(ioexception);
            throw ioexception;
        }
        return obj;
    }

    public final String getContentEncoding()
    {
        a();
        String s1 = b.getContentEncoding();
        b();
        return s1;
    }

    public final int getContentLength()
    {
        return b.getContentLength();
    }

    public final String getContentType()
    {
        a();
        String s1 = b.getContentType();
        b();
        return s1;
    }

    public final long getDate()
    {
        return b.getDate();
    }

    public final boolean getDefaultUseCaches()
    {
        return b.getDefaultUseCaches();
    }

    public final boolean getDoInput()
    {
        return b.getDoInput();
    }

    public final boolean getDoOutput()
    {
        return b.getDoOutput();
    }

    public final InputStream getErrorStream()
    {
        InputStream inputstream;
        a();
        inputstream = b.getErrorStream();
        b();
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        t t1 = new t(inputstream, a, c);
        return t1;
        ThreadDeath threaddeath;
        threaddeath;
        throw threaddeath;
        Throwable throwable;
        throwable;
        dg.a(throwable);
        return inputstream;
    }

    public final long getExpiration()
    {
        return b.getExpiration();
    }

    public final String getHeaderField(int i)
    {
        a();
        String s1 = b.getHeaderField(i);
        b();
        return s1;
    }

    public final String getHeaderField(String s1)
    {
        a();
        String s2 = b.getHeaderField(s1);
        b();
        return s2;
    }

    public final long getHeaderFieldDate(String s1, long l)
    {
        a();
        long l1 = b.getHeaderFieldDate(s1, l);
        b();
        return l1;
    }

    public final int getHeaderFieldInt(String s1, int i)
    {
        a();
        int j = b.getHeaderFieldInt(s1, i);
        b();
        return j;
    }

    public final String getHeaderFieldKey(int i)
    {
        a();
        String s1 = b.getHeaderFieldKey(i);
        b();
        return s1;
    }

    public final Map getHeaderFields()
    {
        a();
        Map map = b.getHeaderFields();
        b();
        return map;
    }

    public final HostnameVerifier getHostnameVerifier()
    {
        return b.getHostnameVerifier();
    }

    public final long getIfModifiedSince()
    {
        return b.getIfModifiedSince();
    }

    public final InputStream getInputStream()
    {
        InputStream inputstream;
        a();
        t t1;
        try
        {
            inputstream = b.getInputStream();
            b();
        }
        catch (IOException ioexception)
        {
            a(ioexception);
            throw ioexception;
        }
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        t1 = new t(inputstream, a, c);
        return t1;
        ThreadDeath threaddeath;
        threaddeath;
        throw threaddeath;
        Throwable throwable;
        throwable;
        dg.a(throwable);
        return inputstream;
    }

    public final boolean getInstanceFollowRedirects()
    {
        return b.getInstanceFollowRedirects();
    }

    public final long getLastModified()
    {
        return b.getLastModified();
    }

    public final Certificate[] getLocalCertificates()
    {
        return b.getLocalCertificates();
    }

    public final Principal getLocalPrincipal()
    {
        return b.getLocalPrincipal();
    }

    public final OutputStream getOutputStream()
    {
        OutputStream outputstream;
        outputstream = b.getOutputStream();
        if (outputstream == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        u u1 = new u(outputstream, c);
        return u1;
        ThreadDeath threaddeath;
        threaddeath;
        throw threaddeath;
        Throwable throwable;
        throwable;
        dg.a(throwable);
        return outputstream;
    }

    public final Principal getPeerPrincipal()
    {
        return b.getPeerPrincipal();
    }

    public final Permission getPermission()
    {
        return b.getPermission();
    }

    public final int getReadTimeout()
    {
        return b.getReadTimeout();
    }

    public final String getRequestMethod()
    {
        return b.getRequestMethod();
    }

    public final Map getRequestProperties()
    {
        return b.getRequestProperties();
    }

    public final String getRequestProperty(String s1)
    {
        return b.getRequestProperty(s1);
    }

    public final int getResponseCode()
    {
        a();
        int i;
        try
        {
            i = b.getResponseCode();
            b();
        }
        catch (IOException ioexception)
        {
            a(ioexception);
            throw ioexception;
        }
        return i;
    }

    public final String getResponseMessage()
    {
        a();
        String s1;
        try
        {
            s1 = b.getResponseMessage();
            b();
        }
        catch (IOException ioexception)
        {
            a(ioexception);
            throw ioexception;
        }
        return s1;
    }

    public final SSLSocketFactory getSSLSocketFactory()
    {
        return b.getSSLSocketFactory();
    }

    public final Certificate[] getServerCertificates()
    {
        return b.getServerCertificates();
    }

    public final URL getURL()
    {
        return b.getURL();
    }

    public final boolean getUseCaches()
    {
        return b.getUseCaches();
    }

    public final int hashCode()
    {
        return b.hashCode();
    }

    public final void setAllowUserInteraction(boolean flag)
    {
        b.setAllowUserInteraction(flag);
    }

    public final void setChunkedStreamingMode(int i)
    {
        b.setChunkedStreamingMode(i);
    }

    public final void setConnectTimeout(int i)
    {
        b.setConnectTimeout(i);
    }

    public final void setDefaultUseCaches(boolean flag)
    {
        b.setDefaultUseCaches(flag);
    }

    public final void setDoInput(boolean flag)
    {
        b.setDoInput(flag);
    }

    public final void setDoOutput(boolean flag)
    {
        b.setDoOutput(flag);
    }

    public final void setFixedLengthStreamingMode(int i)
    {
        b.setFixedLengthStreamingMode(i);
    }

    public final void setHostnameVerifier(HostnameVerifier hostnameverifier)
    {
        b.setHostnameVerifier(hostnameverifier);
    }

    public final void setIfModifiedSince(long l)
    {
        b.setIfModifiedSince(l);
    }

    public final void setInstanceFollowRedirects(boolean flag)
    {
        b.setInstanceFollowRedirects(flag);
    }

    public final void setReadTimeout(int i)
    {
        b.setReadTimeout(i);
    }

    public final void setRequestMethod(String s1)
    {
        b.setRequestMethod(s1);
    }

    public final void setRequestProperty(String s1, String s2)
    {
        b.setRequestProperty(s1, s2);
    }

    public final void setSSLSocketFactory(SSLSocketFactory sslsocketfactory)
    {
        SSLSocketFactory sslsocketfactory1;
        if (!(sslsocketfactory instanceof ab))
        {
            break MISSING_BLOCK_LABEL_19;
        }
        sslsocketfactory1 = ((ab)sslsocketfactory).a();
        sslsocketfactory = sslsocketfactory1;
_L2:
        b.setSSLSocketFactory(sslsocketfactory);
        return;
        ThreadDeath threaddeath;
        threaddeath;
        throw threaddeath;
        Throwable throwable;
        throwable;
        dg.a(throwable);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final void setUseCaches(boolean flag)
    {
        b.setUseCaches(flag);
    }

    public final String toString()
    {
        return b.toString();
    }

    public final boolean usingProxy()
    {
        return b.usingProxy();
    }
}
