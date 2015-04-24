// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.params;

import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.params:
//            CoreProtocolPNames, HttpParams

public final class HttpProtocolParams
    implements CoreProtocolPNames
{

    private HttpProtocolParams()
    {
    }

    public static String getContentCharset(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        String s = (String)httpparams.getParameter("http.protocol.content-charset");
        if (s == null)
        {
            s = HTTP.DEF_CONTENT_CHARSET.name();
        }
        return s;
    }

    public static String getHttpElementCharset(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        String s = (String)httpparams.getParameter("http.protocol.element-charset");
        if (s == null)
        {
            s = HTTP.DEF_PROTOCOL_CHARSET.name();
        }
        return s;
    }

    public static CodingErrorAction getMalformedInputAction(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        Object obj = httpparams.getParameter("http.malformed.input.action");
        if (obj == null)
        {
            return CodingErrorAction.REPORT;
        } else
        {
            return (CodingErrorAction)obj;
        }
    }

    public static CodingErrorAction getUnmappableInputAction(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        Object obj = httpparams.getParameter("http.unmappable.input.action");
        if (obj == null)
        {
            return CodingErrorAction.REPORT;
        } else
        {
            return (CodingErrorAction)obj;
        }
    }

    public static String getUserAgent(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        return (String)httpparams.getParameter("http.useragent");
    }

    public static ProtocolVersion getVersion(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        Object obj = httpparams.getParameter("http.protocol.version");
        if (obj == null)
        {
            return HttpVersion.HTTP_1_1;
        } else
        {
            return (ProtocolVersion)obj;
        }
    }

    public static void setContentCharset(HttpParams httpparams, String s)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setParameter("http.protocol.content-charset", s);
    }

    public static void setHttpElementCharset(HttpParams httpparams, String s)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setParameter("http.protocol.element-charset", s);
    }

    public static void setMalformedInputAction(HttpParams httpparams, CodingErrorAction codingerroraction)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setParameter("http.malformed.input.action", codingerroraction);
    }

    public static void setUnmappableInputAction(HttpParams httpparams, CodingErrorAction codingerroraction)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setParameter("http.unmappable.input.action", codingerroraction);
    }

    public static void setUseExpectContinue(HttpParams httpparams, boolean flag)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setBooleanParameter("http.protocol.expect-continue", flag);
    }

    public static void setUserAgent(HttpParams httpparams, String s)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setParameter("http.useragent", s);
    }

    public static void setVersion(HttpParams httpparams, ProtocolVersion protocolversion)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setParameter("http.protocol.version", protocolversion);
    }

    public static boolean useExpectContinue(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        return httpparams.getBooleanParameter("http.protocol.expect-continue", false);
    }
}
