// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.Response;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

// Referenced classes of package com.squareup.okhttp.internal.huc:
//            DelegatingHttpsURLConnection, JavaApiConverter

static final class a extends DelegatingHttpsURLConnection
{

    private final etFixedLengthStreamingMode a;

    protected Handshake a()
    {
        return (a).e();
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
        a.etFixedLengthStreamingMode(l);
    }

    public void setHostnameVerifier(HostnameVerifier hostnameverifier)
    {
        throw JavaApiConverter.a();
    }

    public void setSSLSocketFactory(SSLSocketFactory sslsocketfactory)
    {
        throw JavaApiConverter.a();
    }

    public ( )
    {
        super();
        a = ;
    }
}
