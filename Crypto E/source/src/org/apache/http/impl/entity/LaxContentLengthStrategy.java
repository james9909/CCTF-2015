// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.entity;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpMessage;
import org.apache.http.ParseException;
import org.apache.http.ProtocolException;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.util.Args;

public class LaxContentLengthStrategy
    implements ContentLengthStrategy
{

    public static final LaxContentLengthStrategy INSTANCE = new LaxContentLengthStrategy();
    private final int implicitLen;

    public LaxContentLengthStrategy()
    {
        this(-1);
    }

    public LaxContentLengthStrategy(int i)
    {
        implicitLen = i;
    }

    public long determineLength(HttpMessage httpmessage)
    {
        HeaderElement aheaderelement[];
        int j;
        Args.notNull(httpmessage, "HTTP message");
        Header header = httpmessage.getFirstHeader("Transfer-Encoding");
        if (header != null)
        {
            try
            {
                aheaderelement = header.getElements();
            }
            catch (ParseException parseexception)
            {
                throw new ProtocolException((new StringBuilder()).append("Invalid Transfer-Encoding header value: ").append(header).toString(), parseexception);
            }
            j = aheaderelement.length;
            break MISSING_BLOCK_LABEL_33;
        }
          goto _L1
_L6:
        int i;
        long l;
        if (l >= 0L)
        {
            return l;
        }
        do
        {
            return -1L;
        } while ("identity".equalsIgnoreCase(header.getValue()) || j <= 0 || !"chunked".equalsIgnoreCase(aheaderelement[j - 1].getName()));
        return -2L;
_L1:
        if (httpmessage.getFirstHeader("Content-Length") == null) goto _L3; else goto _L2
_L2:
        aheader = httpmessage.getHeaders("Content-Length");
        i = -1 + aheader.length;
_L4:
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        header1 = aheader[i];
        l1 = Long.parseLong(header1.getValue());
        l = l1;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        i--;
        if (true) goto _L4; else goto _L3
_L3:
        return (long)implicitLen;
        l = -1L;
        if (true) goto _L6; else goto _L5
_L5:
    }

}
