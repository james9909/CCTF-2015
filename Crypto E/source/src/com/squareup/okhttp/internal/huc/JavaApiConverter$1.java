// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.StatusLine;
import java.io.InputStream;
import java.net.SecureCacheResponse;
import java.security.Principal;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.squareup.okhttp.internal.huc:
//            JavaApiConverter

static final class _cls9 extends SecureCacheResponse
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
