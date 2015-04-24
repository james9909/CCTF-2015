// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.protocol:
//            HttpCoreContext, HttpContext

public class ResponseConnControl
    implements HttpResponseInterceptor
{

    public ResponseConnControl()
    {
    }

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        Args.notNull(httpresponse, "HTTP response");
        HttpCoreContext httpcorecontext = HttpCoreContext.adapt(httpcontext);
        int i = httpresponse.getStatusLine().getStatusCode();
        if (i == 400 || i == 408 || i == 411 || i == 413 || i == 414 || i == 503 || i == 501)
        {
            httpresponse.setHeader("Connection", "Close");
        } else
        {
            Header header = httpresponse.getFirstHeader("Connection");
            if (header == null || !"Close".equalsIgnoreCase(header.getValue()))
            {
                HttpEntity httpentity = httpresponse.getEntity();
                if (httpentity != null)
                {
                    ProtocolVersion protocolversion = httpresponse.getStatusLine().getProtocolVersion();
                    if (httpentity.getContentLength() < 0L && (!httpentity.isChunked() || protocolversion.lessEquals(HttpVersion.HTTP_1_0)))
                    {
                        httpresponse.setHeader("Connection", "Close");
                        return;
                    }
                }
                HttpRequest httprequest = httpcorecontext.getRequest();
                if (httprequest != null)
                {
                    Header header1 = httprequest.getFirstHeader("Connection");
                    if (header1 != null)
                    {
                        httpresponse.setHeader("Connection", header1.getValue());
                        return;
                    }
                    if (httprequest.getProtocolVersion().lessEquals(HttpVersion.HTTP_1_0))
                    {
                        httpresponse.setHeader("Connection", "Close");
                        return;
                    }
                }
            }
        }
    }
}
