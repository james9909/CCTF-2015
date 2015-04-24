// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.StatusLine;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.Map;

// Referenced classes of package com.squareup.okhttp.internal.huc:
//            JavaApiConverter

static final class a extends HttpURLConnection
{

    private final Request a;
    private final Response b;

    static Response a(a a1)
    {
        return a1.b;
    }

    public void addRequestProperty(String s, String s1)
    {
        throw JavaApiConverter.a();
    }

    public void connect()
    {
        throw JavaApiConverter.a();
    }

    public void disconnect()
    {
        throw JavaApiConverter.a();
    }

    public boolean getAllowUserInteraction()
    {
        return false;
    }

    public int getConnectTimeout()
    {
        return 0;
    }

    public Object getContent()
    {
        throw JavaApiConverter.c();
    }

    public Object getContent(Class aclass[])
    {
        throw JavaApiConverter.c();
    }

    public boolean getDefaultUseCaches()
    {
        return super.getDefaultUseCaches();
    }

    public boolean getDoInput()
    {
        return true;
    }

    public boolean getDoOutput()
    {
        return a.f() != null;
    }

    public InputStream getErrorStream()
    {
        return null;
    }

    public String getHeaderField(int i)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid header index: ").append(i).toString());
        }
        if (i == 0)
        {
            return StatusLine.a(b).toString();
        } else
        {
            return b.f().b(i - 1);
        }
    }

    public String getHeaderField(String s)
    {
        if (s == null)
        {
            return StatusLine.a(b).toString();
        } else
        {
            return b.f().a(s);
        }
    }

    public String getHeaderFieldKey(int i)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid header index: ").append(i).toString());
        }
        if (i == 0)
        {
            return null;
        } else
        {
            return b.f().a(i - 1);
        }
    }

    public Map getHeaderFields()
    {
        return OkHeaders.a(b.f(), StatusLine.a(b).toString());
    }

    public long getIfModifiedSince()
    {
        return 0L;
    }

    public InputStream getInputStream()
    {
        throw JavaApiConverter.c();
    }

    public boolean getInstanceFollowRedirects()
    {
        return super.getInstanceFollowRedirects();
    }

    public OutputStream getOutputStream()
    {
        throw JavaApiConverter.a();
    }

    public int getReadTimeout()
    {
        return 0;
    }

    public String getRequestMethod()
    {
        return a.d();
    }

    public Map getRequestProperties()
    {
        throw JavaApiConverter.b();
    }

    public String getRequestProperty(String s)
    {
        return a.a(s);
    }

    public int getResponseCode()
    {
        return b.c();
    }

    public String getResponseMessage()
    {
        return b.d();
    }

    public boolean getUseCaches()
    {
        return super.getUseCaches();
    }

    public void setAllowUserInteraction(boolean flag)
    {
        throw JavaApiConverter.a();
    }

    public void setChunkedStreamingMode(int i)
    {
        throw JavaApiConverter.a();
    }

    public void setConnectTimeout(int i)
    {
        throw JavaApiConverter.a();
    }

    public void setDefaultUseCaches(boolean flag)
    {
        super.setDefaultUseCaches(flag);
    }

    public void setDoInput(boolean flag)
    {
        throw JavaApiConverter.a();
    }

    public void setDoOutput(boolean flag)
    {
        throw JavaApiConverter.a();
    }

    public void setFixedLengthStreamingMode(int i)
    {
        throw JavaApiConverter.a();
    }

    public void setFixedLengthStreamingMode(long l)
    {
        throw JavaApiConverter.a();
    }

    public void setIfModifiedSince(long l)
    {
        throw JavaApiConverter.a();
    }

    public void setInstanceFollowRedirects(boolean flag)
    {
        throw JavaApiConverter.a();
    }

    public void setReadTimeout(int i)
    {
        throw JavaApiConverter.a();
    }

    public void setRequestMethod(String s)
    {
        throw JavaApiConverter.a();
    }

    public void setRequestProperty(String s, String s1)
    {
        throw JavaApiConverter.a();
    }

    public void setUseCaches(boolean flag)
    {
        throw JavaApiConverter.a();
    }

    public boolean usingProxy()
    {
        return false;
    }

    public (Response response)
    {
        boolean flag = true;
        super(response.a().a());
        a = response.a();
        b = response;
        connected = flag;
        if (response.g() != null)
        {
            flag = false;
        }
        doOutput = flag;
        method = a.d();
    }
}
