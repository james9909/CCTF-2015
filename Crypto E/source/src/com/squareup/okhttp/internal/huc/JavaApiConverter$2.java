// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.StatusLine;
import java.io.InputStream;
import java.net.CacheResponse;
import java.util.Map;

// Referenced classes of package com.squareup.okhttp.internal.huc:
//            JavaApiConverter

static final class _cls9 extends CacheResponse
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
