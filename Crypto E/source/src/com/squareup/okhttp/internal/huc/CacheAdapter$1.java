// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.internal.http.CacheRequest;
import okio.Okio;
import okio.Sink;

// Referenced classes of package com.squareup.okhttp.internal.huc:
//            CacheAdapter

class a
    implements CacheRequest
{

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

    (CacheAdapter cacheadapter, java.net.CacheRequest cacherequest)
    {
        b = cacheadapter;
        a = cacherequest;
        super();
    }
}
