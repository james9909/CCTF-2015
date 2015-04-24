// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;

// Referenced classes of package crittercism.android:
//            m, r, dg, e, 
//            d

public final class o extends m
{

    private static final String f[] = {
        "libcore.net.http.HttpURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.http.HttpURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.http.HttpURLConnection"
    };

    public o(e e, d d)
    {
        super(e, d, f);
    }

    protected final String a()
    {
        return "http";
    }

    protected final int getDefaultPort()
    {
        return 80;
    }

    protected final URLConnection openConnection(URL url)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)super.openConnection(url);
        r r1;
        try
        {
            r1 = new r(httpurlconnection, super.c, super.d);
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable)
        {
            dg.a(throwable);
            return httpurlconnection;
        }
        return r1;
    }

    protected final URLConnection openConnection(URL url, Proxy proxy)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)super.openConnection(url, proxy);
        r r1;
        try
        {
            r1 = new r(httpurlconnection, super.c, super.d);
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable)
        {
            dg.a(throwable);
            return httpurlconnection;
        }
        return r1;
    }

}
