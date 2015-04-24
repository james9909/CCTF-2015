// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.util.ArrayList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.apache.http.MessageConstraintException;
import org.apache.http.ParseException;
import org.apache.http.ProtocolException;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.BasicLineParser;
import org.apache.http.message.LineParser;
import org.apache.http.params.HttpParamConfig;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

public abstract class AbstractMessageParser
    implements HttpMessageParser
{

    private static final int HEADERS = 1;
    private static final int HEAD_LINE;
    private final List headerLines;
    protected final LineParser lineParser;
    private HttpMessage message;
    private final MessageConstraints messageConstraints;
    private final SessionInputBuffer sessionBuffer;
    private int state;

    public AbstractMessageParser(SessionInputBuffer sessioninputbuffer, LineParser lineparser, MessageConstraints messageconstraints)
    {
        sessionBuffer = (SessionInputBuffer)Args.notNull(sessioninputbuffer, "Session input buffer");
        if (lineparser == null)
        {
            lineparser = BasicLineParser.INSTANCE;
        }
        lineParser = lineparser;
        if (messageconstraints == null)
        {
            messageconstraints = MessageConstraints.DEFAULT;
        }
        messageConstraints = messageconstraints;
        headerLines = new ArrayList();
        state = 0;
    }

    public AbstractMessageParser(SessionInputBuffer sessioninputbuffer, LineParser lineparser, HttpParams httpparams)
    {
        Args.notNull(sessioninputbuffer, "Session input buffer");
        Args.notNull(httpparams, "HTTP parameters");
        sessionBuffer = sessioninputbuffer;
        messageConstraints = HttpParamConfig.getMessageConstraints(httpparams);
        if (lineparser == null)
        {
            lineparser = BasicLineParser.INSTANCE;
        }
        lineParser = lineparser;
        headerLines = new ArrayList();
        state = 0;
    }

    public static Header[] parseHeaders(SessionInputBuffer sessioninputbuffer, int i, int j, LineParser lineparser)
    {
        ArrayList arraylist = new ArrayList();
        if (lineparser == null)
        {
            lineparser = BasicLineParser.INSTANCE;
        }
        return parseHeaders(sessioninputbuffer, i, j, lineparser, ((List) (arraylist)));
    }

    public static Header[] parseHeaders(SessionInputBuffer sessioninputbuffer, int i, int j, LineParser lineparser, List list)
    {
        int k;
        CharArrayBuffer chararraybuffer;
        CharArrayBuffer chararraybuffer1;
        k = 0;
        Args.notNull(sessioninputbuffer, "Session input buffer");
        Args.notNull(lineparser, "Line parser");
        Args.notNull(list, "Header line list");
        chararraybuffer = null;
        chararraybuffer1 = null;
_L6:
        Header aheader[];
        if (chararraybuffer1 == null)
        {
            chararraybuffer1 = new CharArrayBuffer(64);
        } else
        {
            chararraybuffer1.clear();
        }
        if (sessioninputbuffer.readLine(chararraybuffer1) == -1 || chararraybuffer1.length() < 1)
        {
            aheader = new Header[list.size()];
            while (k < list.size()) 
            {
                CharArrayBuffer chararraybuffer2 = (CharArrayBuffer)list.get(k);
                CharArrayBuffer chararraybuffer3;
                int l;
                char c;
                try
                {
                    aheader[k] = lineparser.parseHeader(chararraybuffer2);
                }
                catch (ParseException parseexception)
                {
                    throw new ProtocolException(parseexception.getMessage());
                }
                k++;
            }
            break; /* Loop/switch isn't completed */
        }
        if (chararraybuffer1.charAt(0) != ' ' && chararraybuffer1.charAt(0) != '\t' || chararraybuffer == null) goto _L2; else goto _L1
_L1:
        l = 0;
label0:
        do
        {
label1:
            {
                if (l < chararraybuffer1.length())
                {
                    c = chararraybuffer1.charAt(l);
                    if (c == ' ' || c == '\t')
                    {
                        break label1;
                    }
                }
                if (j > 0 && (1 + chararraybuffer.length() + chararraybuffer1.length()) - l > j)
                {
                    throw new MessageConstraintException("Maximum line length limit exceeded");
                }
                break label0;
            }
            l++;
        } while (true);
        chararraybuffer.append(' ');
        chararraybuffer.append(chararraybuffer1, l, chararraybuffer1.length() - l);
        chararraybuffer3 = chararraybuffer1;
        chararraybuffer1 = chararraybuffer;
_L4:
        if (i > 0 && list.size() >= i)
        {
            throw new MessageConstraintException("Maximum header count exceeded");
        }
        break; /* Loop/switch isn't completed */
_L2:
        list.add(chararraybuffer1);
        chararraybuffer3 = null;
        if (true) goto _L4; else goto _L3
_L3:
        chararraybuffer = chararraybuffer1;
        chararraybuffer1 = chararraybuffer3;
        if (true) goto _L6; else goto _L5
_L5:
        return aheader;
    }

    public HttpMessage parse()
    {
        switch (state)
        {
        default:
            throw new IllegalStateException("Inconsistent parser state");

        case 0: // '\0'
            Header aheader[];
            HttpMessage httpmessage;
            try
            {
                message = parseHead(sessionBuffer);
            }
            catch (ParseException parseexception)
            {
                throw new ProtocolException(parseexception.getMessage(), parseexception);
            }
            state = 1;
            // fall through

        case 1: // '\001'
            aheader = parseHeaders(sessionBuffer, messageConstraints.getMaxHeaderCount(), messageConstraints.getMaxLineLength(), lineParser, headerLines);
            message.setHeaders(aheader);
            httpmessage = message;
            message = null;
            headerLines.clear();
            state = 0;
            return httpmessage;
        }
    }

    protected abstract HttpMessage parseHead(SessionInputBuffer sessioninputbuffer);
}
