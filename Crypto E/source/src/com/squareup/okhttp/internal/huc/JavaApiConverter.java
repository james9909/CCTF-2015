// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.StatusLine;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.SecureCacheResponse;
import java.security.Principal;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okio.BufferedSource;
import okio.Okio;

// Referenced classes of package com.squareup.okhttp.internal.huc:
//            DelegatingHttpsURLConnection

public final class JavaApiConverter
{
    static final class CacheHttpURLConnection extends HttpURLConnection
    {

        private final Request a;
        private final Response b;

        static Response a(CacheHttpURLConnection cachehttpurlconnection)
        {
            return cachehttpurlconnection.b;
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

        public CacheHttpURLConnection(Response response)
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

    static final class CacheHttpsURLConnection extends DelegatingHttpsURLConnection
    {

        private final CacheHttpURLConnection a;

        protected Handshake a()
        {
            return CacheHttpURLConnection.a(a).e();
        }

        public HostnameVerifier getHostnameVerifier()
        {
            throw JavaApiConverter.d();
        }

        public SSLSocketFactory getSSLSocketFactory()
        {
            throw JavaApiConverter.d();
        }

        public void setFixedLengthStreamingMode(long l)
        {
            a.setFixedLengthStreamingMode(l);
        }

        public void setHostnameVerifier(HostnameVerifier hostnameverifier)
        {
            throw JavaApiConverter.a();
        }

        public void setSSLSocketFactory(SSLSocketFactory sslsocketfactory)
        {
            throw JavaApiConverter.a();
        }

        public CacheHttpsURLConnection(CacheHttpURLConnection cachehttpurlconnection)
        {
            super(cachehttpurlconnection);
            a = cachehttpurlconnection;
        }
    }


    private JavaApiConverter()
    {
    }

    private static Headers a(CacheResponse cacheresponse)
    {
        return a(cacheresponse.getHeaders());
    }

    static Headers a(Map map)
    {
        com.squareup.okhttp.Headers.Builder builder = new com.squareup.okhttp.Headers.Builder();
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            if (s != null)
            {
                Iterator iterator1 = ((List)entry.getValue()).iterator();
                while (iterator1.hasNext()) 
                {
                    builder.a(s, (String)iterator1.next());
                }
            }
        } while (true);
        return builder.a();
    }

    static Response a(Request request, CacheResponse cacheresponse)
    {
        com.squareup.okhttp.Response.Builder builder;
        builder = new com.squareup.okhttp.Response.Builder();
        builder.a(request);
        StatusLine statusline = StatusLine.a(b(cacheresponse));
        builder.a(statusline.a);
        builder.a(statusline.b);
        builder.a(statusline.c);
        Headers headers = a(cacheresponse);
        builder.a(headers);
        builder.a(a(headers, cacheresponse.getBody()));
        if (!(cacheresponse instanceof SecureCacheResponse)) goto _L2; else goto _L1
_L1:
        SecureCacheResponse securecacheresponse = (SecureCacheResponse)cacheresponse;
        List list2 = securecacheresponse.getServerCertificateChain();
        List list = list2;
_L4:
        List list1 = securecacheresponse.getLocalCertificateChain();
        if (list1 == null)
        {
            list1 = Collections.emptyList();
        }
        builder.a(Handshake.a(securecacheresponse.getCipherSuite(), list, list1));
_L2:
        return builder.a();
        SSLPeerUnverifiedException sslpeerunverifiedexception;
        sslpeerunverifiedexception;
        list = Collections.emptyList();
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static ResponseBody a(Headers headers, InputStream inputstream)
    {
        return new ResponseBody(headers, Okio.a(Okio.a(inputstream))) {

            final Headers a;
            final BufferedSource b;

            public long a()
            {
                return OkHeaders.a(a);
            }

            public BufferedSource b()
            {
                return b;
            }

            
            {
                a = headers;
                b = bufferedsource;
                super();
            }
        };
    }

    static RuntimeException a()
    {
        return e();
    }

    static HttpURLConnection a(Response response)
    {
        if (response.a().i())
        {
            return new CacheHttpsURLConnection(new CacheHttpURLConnection(response));
        } else
        {
            return new CacheHttpURLConnection(response);
        }
    }

    static Map a(Request request)
    {
        return OkHeaders.a(request.e(), null);
    }

    static RuntimeException b()
    {
        return f();
    }

    private static String b(CacheResponse cacheresponse)
    {
        return b(cacheresponse.getHeaders());
    }

    static String b(Map map)
    {
        List list = (List)map.get(null);
        if (list == null || list.size() == 0)
        {
            return null;
        } else
        {
            return (String)list.get(0);
        }
    }

    static RuntimeException c()
    {
        return h();
    }

    static RuntimeException d()
    {
        return g();
    }

    private static RuntimeException e()
    {
        throw new UnsupportedOperationException("ResponseCache cannot modify the request.");
    }

    private static RuntimeException f()
    {
        throw new UnsupportedOperationException("ResponseCache cannot access request headers");
    }

    private static RuntimeException g()
    {
        throw new UnsupportedOperationException("ResponseCache cannot access SSL internals");
    }

    private static RuntimeException h()
    {
        throw new UnsupportedOperationException("ResponseCache cannot access the response body.");
    }

    // Unreferenced inner class com/squareup/okhttp/internal/huc/JavaApiConverter$1

/* anonymous class */
    static final class _cls1 extends SecureCacheResponse
    {

        final Handshake a;
        final Headers b;
        final Response c;
        final ResponseBody d;

        public InputStream getBody()
        {
            if (d == null)
            {
                return null;
            } else
            {
                return d.c();
            }
        }

        public String getCipherSuite()
        {
            if (a != null)
            {
                return a.a();
            } else
            {
                return null;
            }
        }

        public Map getHeaders()
        {
            return OkHeaders.a(b, StatusLine.a(c).toString());
        }

        public List getLocalCertificateChain()
        {
            if (a == null)
            {
                return null;
            }
            List list = a.d();
            if (list.size() <= 0)
            {
                list = null;
            }
            return list;
        }

        public Principal getLocalPrincipal()
        {
            if (a == null)
            {
                return null;
            } else
            {
                return a.e();
            }
        }

        public Principal getPeerPrincipal()
        {
            if (a == null)
            {
                return null;
            } else
            {
                return a.c();
            }
        }

        public List getServerCertificateChain()
        {
            if (a == null)
            {
                return null;
            }
            List list = a.b();
            if (list.size() <= 0)
            {
                list = null;
            }
            return list;
        }
    }


    // Unreferenced inner class com/squareup/okhttp/internal/huc/JavaApiConverter$2

/* anonymous class */
    static final class _cls2 extends CacheResponse
    {

        final Headers a;
        final Response b;
        final ResponseBody c;

        public InputStream getBody()
        {
            if (c == null)
            {
                return null;
            } else
            {
                return c.c();
            }
        }

        public Map getHeaders()
        {
            return OkHeaders.a(a, StatusLine.a(b).toString());
        }
    }

}
