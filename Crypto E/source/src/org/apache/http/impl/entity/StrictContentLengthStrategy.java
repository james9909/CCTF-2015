// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.entity;

import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.util.Args;

public class StrictContentLengthStrategy
    implements ContentLengthStrategy
{

    public static final StrictContentLengthStrategy INSTANCE = new StrictContentLengthStrategy();
    private final int implicitLen;

    public StrictContentLengthStrategy()
    {
        this(-1);
    }

    public StrictContentLengthStrategy(int i)
    {
        implicitLen = i;
    }

    public long determineLength(HttpMessage httpmessage)
    {
        Header header;
        Args.notNull(httpmessage, "HTTP message");
        header = httpmessage.getFirstHeader("Transfer-Encoding");
        if (header == null) goto _L2; else goto _L1
_L1:
        String s1 = header.getValue();
        if (!"chunked".equalsIgnoreCase(s1)) goto _L4; else goto _L3
_L3:
        long l;
        if (httpmessage.getProtocolVersion().lessEquals(HttpVersion.HTTP_1_0))
        {
            throw new ProtocolException((new StringBuilder()).append("Chunked transfer encoding not allowed for ").append(httpmessage.getProtocolVersion()).toString());
        }
        l = -2L;
_L6:
        return l;
_L4:
        if ("identity".equalsIgnoreCase(s1))
        {
            return -1L;
        } else
        {
            throw new ProtocolException((new StringBuilder()).append("Unsupported transfer encoding: ").append(s1).toString());
        }
_L2:
        Header header1 = httpmessage.getFirstHeader("Content-Length");
        if (header1 == null)
        {
            break MISSING_BLOCK_LABEL_231;
        }
        String s = header1.getValue();
        try
        {
            l = Long.parseLong(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new ProtocolException((new StringBuilder()).append("Invalid content length: ").append(s).toString());
        }
        if (l >= 0L) goto _L6; else goto _L5
_L5:
        throw new ProtocolException((new StringBuilder()).append("Negative content length: ").append(s).toString());
        return (long)implicitLen;
    }

}
