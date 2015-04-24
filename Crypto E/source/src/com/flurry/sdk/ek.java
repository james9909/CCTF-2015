// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.flurry.sdk:
//            fd, ds, fb, eh, 
//            es, el

public class ek extends fd
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        private static final a g[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/flurry/sdk/ek$a, s);
        }

        public static a[] values()
        {
            return (a[])g.clone();
        }

        public HttpRequestBase a(String s)
        {
            static class _cls3
            {

                static final int a[];

                static 
                {
                    a = new int[a.values().length];
                    try
                    {
                        a[a.c.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror) { }
                    try
                    {
                        a[a.d.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[a.e.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        a[a.f.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror3) { }
                    try
                    {
                        a[a.b.ordinal()] = 5;
                    }
                    catch (NoSuchFieldError nosuchfielderror4)
                    {
                        return;
                    }
                }
            }

            switch (_cls3.a[ordinal()])
            {
            default:
                return null;

            case 1: // '\001'
                return new HttpPost(s);

            case 2: // '\002'
                return new HttpPut(s);

            case 3: // '\003'
                return new HttpDelete(s);

            case 4: // '\004'
                return new HttpHead(s);

            case 5: // '\005'
                return new HttpGet(s);
            }
        }

        public String toString()
        {
            switch (_cls3.a[ordinal()])
            {
            default:
                return null;

            case 1: // '\001'
                return "POST";

            case 2: // '\002'
                return "PUT";

            case 3: // '\003'
                return "DELETE";

            case 4: // '\004'
                return "HEAD";

            case 5: // '\005'
                return "GET";
            }
        }

        static 
        {
            a = new a("kUnknown", 0);
            b = new a("kGet", 1);
            c = new a("kPost", 2);
            d = new a("kPut", 3);
            e = new a("kDelete", 4);
            f = new a("kHead", 5);
            a aa[] = new a[6];
            aa[0] = a;
            aa[1] = b;
            aa[2] = c;
            aa[3] = d;
            aa[4] = e;
            aa[5] = f;
            g = aa;
        }

        private a(String s, int i1)
        {
            super(s, i1);
        }
    }

    public static class b
        implements c
    {

        public void a(ek ek1)
        {
        }

        public void a(ek ek1, InputStream inputstream)
        {
        }

        public void a(ek ek1, OutputStream outputstream)
        {
        }

        public b()
        {
        }
    }

    public static interface c
    {

        public abstract void a(ek ek1);

        public abstract void a(ek ek1, InputStream inputstream);

        public abstract void a(ek ek1, OutputStream outputstream);
    }


    private static final String a = com/flurry/sdk/ek.getSimpleName();
    private String b;
    private a c;
    private int d;
    private int e;
    private boolean f;
    private final ds i = new ds();
    private c j;
    private HttpURLConnection k;
    private HttpClient l;
    private boolean m;
    private boolean n;
    private Exception o;
    private int p;
    private final ds q = new ds();
    private final Object r = new Object();

    public ek()
    {
        d = 10000;
        e = 15000;
        f = true;
        p = -1;
    }

    static HttpURLConnection a(ek ek1)
    {
        return ek1.k;
    }

    static void a(ek ek1, OutputStream outputstream)
    {
        ek1.a(outputstream);
    }

    private void a(InputStream inputstream)
    {
        while (j == null || b() || inputstream == null) 
        {
            return;
        }
        j.a(this, inputstream);
    }

    private void a(OutputStream outputstream)
    {
        while (j == null || b() || outputstream == null) 
        {
            return;
        }
        j.a(this, outputstream);
    }

    static HttpClient b(ek ek1)
    {
        return ek1.l;
    }

    private void m()
    {
        Object obj;
        URL url;
        obj = null;
        if (n)
        {
            return;
        }
        url = new URL(b);
        k = (HttpURLConnection)url.openConnection();
        k.setConnectTimeout(d);
        k.setReadTimeout(e);
        k.setRequestMethod(c.toString());
        k.setInstanceFollowRedirects(f);
        k.setDoOutput(a.c.equals(c));
        k.setDoInput(true);
        java.util.Map.Entry entry1;
        for (Iterator iterator = i.b().iterator(); iterator.hasNext(); k.addRequestProperty((String)entry1.getKey(), (String)entry1.getValue()))
        {
            entry1 = (java.util.Map.Entry)iterator.next();
        }

        break MISSING_BLOCK_LABEL_178;
        Exception exception;
        exception;
        p();
        throw exception;
        boolean flag;
        if (!a.b.equals(c) && !a.c.equals(c))
        {
            k.setRequestProperty("Accept-Encoding", "");
        }
        flag = n;
        if (flag)
        {
            p();
            return;
        }
        boolean flag1 = a.c.equals(c);
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        OutputStream outputstream = k.getOutputStream();
        BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(outputstream);
        a(bufferedoutputstream);
        fb.a(bufferedoutputstream);
        fb.a(outputstream);
        p = k.getResponseCode();
        for (Iterator iterator1 = k.getHeaderFields().entrySet().iterator(); iterator1.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
            Iterator iterator2 = ((List)entry.getValue()).iterator();
            while (iterator2.hasNext()) 
            {
                String s = (String)iterator2.next();
                q.a(entry.getKey(), s);
            }
        }

          goto _L1
_L7:
        Exception exception2;
        Object obj2;
        fb.a(bufferedoutputstream);
        fb.a(((java.io.Closeable) (obj2)));
        throw exception2;
_L1:
        if (a.b.equals(c)) goto _L3; else goto _L2
_L2:
        boolean flag3 = a.c.equals(c);
        if (!flag3)
        {
            p();
            return;
        }
_L3:
        boolean flag2 = n;
        if (flag2)
        {
            p();
            return;
        }
        InputStream inputstream = k.getInputStream();
        BufferedInputStream bufferedinputstream = new BufferedInputStream(inputstream);
        a(bufferedinputstream);
        fb.a(bufferedinputstream);
        fb.a(inputstream);
        p();
        return;
        Exception exception1;
        exception1;
        Object obj1 = null;
_L5:
        fb.a(((java.io.Closeable) (obj)));
        fb.a(((java.io.Closeable) (obj1)));
        throw exception1;
        exception1;
        obj1 = inputstream;
        obj = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        obj = bufferedinputstream;
        obj1 = inputstream;
        if (true) goto _L5; else goto _L4
_L4:
        exception2;
        obj2 = outputstream;
        bufferedoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception2;
        obj2 = outputstream;
        continue; /* Loop/switch isn't completed */
        exception2;
        bufferedoutputstream = null;
        obj2 = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void n()
    {
        Object obj;
        HttpRequestBase httprequestbase;
        obj = null;
        if (n)
        {
            return;
        }
        httprequestbase = c.a(b);
        java.util.Map.Entry entry;
        for (Iterator iterator = i.b().iterator(); iterator.hasNext(); httprequestbase.setHeader((String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        if (!a.b.equals(c) && !a.c.equals(c))
        {
            httprequestbase.removeHeaders("Accept-Encoding");
        }
        if (a.c.equals(c))
        {
            ((HttpPost)httprequestbase).setEntity(new AbstractHttpEntity() {

                final ek a;

                public InputStream getContent()
                {
                    throw new UnsupportedOperationException();
                }

                public long getContentLength()
                {
                    return -1L;
                }

                public boolean isRepeatable()
                {
                    return false;
                }

                public boolean isStreaming()
                {
                    return false;
                }

                public void writeTo(OutputStream outputstream)
                {
                    BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(outputstream);
                    ek.a(a, bufferedoutputstream);
                    fb.a(bufferedoutputstream);
                    return;
                    IOException ioexception;
                    ioexception;
                    bufferedoutputstream = null;
_L4:
                    throw ioexception;
                    Exception exception2;
                    exception2;
_L1:
                    fb.a(bufferedoutputstream);
                    throw exception2;
                    Exception exception3;
                    exception3;
                    bufferedoutputstream = null;
_L2:
                    if (android.os.Build.VERSION.SDK_INT >= 9)
                    {
                        throw new IOException(exception3);
                    } else
                    {
                        throw new IOException(exception3.toString());
                    }
                    exception2;
                    bufferedoutputstream = null;
                      goto _L1
                    exception3;
                      goto _L2
                    ioexception;
                    if (true) goto _L4; else goto _L3
_L3:
                }

            
            {
                a = ek.this;
                super();
            }
            });
        }
        HttpResponse httpresponse;
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, d);
        HttpConnectionParams.setSoTimeout(basichttpparams, e);
        basichttpparams.setParameter("http.protocol.handle-redirects", Boolean.valueOf(f));
        l = eh.a(basichttpparams);
        httpresponse = l.execute(httprequestbase);
        if (n)
        {
            throw new Exception("Request cancelled");
        }
        break MISSING_BLOCK_LABEL_235;
        Exception exception;
        exception;
        p();
        throw exception;
        if (httpresponse == null) goto _L2; else goto _L1
_L1:
        Header aheader[];
        p = httpresponse.getStatusLine().getStatusCode();
        aheader = httpresponse.getAllHeaders();
        if (aheader == null) goto _L4; else goto _L3
_L3:
        int i1 = aheader.length;
        int j1 = 0;
_L11:
        if (j1 >= i1) goto _L4; else goto _L5
_L5:
        HeaderElement aheaderelement[];
        int k1;
        aheaderelement = aheader[j1].getElements();
        k1 = aheaderelement.length;
        int l1 = 0;
_L7:
        if (l1 >= k1)
        {
            break; /* Loop/switch isn't completed */
        }
        HeaderElement headerelement = aheaderelement[l1];
        q.a(headerelement.getName(), headerelement.getValue());
        l1++;
        if (true) goto _L7; else goto _L6
_L4:
        boolean flag;
        if (a.b.equals(c))
        {
            break MISSING_BLOCK_LABEL_381;
        }
        flag = a.c.equals(c);
        if (!flag)
        {
            p();
            return;
        }
        HttpEntity httpentity;
        if (n)
        {
            throw new Exception("Request cancelled");
        }
        httpentity = httpresponse.getEntity();
        if (httpentity == null) goto _L2; else goto _L8
_L8:
        InputStream inputstream = httpentity.getContent();
        BufferedInputStream bufferedinputstream = new BufferedInputStream(inputstream);
        a(bufferedinputstream);
        fb.a(bufferedinputstream);
        fb.a(inputstream);
_L2:
        p();
        return;
        Exception exception1;
        exception1;
        bufferedinputstream = null;
_L9:
        fb.a(bufferedinputstream);
        fb.a(((java.io.Closeable) (obj)));
        throw exception1;
        exception1;
        obj = inputstream;
        bufferedinputstream = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        obj = inputstream;
        if (true) goto _L9; else goto _L6
_L6:
        j1++;
        if (true) goto _L11; else goto _L10
_L10:
    }

    private void o()
    {
        while (j == null || b()) 
        {
            return;
        }
        j.a(this);
    }

    private void p()
    {
        if (!m)
        {
            m = true;
            if (k != null)
            {
                k.disconnect();
            }
            if (l != null)
            {
                l.getConnectionManager().shutdown();
                return;
            }
        }
    }

    private void q()
    {
        if (!m)
        {
            m = true;
            if (k != null || l != null)
            {
                (new Thread() {

                    final ek a;

                    public void run()
                    {
                        if (ek.a(a) != null)
                        {
                            ek.a(a).disconnect();
                        }
                        if (ek.b(a) != null)
                        {
                            ek.b(a).getConnectionManager().shutdown();
                        }
                    }

            
            {
                a = ek.this;
                super();
            }
                }).start();
                return;
            }
        }
    }

    public void a()
    {
        String s = b;
        if (s == null)
        {
            o();
            return;
        }
        if (es.a().c())
        {
            break MISSING_BLOCK_LABEL_58;
        }
        el.a(3, a, (new StringBuilder()).append("Network not available, aborting http request: ").append(b).toString());
        o();
        return;
        if (c == null || a.a.equals(c))
        {
            c = a.b;
        }
        if (android.os.Build.VERSION.SDK_INT < 9)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        m();
_L1:
        el.a(4, a, (new StringBuilder()).append("HTTP status: ").append(p).append(" for url: ").append(b).toString());
        o();
        return;
        n();
          goto _L1
        Exception exception1;
        exception1;
        el.a(4, a, (new StringBuilder()).append("HTTP status: ").append(p).append(" for url: ").append(b).toString());
        el.a(3, a, (new StringBuilder()).append("Exception during http request: ").append(b).toString(), exception1);
        o = exception1;
        o();
        return;
        Exception exception;
        exception;
        o();
        throw exception;
    }

    public void a(a a1)
    {
        c = a1;
    }

    public void a(c c1)
    {
        j = c1;
    }

    public void a(String s)
    {
        b = s;
    }

    public void a(String s, String s1)
    {
        i.a(s, s1);
    }

    public void a(boolean flag)
    {
        f = flag;
    }

    public List b(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return q.a(s);
        }
    }

    public boolean b()
    {
        boolean flag;
        synchronized (r)
        {
            flag = n;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean c()
    {
        return !f() && d();
    }

    public boolean d()
    {
        return p >= 200 && p < 400;
    }

    public int e()
    {
        return p;
    }

    public boolean f()
    {
        return o != null;
    }

    public void g()
    {
        synchronized (r)
        {
            n = true;
        }
        q();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void h()
    {
        g();
    }

}
