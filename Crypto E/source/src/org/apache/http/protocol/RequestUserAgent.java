// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.protocol:
//            HttpContext

public class RequestUserAgent
    implements HttpRequestInterceptor
{

    private final String userAgent;

    public RequestUserAgent()
    {
        this(null);
    }

    public RequestUserAgent(String s)
    {
        userAgent = s;
    }

    public void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        Args.notNull(httprequest, "HTTP request");
        if (!httprequest.containsHeader("User-Agent"))
        {
            HttpParams httpparams = httprequest.getParams();
            String s = null;
            if (httpparams != null)
            {
                s = (String)httpparams.getParameter("http.useragent");
            }
            if (s == null)
            {
                s = userAgent;
            }
            if (s != null)
            {
                httprequest.addHeader("User-Agent", s);
            }
        }
    }
}
