// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Locale;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.message.BasicHeaderValueParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.TextUtils;

public final class ContentType
    implements Serializable
{

    public static final ContentType APPLICATION_ATOM_XML;
    public static final ContentType APPLICATION_FORM_URLENCODED;
    public static final ContentType APPLICATION_JSON;
    public static final ContentType APPLICATION_OCTET_STREAM;
    public static final ContentType APPLICATION_SVG_XML;
    public static final ContentType APPLICATION_XHTML_XML;
    public static final ContentType APPLICATION_XML;
    public static final ContentType DEFAULT_BINARY;
    public static final ContentType DEFAULT_TEXT;
    public static final ContentType MULTIPART_FORM_DATA;
    public static final ContentType TEXT_HTML;
    public static final ContentType TEXT_PLAIN;
    public static final ContentType TEXT_XML;
    public static final ContentType WILDCARD = create("*/*", (Charset)null);
    private static final long serialVersionUID = 0x94300d50674e5d48L;
    private final Charset charset;
    private final String mimeType;
    private final NameValuePair params[];

    ContentType(String s, Charset charset1)
    {
        mimeType = s;
        charset = charset1;
        params = null;
    }

    ContentType(String s, NameValuePair anamevaluepair[])
    {
        mimeType = s;
        params = anamevaluepair;
        String s1 = getParameter("charset");
        Charset charset1;
        if (!TextUtils.isBlank(s1))
        {
            charset1 = Charset.forName(s1);
        } else
        {
            charset1 = null;
        }
        charset = charset1;
    }

    public static ContentType create(String s)
    {
        return new ContentType(s, (Charset)null);
    }

    public static ContentType create(String s, String s1)
    {
        Charset charset1;
        if (!TextUtils.isBlank(s1))
        {
            charset1 = Charset.forName(s1);
        } else
        {
            charset1 = null;
        }
        return create(s, charset1);
    }

    public static ContentType create(String s, Charset charset1)
    {
        String s1 = ((String)Args.notBlank(s, "MIME type")).toLowerCase(Locale.US);
        Args.check(valid(s1), "MIME type may not contain reserved characters");
        return new ContentType(s1, charset1);
    }

    private static ContentType create(HeaderElement headerelement)
    {
        String s = headerelement.getName();
        NameValuePair anamevaluepair[] = headerelement.getParameters();
        if (anamevaluepair == null || anamevaluepair.length <= 0)
        {
            anamevaluepair = null;
        }
        return new ContentType(s, anamevaluepair);
    }

    public static ContentType get(HttpEntity httpentity)
    {
        Header header;
        HeaderElement aheaderelement[];
        if (httpentity != null)
        {
            if ((header = httpentity.getContentType()) != null && (aheaderelement = header.getElements()).length > 0)
            {
                return create(aheaderelement[0]);
            }
        }
        return null;
    }

    public static ContentType getOrDefault(HttpEntity httpentity)
    {
        ContentType contenttype = get(httpentity);
        if (contenttype != null)
        {
            return contenttype;
        } else
        {
            return DEFAULT_TEXT;
        }
    }

    public static ContentType parse(String s)
    {
        Args.notNull(s, "Content type");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        ParserCursor parsercursor = new ParserCursor(0, s.length());
        HeaderElement aheaderelement[] = BasicHeaderValueParser.INSTANCE.parseElements(chararraybuffer, parsercursor);
        if (aheaderelement.length > 0)
        {
            return create(aheaderelement[0]);
        } else
        {
            throw new ParseException((new StringBuilder()).append("Invalid content type: ").append(s).toString());
        }
    }

    private static boolean valid(String s)
    {
        for (int i = 0; i < s.length(); i++)
        {
            char c = s.charAt(i);
            if (c == '"' || c == ',' || c == ';')
            {
                return false;
            }
        }

        return true;
    }

    public Charset getCharset()
    {
        return charset;
    }

    public String getMimeType()
    {
        return mimeType;
    }

    public String getParameter(String s)
    {
        Args.notEmpty(s, "Parameter name");
        if (params != null)
        {
            NameValuePair anamevaluepair[] = params;
            int i = anamevaluepair.length;
            int j = 0;
            while (j < i) 
            {
                NameValuePair namevaluepair = anamevaluepair[j];
                if (namevaluepair.getName().equalsIgnoreCase(s))
                {
                    return namevaluepair.getValue();
                }
                j++;
            }
        }
        return null;
    }

    public String toString()
    {
        CharArrayBuffer chararraybuffer;
        chararraybuffer = new CharArrayBuffer(64);
        chararraybuffer.append(mimeType);
        if (params == null) goto _L2; else goto _L1
_L1:
        chararraybuffer.append("; ");
        BasicHeaderValueFormatter.INSTANCE.formatParameters(chararraybuffer, params, false);
_L4:
        return chararraybuffer.toString();
_L2:
        if (charset != null)
        {
            chararraybuffer.append("; charset=");
            chararraybuffer.append(charset.name());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public ContentType withCharset(String s)
    {
        return create(getMimeType(), s);
    }

    public ContentType withCharset(Charset charset1)
    {
        return create(getMimeType(), charset1);
    }

    static 
    {
        APPLICATION_ATOM_XML = create("application/atom+xml", Consts.ISO_8859_1);
        APPLICATION_FORM_URLENCODED = create("application/x-www-form-urlencoded", Consts.ISO_8859_1);
        APPLICATION_JSON = create("application/json", Consts.UTF_8);
        APPLICATION_OCTET_STREAM = create("application/octet-stream", (Charset)null);
        APPLICATION_SVG_XML = create("application/svg+xml", Consts.ISO_8859_1);
        APPLICATION_XHTML_XML = create("application/xhtml+xml", Consts.ISO_8859_1);
        APPLICATION_XML = create("application/xml", Consts.ISO_8859_1);
        MULTIPART_FORM_DATA = create("multipart/form-data", Consts.ISO_8859_1);
        TEXT_HTML = create("text/html", Consts.ISO_8859_1);
        TEXT_PLAIN = create("text/plain", Consts.ISO_8859_1);
        TEXT_XML = create("text/xml", Consts.ISO_8859_1);
        DEFAULT_TEXT = TEXT_PLAIN;
        DEFAULT_BINARY = APPLICATION_OCTET_STREAM;
    }
}
