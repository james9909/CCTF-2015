// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.message;

import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.message:
//            LineFormatter

public class BasicLineFormatter
    implements LineFormatter
{

    public static final BasicLineFormatter DEFAULT = new BasicLineFormatter();
    public static final BasicLineFormatter INSTANCE = new BasicLineFormatter();

    public BasicLineFormatter()
    {
    }

    public static String formatHeader(Header header, LineFormatter lineformatter)
    {
        if (lineformatter == null)
        {
            lineformatter = INSTANCE;
        }
        return lineformatter.formatHeader(null, header).toString();
    }

    public static String formatProtocolVersion(ProtocolVersion protocolversion, LineFormatter lineformatter)
    {
        if (lineformatter == null)
        {
            lineformatter = INSTANCE;
        }
        return lineformatter.appendProtocolVersion(null, protocolversion).toString();
    }

    public static String formatRequestLine(RequestLine requestline, LineFormatter lineformatter)
    {
        if (lineformatter == null)
        {
            lineformatter = INSTANCE;
        }
        return lineformatter.formatRequestLine(null, requestline).toString();
    }

    public static String formatStatusLine(StatusLine statusline, LineFormatter lineformatter)
    {
        if (lineformatter == null)
        {
            lineformatter = INSTANCE;
        }
        return lineformatter.formatStatusLine(null, statusline).toString();
    }

    public CharArrayBuffer appendProtocolVersion(CharArrayBuffer chararraybuffer, ProtocolVersion protocolversion)
    {
        Args.notNull(protocolversion, "Protocol version");
        int i = estimateProtocolVersionLen(protocolversion);
        if (chararraybuffer == null)
        {
            chararraybuffer = new CharArrayBuffer(i);
        } else
        {
            chararraybuffer.ensureCapacity(i);
        }
        chararraybuffer.append(protocolversion.getProtocol());
        chararraybuffer.append('/');
        chararraybuffer.append(Integer.toString(protocolversion.getMajor()));
        chararraybuffer.append('.');
        chararraybuffer.append(Integer.toString(protocolversion.getMinor()));
        return chararraybuffer;
    }

    protected void doFormatHeader(CharArrayBuffer chararraybuffer, Header header)
    {
        String s = header.getName();
        String s1 = header.getValue();
        int i = 2 + s.length();
        if (s1 != null)
        {
            i += s1.length();
        }
        chararraybuffer.ensureCapacity(i);
        chararraybuffer.append(s);
        chararraybuffer.append(": ");
        if (s1 != null)
        {
            chararraybuffer.append(s1);
        }
    }

    protected void doFormatRequestLine(CharArrayBuffer chararraybuffer, RequestLine requestline)
    {
        String s = requestline.getMethod();
        String s1 = requestline.getUri();
        chararraybuffer.ensureCapacity(1 + (1 + s.length() + s1.length()) + estimateProtocolVersionLen(requestline.getProtocolVersion()));
        chararraybuffer.append(s);
        chararraybuffer.append(' ');
        chararraybuffer.append(s1);
        chararraybuffer.append(' ');
        appendProtocolVersion(chararraybuffer, requestline.getProtocolVersion());
    }

    protected void doFormatStatusLine(CharArrayBuffer chararraybuffer, StatusLine statusline)
    {
        int i = 1 + (3 + (1 + estimateProtocolVersionLen(statusline.getProtocolVersion())));
        String s = statusline.getReasonPhrase();
        if (s != null)
        {
            i += s.length();
        }
        chararraybuffer.ensureCapacity(i);
        appendProtocolVersion(chararraybuffer, statusline.getProtocolVersion());
        chararraybuffer.append(' ');
        chararraybuffer.append(Integer.toString(statusline.getStatusCode()));
        chararraybuffer.append(' ');
        if (s != null)
        {
            chararraybuffer.append(s);
        }
    }

    protected int estimateProtocolVersionLen(ProtocolVersion protocolversion)
    {
        return 4 + protocolversion.getProtocol().length();
    }

    public CharArrayBuffer formatHeader(CharArrayBuffer chararraybuffer, Header header)
    {
        Args.notNull(header, "Header");
        if (header instanceof FormattedHeader)
        {
            return ((FormattedHeader)header).getBuffer();
        } else
        {
            CharArrayBuffer chararraybuffer1 = initBuffer(chararraybuffer);
            doFormatHeader(chararraybuffer1, header);
            return chararraybuffer1;
        }
    }

    public CharArrayBuffer formatRequestLine(CharArrayBuffer chararraybuffer, RequestLine requestline)
    {
        Args.notNull(requestline, "Request line");
        CharArrayBuffer chararraybuffer1 = initBuffer(chararraybuffer);
        doFormatRequestLine(chararraybuffer1, requestline);
        return chararraybuffer1;
    }

    public CharArrayBuffer formatStatusLine(CharArrayBuffer chararraybuffer, StatusLine statusline)
    {
        Args.notNull(statusline, "Status line");
        CharArrayBuffer chararraybuffer1 = initBuffer(chararraybuffer);
        doFormatStatusLine(chararraybuffer1, statusline);
        return chararraybuffer1;
    }

    protected CharArrayBuffer initBuffer(CharArrayBuffer chararraybuffer)
    {
        if (chararraybuffer != null)
        {
            chararraybuffer.clear();
            return chararraybuffer;
        } else
        {
            return new CharArrayBuffer(64);
        }
    }

}
