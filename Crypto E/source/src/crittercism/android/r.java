// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.util.Map;

// Referenced classes of package crittercism.android:
//            c, d, bb, dg, 
//            bz, e, p, t, 
//            u

public final class r extends HttpURLConnection
{

    private e a;
    private HttpURLConnection b;
    private c c;
    private d d;
    private boolean e;
    private boolean f;

    public r(HttpURLConnection httpurlconnection, e e1, d d1)
    {
        super(httpurlconnection.getURL());
        e = false;
        f = false;
        b = httpurlconnection;
        a = e1;
        d = d1;
        c = new c(httpurlconnection.getURL());
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
            dg.a(throwable);
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

    public final void addRequestProperty(String s, String s1)
    {
        b.addRequestProperty(s, s1);
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
        String s = b.getContentEncoding();
        b();
        return s;
    }

    public final int getContentLength()
    {
        return b.getContentLength();
    }

    public final String getContentType()
    {
        a();
        String s = b.getContentType();
        b();
        return s;
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
        String s = b.getHeaderField(i);
        b();
        return s;
    }

    public final String getHeaderField(String s)
    {
        a();
        String s1 = b.getHeaderField(s);
        b();
        return s1;
    }

    public final long getHeaderFieldDate(String s, long l)
    {
        a();
        long l1 = b.getHeaderFieldDate(s, l);
        b();
        return l1;
    }

    public final int getHeaderFieldInt(String s, int i)
    {
        a();
        int j = b.getHeaderFieldInt(s, i);
        b();
        return j;
    }

    public final String getHeaderFieldKey(int i)
    {
        a();
        String s = b.getHeaderFieldKey(i);
        b();
        return s;
    }

    public final Map getHeaderFields()
    {
        a();
        Map map = b.getHeaderFields();
        b();
        return map;
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

    public final String getRequestProperty(String s)
    {
        return b.getRequestProperty(s);
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
        String s;
        try
        {
            s = b.getResponseMessage();
            b();
        }
        catch (IOException ioexception)
        {
            a(ioexception);
            throw ioexception;
        }
        return s;
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

    public final void setRequestMethod(String s)
    {
        b.setRequestMethod(s);
    }

    public final void setRequestProperty(String s, String s1)
    {
        b.setRequestProperty(s, s1);
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
