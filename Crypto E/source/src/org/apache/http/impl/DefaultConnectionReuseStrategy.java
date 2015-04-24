// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;
import org.apache.http.TokenIterator;
import org.apache.http.message.BasicTokenIterator;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

public class DefaultConnectionReuseStrategy
    implements ConnectionReuseStrategy
{

    public static final DefaultConnectionReuseStrategy INSTANCE = new DefaultConnectionReuseStrategy();

    public DefaultConnectionReuseStrategy()
    {
    }

    private boolean canResponseHaveBody(HttpResponse httpresponse)
    {
        int i = httpresponse.getStatusLine().getStatusCode();
        return i >= 200 && i != 204 && i != 304 && i != 205;
    }

    protected TokenIterator createTokenIterator(HeaderIterator headeriterator)
    {
        return new BasicTokenIterator(headeriterator);
    }

    public boolean keepAlive(HttpResponse httpresponse, HttpContext httpcontext)
    {
        boolean flag;
        ProtocolVersion protocolversion;
        Header header;
        flag = true;
        Args.notNull(httpresponse, "HTTP response");
        Args.notNull(httpcontext, "HTTP context");
        protocolversion = httpresponse.getStatusLine().getProtocolVersion();
        header = httpresponse.getFirstHeader("Transfer-Encoding");
        if (header == null) goto _L2; else goto _L1
_L1:
        if ("chunked".equalsIgnoreCase(header.getValue())) goto _L4; else goto _L3
_L3:
        return false;
_L2:
        Header aheader[];
        if (!canResponseHaveBody(httpresponse))
        {
            break; /* Loop/switch isn't completed */
        }
        aheader = httpresponse.getHeaders("Content-Length");
        if (aheader.length != flag) goto _L3; else goto _L5
_L5:
        Header header1 = aheader[0];
        HeaderIterator headeriterator;
        ParseException parseexception;
        TokenIterator tokeniterator;
        int i;
        String s;
        boolean flag1;
        int j;
        try
        {
            j = Integer.parseInt(header1.getValue());
        }
        catch (NumberFormatException numberformatexception)
        {
            return false;
        }
        if (j < 0) goto _L3; else goto _L4
_L4:
        headeriterator = httpresponse.headerIterator("Connection");
        if (!headeriterator.hasNext())
        {
            headeriterator = httpresponse.headerIterator("Proxy-Connection");
        }
        if (!headeriterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_216;
        }
        try
        {
            tokeniterator = createTokenIterator(headeriterator);
        }
        // Misplaced declaration of an exception variable
        catch (ParseException parseexception)
        {
            return false;
        }
        i = 0;
        if (!tokeniterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_209;
        }
        s = tokeniterator.nextToken();
        if ("Close".equalsIgnoreCase(s)) goto _L3; else goto _L6
_L6:
        flag1 = "Keep-Alive".equalsIgnoreCase(s);
        if (flag1)
        {
            i = ((flag) ? 1 : 0);
        }
        break MISSING_BLOCK_LABEL_160;
        if (i != 0)
        {
            return flag;
        }
        if (protocolversion.lessEquals(HttpVersion.HTTP_1_0))
        {
            flag = false;
        }
        return flag;
    }

}
