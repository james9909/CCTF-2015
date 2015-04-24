// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.DiskLruCache;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.CacheRequest;
import com.squareup.okhttp.internal.http.CacheStrategy;
import com.squareup.okhttp.internal.http.HttpMethod;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.StatusLine;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;

// Referenced classes of package com.squareup.okhttp:
//            Response, Request, ResponseBody, Handshake, 
//            Headers, Protocol

public final class Cache
{
    final class CacheRequestImpl
        implements CacheRequest
    {

        final Cache a;
        private final com.squareup.okhttp.internal.DiskLruCache.Editor b;
        private Sink c;
        private boolean d;
        private Sink e;

        static boolean a(CacheRequestImpl cacherequestimpl)
        {
            return cacherequestimpl.d;
        }

        static boolean a(CacheRequestImpl cacherequestimpl, boolean flag)
        {
            cacherequestimpl.d = flag;
            return flag;
        }

        public void a()
        {
label0:
            {
                synchronized (a)
                {
                    if (!d)
                    {
                        break label0;
                    }
                }
                return;
            }
            d = true;
            Cache.c(a);
            cache;
            JVM INSTR monitorexit ;
            Util.a(c);
            try
            {
                b.b();
                return;
            }
            catch (IOException ioexception)
            {
                return;
            }
            exception;
            cache;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public Sink b()
        {
            return e;
        }

        public CacheRequestImpl(com.squareup.okhttp.internal.DiskLruCache.Editor editor)
        {
            a = Cache.this;
            super();
            b = editor;
            c = editor.a(1);
            e = new _cls1(this, c, Cache.this, editor);
        }
    }

    static class CacheResponseBody extends ResponseBody
    {

        private final com.squareup.okhttp.internal.DiskLruCache.Snapshot a;
        private final BufferedSource b;
        private final String c;
        private final String d;

        static com.squareup.okhttp.internal.DiskLruCache.Snapshot a(CacheResponseBody cacheresponsebody)
        {
            return cacheresponsebody.a;
        }

        public long a()
        {
label0:
            {
                long l = -1L;
                long l1;
                try
                {
                    if (d == null)
                    {
                        break label0;
                    }
                    l1 = Long.parseLong(d);
                }
                catch (NumberFormatException numberformatexception)
                {
                    return l;
                }
                l = l1;
            }
            return l;
        }

        public BufferedSource b()
        {
            return b;
        }

        public CacheResponseBody(com.squareup.okhttp.internal.DiskLruCache.Snapshot snapshot, String s, String s1)
        {
            a = snapshot;
            c = s;
            d = s1;
            b = Okio.a(new _cls1(this, snapshot.a(1), snapshot));
        }
    }

    static final class Entry
    {

        private final String a;
        private final Headers b;
        private final String c;
        private final Protocol d;
        private final int e;
        private final String f;
        private final Headers g;
        private final Handshake h;

        private List a(BufferedSource bufferedsource)
        {
            int i = Cache.a(bufferedsource);
            if (i != -1) goto _L2; else goto _L1
_L1:
            Object obj = Collections.emptyList();
_L6:
            return ((List) (obj));
_L2:
            CertificateFactory certificatefactory;
            int j;
            try
            {
                certificatefactory = CertificateFactory.getInstance("X.509");
                obj = new ArrayList(i);
            }
            catch (CertificateException certificateexception)
            {
                throw new IOException(certificateexception.getMessage());
            }
            j = 0;
            if (j >= i)
            {
                continue; /* Loop/switch isn't completed */
            }
            ((List) (obj)).add(certificatefactory.generateCertificate(new ByteArrayInputStream(ByteString.b(bufferedsource.s()).f())));
            j++;
            if (true) goto _L4; else goto _L3
_L3:
            break MISSING_BLOCK_LABEL_78;
_L4:
            break MISSING_BLOCK_LABEL_38;
            if (true) goto _L6; else goto _L5
_L5:
        }

        private void a(BufferedSink bufferedsink, List list)
        {
            int i;
            int j;
            try
            {
                bufferedsink.b(Integer.toString(list.size()));
                bufferedsink.i(10);
                i = list.size();
            }
            catch (CertificateEncodingException certificateencodingexception)
            {
                throw new IOException(certificateencodingexception.getMessage());
            }
            j = 0;
            if (j >= i)
            {
                break; /* Loop/switch isn't completed */
            }
            bufferedsink.b(ByteString.a(((Certificate)list.get(j)).getEncoded()).b());
            bufferedsink.i(10);
            j++;
            if (true) goto _L2; else goto _L1
_L2:
            break MISSING_BLOCK_LABEL_36;
_L1:
        }

        private boolean a()
        {
            return a.startsWith("https://");
        }

        public Response a(Request request, com.squareup.okhttp.internal.DiskLruCache.Snapshot snapshot)
        {
            String s = g.a("Content-Type");
            String s1 = g.a("Content-Length");
            Request request1 = (new Request.Builder()).a(a).a(c, null).a(b).c();
            return (new Response.Builder()).a(request1).a(d).a(e).a(f).a(g).a(new CacheResponseBody(snapshot, s, s1)).a(h).a();
        }

        public void a(com.squareup.okhttp.internal.DiskLruCache.Editor editor)
        {
            int i = 0;
            BufferedSink bufferedsink = Okio.a(editor.a(0));
            bufferedsink.b(a);
            bufferedsink.i(10);
            bufferedsink.b(c);
            bufferedsink.i(10);
            bufferedsink.b(Integer.toString(b.a()));
            bufferedsink.i(10);
            int j = b.a();
            for (int k = 0; k < j; k++)
            {
                bufferedsink.b(b.a(k));
                bufferedsink.b(": ");
                bufferedsink.b(b.b(k));
                bufferedsink.i(10);
            }

            bufferedsink.b((new StatusLine(d, e, f)).toString());
            bufferedsink.i(10);
            bufferedsink.b(Integer.toString(g.a()));
            bufferedsink.i(10);
            for (int l = g.a(); i < l; i++)
            {
                bufferedsink.b(g.a(i));
                bufferedsink.b(": ");
                bufferedsink.b(g.b(i));
                bufferedsink.i(10);
            }

            if (a())
            {
                bufferedsink.i(10);
                bufferedsink.b(h.a());
                bufferedsink.i(10);
                a(bufferedsink, h.b());
                a(bufferedsink, h.d());
            }
            bufferedsink.close();
        }

        public boolean a(Request request, Response response)
        {
            return a.equals(request.c()) && c.equals(request.d()) && OkHeaders.a(response, b, request);
        }

        public Entry(Response response)
        {
            a = response.a().c();
            b = OkHeaders.c(response);
            c = response.a().d();
            d = response.b();
            e = response.c();
            f = response.d();
            g = response.f();
            h = response.e();
        }

        public Entry(Source source)
        {
            int i;
            i = 0;
            super();
            BufferedSource bufferedsource;
            Headers.Builder builder;
            int j;
            bufferedsource = Okio.a(source);
            a = bufferedsource.s();
            c = bufferedsource.s();
            builder = new Headers.Builder();
            j = Cache.a(bufferedsource);
            int k = 0;
_L2:
            if (k >= j)
            {
                break; /* Loop/switch isn't completed */
            }
            builder.a(bufferedsource.s());
            k++;
            if (true) goto _L2; else goto _L1
_L1:
            Headers.Builder builder1;
            int l;
            b = builder.a();
            StatusLine statusline = StatusLine.a(bufferedsource.s());
            d = statusline.a;
            e = statusline.b;
            f = statusline.c;
            builder1 = new Headers.Builder();
            l = Cache.a(bufferedsource);
_L4:
            if (i >= l)
            {
                break; /* Loop/switch isn't completed */
            }
            builder1.a(bufferedsource.s());
            i++;
            if (true) goto _L4; else goto _L3
_L3:
            g = builder1.a();
            if (!a())
            {
                break MISSING_BLOCK_LABEL_276;
            }
            String s = bufferedsource.s();
            if (s.length() > 0)
            {
                throw new IOException((new StringBuilder()).append("expected \"\" but was \"").append(s).append("\"").toString());
            }
            break MISSING_BLOCK_LABEL_243;
            Exception exception;
            exception;
            source.close();
            throw exception;
            h = Handshake.a(bufferedsource.s(), a(bufferedsource), a(bufferedsource));
_L5:
            source.close();
            return;
            h = null;
              goto _L5
        }
    }


    final InternalCache a;
    private final DiskLruCache b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;

    static int a(BufferedSource bufferedsource)
    {
        return b(bufferedsource);
    }

    static CacheRequest a(Cache cache, Response response)
    {
        return cache.a(response);
    }

    private CacheRequest a(Response response)
    {
label0:
        {
            {
                String s = response.a().d();
                if (!HttpMethod.a(response.a().d()))
                {
                    break label0;
                }
                Entry entry;
                IOException ioexception;
                com.squareup.okhttp.internal.DiskLruCache.Editor editor;
                com.squareup.okhttp.internal.DiskLruCache.Editor editor1;
                IOException ioexception1;
                CacheRequestImpl cacherequestimpl;
                try
                {
                    c(response.a());
                }
                catch (IOException ioexception2)
                {
                    return null;
                }
            }
            return null;
        }
        if (!s.equals("GET") || OkHeaders.b(response))
        {
            break MISSING_BLOCK_LABEL_29;
        }
        entry = new Entry(response);
        editor1 = b.b(b(response.a()));
        if (editor1 == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        entry.a(editor1);
        cacherequestimpl = new CacheRequestImpl(editor1);
        return cacherequestimpl;
        ioexception;
        editor = null;
_L2:
        a(editor);
        return null;
        ioexception1;
        editor = editor1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        f = 1 + f;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void a(Cache cache)
    {
        cache.a();
    }

    static void a(Cache cache, Request request)
    {
        cache.c(request);
    }

    static void a(Cache cache, Response response, Response response1)
    {
        cache.a(response, response1);
    }

    static void a(Cache cache, CacheStrategy cachestrategy)
    {
        cache.a(cachestrategy);
    }

    private void a(Response response, Response response1)
    {
        Entry entry = new Entry(response1);
        com.squareup.okhttp.internal.DiskLruCache.Snapshot snapshot = CacheResponseBody.a((CacheResponseBody)response.g());
        com.squareup.okhttp.internal.DiskLruCache.Editor editor = null;
        try
        {
            editor = snapshot.a();
        }
        catch (IOException ioexception)
        {
            a(editor);
            return;
        }
        if (editor == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        entry.a(editor);
        editor.a();
    }

    private void a(com.squareup.okhttp.internal.DiskLruCache.Editor editor)
    {
        if (editor == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        editor.b();
        return;
        IOException ioexception;
        ioexception;
    }

    private void a(CacheStrategy cachestrategy)
    {
        this;
        JVM INSTR monitorenter ;
        g = 1 + g;
        if (cachestrategy.a == null) goto _L2; else goto _L1
_L1:
        e = 1 + e;
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (cachestrategy.b != null)
        {
            f = 1 + f;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static int b(Cache cache)
    {
        int i = cache.c;
        cache.c = i + 1;
        return i;
    }

    private static int b(BufferedSource bufferedsource)
    {
        String s = bufferedsource.s();
        int i;
        try
        {
            i = Integer.parseInt(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new IOException((new StringBuilder()).append("Expected an integer but was \"").append(s).append("\"").toString());
        }
        return i;
    }

    private static String b(Request request)
    {
        return Util.b(request.c());
    }

    static int c(Cache cache)
    {
        int i = cache.d;
        cache.d = i + 1;
        return i;
    }

    private void c(Request request)
    {
        b.c(b(request));
    }

    Response a(Request request)
    {
        String s = b(request);
        com.squareup.okhttp.internal.DiskLruCache.Snapshot snapshot;
        Entry entry;
        Response response;
        try
        {
            snapshot = b.a(s);
        }
        catch (IOException ioexception)
        {
            return null;
        }
        if (snapshot == null)
        {
            return null;
        }
        try
        {
            entry = new Entry(snapshot.a(0));
        }
        catch (IOException ioexception1)
        {
            Util.a(snapshot);
            return null;
        }
        response = entry.a(request, snapshot);
        if (!entry.a(request, response))
        {
            Util.a(response.g());
            return null;
        } else
        {
            return response;
        }
    }

    // Unreferenced inner class com/squareup/okhttp/Cache$1

/* anonymous class */
    class _cls1
        implements InternalCache
    {

        final Cache a;

        public Response a(Request request)
        {
            return a.a(request);
        }

        public CacheRequest a(Response response)
        {
            return Cache.a(a, response);
        }

        public void a()
        {
            Cache.a(a);
        }

        public void a(Response response, Response response1)
        {
            Cache.a(a, response, response1);
        }

        public void a(CacheStrategy cachestrategy)
        {
            Cache.a(a, cachestrategy);
        }

        public void b(Request request)
        {
            Cache.a(a, request);
        }
    }


    // Unreferenced inner class com/squareup/okhttp/Cache$2

/* anonymous class */
    class _cls2
        implements Iterator
    {

        final Iterator a;
        String b;
        boolean c;

        public String a()
        {
            if (!hasNext())
            {
                throw new NoSuchElementException();
            } else
            {
                String s = b;
                b = null;
                c = true;
                return s;
            }
        }

        public boolean hasNext()
        {
            if (b != null)
            {
                return true;
            }
            c = false;
_L2:
            com.squareup.okhttp.internal.DiskLruCache.Snapshot snapshot;
            if (!a.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
            snapshot = (com.squareup.okhttp.internal.DiskLruCache.Snapshot)a.next();
            b = Okio.a(snapshot.a(0)).s();
            snapshot.close();
            return true;
            IOException ioexception;
            ioexception;
            snapshot.close();
            if (true) goto _L2; else goto _L1
            Exception exception;
            exception;
            snapshot.close();
            throw exception;
_L1:
            return false;
        }

        public Object next()
        {
            return a();
        }

        public void remove()
        {
            if (!c)
            {
                throw new IllegalStateException("remove() before next()");
            } else
            {
                a.remove();
                return;
            }
        }
    }


    // Unreferenced inner class com/squareup/okhttp/Cache$CacheRequestImpl$1

/* anonymous class */
    class CacheRequestImpl._cls1 extends ForwardingSink
    {

        final Cache a;
        final com.squareup.okhttp.internal.DiskLruCache.Editor b;
        final CacheRequestImpl c;

        public void close()
        {
label0:
            {
                synchronized (c.a)
                {
                    if (!CacheRequestImpl.a(c))
                    {
                        break label0;
                    }
                }
                return;
            }
            CacheRequestImpl.a(c, true);
            Cache.b(c.a);
            cache;
            JVM INSTR monitorexit ;
            super.close();
            b.a();
            return;
            exception;
            cache;
            JVM INSTR monitorexit ;
            throw exception;
        }

            
            {
                c = cacherequestimpl;
                a = cache;
                b = editor;
                super(sink);
            }
    }


    // Unreferenced inner class com/squareup/okhttp/Cache$CacheResponseBody$1

/* anonymous class */
    class CacheResponseBody._cls1 extends ForwardingSource
    {

        final com.squareup.okhttp.internal.DiskLruCache.Snapshot a;
        final CacheResponseBody b;

        public void close()
        {
            a.close();
            super.close();
        }

            
            {
                b = cacheresponsebody;
                a = snapshot;
                super(source);
            }
    }

}
