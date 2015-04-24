// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.http.CacheRequest;
import com.squareup.okhttp.internal.http.CacheStrategy;
import java.net.CacheResponse;
import java.net.ResponseCache;
import okio.Okio;
import okio.Sink;

// Referenced classes of package com.squareup.okhttp.internal.huc:
//            JavaApiConverter

public final class CacheAdapter
    implements InternalCache
{

    private final ResponseCache a;

    private CacheResponse c(Request request)
    {
        java.util.Map map = JavaApiConverter.a(request);
        return a.get(request.b(), request.d(), map);
    }

    public Response a(Request request)
    {
        CacheResponse cacheresponse = c(request);
        if (cacheresponse == null)
        {
            return null;
        } else
        {
            return JavaApiConverter.a(request, cacheresponse);
        }
    }

    public CacheRequest a(Response response)
    {
        java.net.URI uri = response.a().b();
        java.net.HttpURLConnection httpurlconnection = JavaApiConverter.a(response);
        java.net.CacheRequest cacherequest = a.put(uri, httpurlconnection);
        if (cacherequest == null)
        {
            return null;
        } else
        {
            return new CacheRequest(cacherequest) {

                final java.net.CacheRequest a;
                final CacheAdapter b;

                public void a()
                {
                    a.abort();
                }

                public Sink b()
                {
                    java.io.OutputStream outputstream = a.getBody();
                    if (outputstream != null)
                    {
                        return Okio.a(outputstream);
                    } else
                    {
                        return null;
                    }
                }

            
            {
                b = CacheAdapter.this;
                a = cacherequest;
                super();
            }
            };
        }
    }

    public void a()
    {
    }

    public void a(Response response, Response response1)
    {
    }

    public void a(CacheStrategy cachestrategy)
    {
    }

    public void b(Request request)
    {
    }
}
