// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.message;

import org.apache.http.Header;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.message:
//            LineParser, ParserCursor, BasicRequestLine, BasicStatusLine, 
//            BufferedHeader

public class BasicLineParser
    implements LineParser
{

    public static final BasicLineParser DEFAULT = new BasicLineParser();
    public static final BasicLineParser INSTANCE = new BasicLineParser();
    protected final ProtocolVersion protocol;

    public BasicLineParser()
    {
        this(null);
    }

    public BasicLineParser(ProtocolVersion protocolversion)
    {
        if (protocolversion == null)
        {
            protocolversion = HttpVersion.HTTP_1_1;
        }
        protocol = protocolversion;
    }

    public static Header parseHeader(String s, LineParser lineparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        if (lineparser == null)
        {
            lineparser = INSTANCE;
        }
        return lineparser.parseHeader(chararraybuffer);
    }

    public static ProtocolVersion parseProtocolVersion(String s, LineParser lineparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        ParserCursor parsercursor = new ParserCursor(0, s.length());
        if (lineparser == null)
        {
            lineparser = INSTANCE;
        }
        return lineparser.parseProtocolVersion(chararraybuffer, parsercursor);
    }

    public static RequestLine parseRequestLine(String s, LineParser lineparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        ParserCursor parsercursor = new ParserCursor(0, s.length());
        if (lineparser == null)
        {
            lineparser = INSTANCE;
        }
        return lineparser.parseRequestLine(chararraybuffer, parsercursor);
    }

    public static StatusLine parseStatusLine(String s, LineParser lineparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        ParserCursor parsercursor = new ParserCursor(0, s.length());
        if (lineparser == null)
        {
            lineparser = INSTANCE;
        }
        return lineparser.parseStatusLine(chararraybuffer, parsercursor);
    }

    protected ProtocolVersion createProtocolVersion(int i, int j)
    {
        return protocol.forVersion(i, j);
    }

    protected RequestLine createRequestLine(String s, String s1, ProtocolVersion protocolversion)
    {
        return new BasicRequestLine(s, s1, protocolversion);
    }

    protected StatusLine createStatusLine(ProtocolVersion protocolversion, int i, String s)
    {
        return new BasicStatusLine(protocolversion, i, s);
    }

    public boolean hasProtocolVersion(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        boolean flag = true;
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        int i = parsercursor.getPos();
        String s = protocol.getProtocol();
        int j = s.length();
        if (chararraybuffer.length() >= j + 4)
        {
            if (i < 0)
            {
                i = (-4 + chararraybuffer.length()) - j;
            } else
            if (i == 0)
            {
                while (i < chararraybuffer.length() && HTTP.isWhitespace(chararraybuffer.charAt(i))) 
                {
                    i++;
                }
            }
            if (4 + (i + j) <= chararraybuffer.length())
            {
                int k = 0;
                boolean flag1 = flag;
                while (flag1 && k < j) 
                {
                    if (chararraybuffer.charAt(i + k) == s.charAt(k))
                    {
                        flag1 = flag;
                    } else
                    {
                        flag1 = false;
                    }
                    k++;
                }
                if (flag1)
                {
                    if (chararraybuffer.charAt(i + j) != '/')
                    {
                        flag = false;
                    }
                } else
                {
                    flag = flag1;
                }
                return flag;
            }
        }
        return false;
    }

    public Header parseHeader(CharArrayBuffer chararraybuffer)
    {
        return new BufferedHeader(chararraybuffer);
    }

    public ProtocolVersion parseProtocolVersion(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        boolean flag = true;
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        String s = protocol.getProtocol();
        int i = s.length();
        int j = parsercursor.getPos();
        int k = parsercursor.getUpperBound();
        skipWhitespace(chararraybuffer, parsercursor);
        int l = parsercursor.getPos();
        if (4 + (l + i) > k)
        {
            throw new ParseException((new StringBuilder()).append("Not a valid protocol version: ").append(chararraybuffer.substring(j, k)).toString());
        }
        int i1 = 0;
        boolean flag1 = flag;
        while (flag1 && i1 < i) 
        {
            if (chararraybuffer.charAt(l + i1) == s.charAt(i1))
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            i1++;
        }
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        if (flag1)
        {
            if (chararraybuffer.charAt(l + i) != '/')
            {
                flag = false;
            }
        } else
        {
            flag = flag1;
        }
        if (!flag)
        {
            throw new ParseException((new StringBuilder()).append("Not a valid protocol version: ").append(chararraybuffer.substring(j, k)).toString());
        }
        j1 = l + (i + 1);
        k1 = chararraybuffer.indexOf(46, j1, k);
        if (k1 == -1)
        {
            throw new ParseException((new StringBuilder()).append("Invalid protocol version number: ").append(chararraybuffer.substring(j, k)).toString());
        }
        try
        {
            l1 = Integer.parseInt(chararraybuffer.substringTrimmed(j1, k1));
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new ParseException((new StringBuilder()).append("Invalid protocol major version number: ").append(chararraybuffer.substring(j, k)).toString());
        }
        i2 = k1 + 1;
        j2 = chararraybuffer.indexOf(32, i2, k);
        if (j2 == -1)
        {
            j2 = k;
        }
        try
        {
            k2 = Integer.parseInt(chararraybuffer.substringTrimmed(i2, j2));
        }
        catch (NumberFormatException numberformatexception1)
        {
            throw new ParseException((new StringBuilder()).append("Invalid protocol minor version number: ").append(chararraybuffer.substring(j, k)).toString());
        }
        parsercursor.updatePos(j2);
        return createProtocolVersion(l1, k2);
    }

    public RequestLine parseRequestLine(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        int i;
        int j;
        int k;
        int l;
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        i = parsercursor.getPos();
        j = parsercursor.getUpperBound();
        try
        {
            skipWhitespace(chararraybuffer, parsercursor);
            k = parsercursor.getPos();
            l = chararraybuffer.indexOf(32, k, j);
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            throw new ParseException((new StringBuilder()).append("Invalid request line: ").append(chararraybuffer.substring(i, j)).toString());
        }
        if (l >= 0)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        throw new ParseException((new StringBuilder()).append("Invalid request line: ").append(chararraybuffer.substring(i, j)).toString());
        String s;
        int i1;
        int j1;
        s = chararraybuffer.substringTrimmed(k, l);
        parsercursor.updatePos(l);
        skipWhitespace(chararraybuffer, parsercursor);
        i1 = parsercursor.getPos();
        j1 = chararraybuffer.indexOf(32, i1, j);
        if (j1 >= 0)
        {
            break MISSING_BLOCK_LABEL_204;
        }
        throw new ParseException((new StringBuilder()).append("Invalid request line: ").append(chararraybuffer.substring(i, j)).toString());
        RequestLine requestline;
        String s1 = chararraybuffer.substringTrimmed(i1, j1);
        parsercursor.updatePos(j1);
        ProtocolVersion protocolversion = parseProtocolVersion(chararraybuffer, parsercursor);
        skipWhitespace(chararraybuffer, parsercursor);
        if (!parsercursor.atEnd())
        {
            throw new ParseException((new StringBuilder()).append("Invalid request line: ").append(chararraybuffer.substring(i, j)).toString());
        }
        requestline = createRequestLine(s, s1, protocolversion);
        return requestline;
    }

    public StatusLine parseStatusLine(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        int i = parsercursor.getPos();
        int j = parsercursor.getUpperBound();
        ProtocolVersion protocolversion;
        int k;
        int l;
        int i1;
        String s;
        int j1;
        try
        {
            protocolversion = parseProtocolVersion(chararraybuffer, parsercursor);
            skipWhitespace(chararraybuffer, parsercursor);
            k = parsercursor.getPos();
            l = chararraybuffer.indexOf(32, k, j);
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            throw new ParseException((new StringBuilder()).append("Invalid status line: ").append(chararraybuffer.substring(i, j)).toString());
        }
        NumberFormatException numberformatexception;
        int k1;
        String s1;
        if (l < 0)
        {
            i1 = j;
        } else
        {
            i1 = l;
        }
        s = chararraybuffer.substringTrimmed(k, i1);
        j1 = 0;
_L2:
        if (j1 >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        if (!Character.isDigit(s.charAt(j1)))
        {
            throw new ParseException((new StringBuilder()).append("Status line contains invalid status code: ").append(chararraybuffer.substring(i, j)).toString());
        }
        j1++;
        if (true) goto _L2; else goto _L1
_L1:
        k1 = Integer.parseInt(s);
        if (i1 >= j)
        {
            break MISSING_BLOCK_LABEL_250;
        }
        s1 = chararraybuffer.substringTrimmed(i1, j);
_L3:
        return createStatusLine(protocolversion, k1, s1);
        numberformatexception;
        throw new ParseException((new StringBuilder()).append("Status line contains invalid status code: ").append(chararraybuffer.substring(i, j)).toString());
        s1 = "";
          goto _L3
    }

    protected void skipWhitespace(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        int i = parsercursor.getPos();
        for (int j = parsercursor.getUpperBound(); i < j && HTTP.isWhitespace(chararraybuffer.charAt(i)); i++) { }
        parsercursor.updatePos(i);
    }

}
