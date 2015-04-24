// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.input;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.ByteOrderMark;

// Referenced classes of package org.apache.commons.io.input:
//            BOMInputStream, XmlStreamReaderException

public class XmlStreamReader extends Reader
{

    private static final ByteOrderMark BOMS[];
    private static final int BUFFER_SIZE = 4096;
    private static final Pattern CHARSET_PATTERN = Pattern.compile("charset=[\"']?([.[^; \"']]*)[\"']?");
    private static final String EBCDIC = "CP1047";
    public static final Pattern ENCODING_PATTERN = Pattern.compile("<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:'.[^']*'))", 8);
    private static final String HTTP_EX_1 = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL";
    private static final String HTTP_EX_2 = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch";
    private static final String HTTP_EX_3 = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME";
    private static final String RAW_EX_1 = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch";
    private static final String RAW_EX_2 = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM";
    private static final String US_ASCII = "US-ASCII";
    private static final String UTF_16 = "UTF-16";
    private static final String UTF_16BE = "UTF-16BE";
    private static final String UTF_16LE = "UTF-16LE";
    private static final String UTF_32 = "UTF-32";
    private static final String UTF_32BE = "UTF-32BE";
    private static final String UTF_32LE = "UTF-32LE";
    private static final String UTF_8 = "UTF-8";
    private static final ByteOrderMark XML_GUESS_BYTES[];
    private final String defaultEncoding;
    private final String encoding;
    private final Reader reader;

    public XmlStreamReader(File file)
    {
        this(((InputStream) (new FileInputStream(file))));
    }

    public XmlStreamReader(InputStream inputstream)
    {
        this(inputstream, true);
    }

    public XmlStreamReader(InputStream inputstream, String s)
    {
        this(inputstream, s, true);
    }

    public XmlStreamReader(InputStream inputstream, String s, boolean flag)
    {
        this(inputstream, s, flag, null);
    }

    public XmlStreamReader(InputStream inputstream, String s, boolean flag, String s1)
    {
        defaultEncoding = s1;
        BOMInputStream bominputstream = new BOMInputStream(new BufferedInputStream(inputstream, 4096), false, BOMS);
        BOMInputStream bominputstream1 = new BOMInputStream(bominputstream, true, XML_GUESS_BYTES);
        encoding = doHttpStream(bominputstream, bominputstream1, s, flag);
        reader = new InputStreamReader(bominputstream1, encoding);
    }

    public XmlStreamReader(InputStream inputstream, boolean flag)
    {
        this(inputstream, flag, ((String) (null)));
    }

    public XmlStreamReader(InputStream inputstream, boolean flag, String s)
    {
        defaultEncoding = s;
        BOMInputStream bominputstream = new BOMInputStream(new BufferedInputStream(inputstream, 4096), false, BOMS);
        BOMInputStream bominputstream1 = new BOMInputStream(bominputstream, true, XML_GUESS_BYTES);
        encoding = doRawStream(bominputstream, bominputstream1, flag);
        reader = new InputStreamReader(bominputstream1, encoding);
    }

    public XmlStreamReader(URL url)
    {
        this(url.openConnection(), ((String) (null)));
    }

    public XmlStreamReader(URLConnection urlconnection, String s)
    {
        defaultEncoding = s;
        String s1 = urlconnection.getContentType();
        BOMInputStream bominputstream = new BOMInputStream(new BufferedInputStream(urlconnection.getInputStream(), 4096), false, BOMS);
        BOMInputStream bominputstream1 = new BOMInputStream(bominputstream, true, XML_GUESS_BYTES);
        if ((urlconnection instanceof HttpURLConnection) || s1 != null)
        {
            encoding = doHttpStream(bominputstream, bominputstream1, s1, true);
        } else
        {
            encoding = doRawStream(bominputstream, bominputstream1, true);
        }
        reader = new InputStreamReader(bominputstream1, encoding);
    }

    private String doHttpStream(BOMInputStream bominputstream, BOMInputStream bominputstream1, String s, boolean flag)
    {
        String s1 = bominputstream.getBOMCharsetName();
        String s2 = bominputstream1.getBOMCharsetName();
        String s3 = getXmlProlog(bominputstream1, s2);
        String s4;
        try
        {
            s4 = calculateHttpEncoding(s, s1, s2, s3, flag);
        }
        catch (XmlStreamReaderException xmlstreamreaderexception)
        {
            if (flag)
            {
                return doLenientDetection(s, xmlstreamreaderexception);
            } else
            {
                throw xmlstreamreaderexception;
            }
        }
        return s4;
    }

    private String doLenientDetection(String s, XmlStreamReaderException xmlstreamreaderexception)
    {
        if (s == null || !s.startsWith("text/html")) goto _L2; else goto _L1
_L1:
        String s3;
        String s2 = s.substring("text/html".length());
        s3 = (new StringBuilder()).append("text/xml").append(s2).toString();
        String s4 = calculateHttpEncoding(s3, xmlstreamreaderexception.getBomEncoding(), xmlstreamreaderexception.getXmlGuessEncoding(), xmlstreamreaderexception.getXmlEncoding(), true);
        String s1 = s4;
_L4:
        return s1;
        xmlstreamreaderexception;
_L2:
        s1 = xmlstreamreaderexception.getXmlEncoding();
        if (s1 == null)
        {
            s1 = xmlstreamreaderexception.getContentTypeEncoding();
        }
        if (s1 == null)
        {
            if (defaultEncoding == null)
            {
                return "UTF-8";
            } else
            {
                return defaultEncoding;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private String doRawStream(BOMInputStream bominputstream, BOMInputStream bominputstream1, boolean flag)
    {
        String s = bominputstream.getBOMCharsetName();
        String s1 = bominputstream1.getBOMCharsetName();
        String s2 = getXmlProlog(bominputstream1, s1);
        String s3;
        try
        {
            s3 = calculateRawEncoding(s, s1, s2);
        }
        catch (XmlStreamReaderException xmlstreamreaderexception)
        {
            if (flag)
            {
                return doLenientDetection(null, xmlstreamreaderexception);
            } else
            {
                throw xmlstreamreaderexception;
            }
        }
        return s3;
    }

    static String getContentTypeEncoding(String s)
    {
        String s1 = null;
        if (s != null)
        {
            int i = s.indexOf(";");
            s1 = null;
            if (i > -1)
            {
                String s2 = s.substring(i + 1);
                Matcher matcher = CHARSET_PATTERN.matcher(s2);
                String s3;
                if (matcher.find())
                {
                    s3 = matcher.group(1);
                } else
                {
                    s3 = null;
                }
                s1 = null;
                if (s3 != null)
                {
                    s1 = s3.toUpperCase(Locale.US);
                }
            }
        }
        return s1;
    }

    static String getContentTypeMime(String s)
    {
        String s1 = null;
        if (s != null)
        {
            int i = s.indexOf(";");
            if (i >= 0)
            {
                s = s.substring(0, i);
            }
            s1 = s.trim();
        }
        return s1;
    }

    private static String getXmlProlog(InputStream inputstream, String s)
    {
        String s1 = null;
        if (s != null)
        {
            byte abyte0[] = new byte[4096];
            inputstream.mark(4096);
            int i = inputstream.read(abyte0, 0, 4096);
            int j = -1;
            int k = i;
            int l = 4096;
            int i1 = 0;
            String s2 = null;
            for (; k != -1 && j == -1 && i1 < 4096; j = s2.indexOf('>'))
            {
                i1 += k;
                l -= k;
                k = inputstream.read(abyte0, i1, l);
                s2 = new String(abyte0, 0, i1, s);
            }

            if (j == -1)
            {
                if (k == -1)
                {
                    throw new IOException("Unexpected end of XML stream");
                } else
                {
                    throw new IOException((new StringBuilder()).append("XML prolog or ROOT element not found on first ").append(i1).append(" bytes").toString());
                }
            }
            s1 = null;
            if (i1 > 0)
            {
                inputstream.reset();
                BufferedReader bufferedreader = new BufferedReader(new StringReader(s2.substring(0, j + 1)));
                StringBuffer stringbuffer = new StringBuffer();
                for (String s3 = bufferedreader.readLine(); s3 != null; s3 = bufferedreader.readLine())
                {
                    stringbuffer.append(s3);
                }

                Matcher matcher = ENCODING_PATTERN.matcher(stringbuffer);
                boolean flag = matcher.find();
                s1 = null;
                if (flag)
                {
                    String s4 = matcher.group(1).toUpperCase();
                    s1 = s4.substring(1, -1 + s4.length());
                }
            }
        }
        return s1;
    }

    static boolean isAppXml(String s)
    {
        return s != null && (s.equals("application/xml") || s.equals("application/xml-dtd") || s.equals("application/xml-external-parsed-entity") || s.startsWith("application/") && s.endsWith("+xml"));
    }

    static boolean isTextXml(String s)
    {
        return s != null && (s.equals("text/xml") || s.equals("text/xml-external-parsed-entity") || s.startsWith("text/") && s.endsWith("+xml"));
    }

    String calculateHttpEncoding(String s, String s1, String s2, String s3, boolean flag)
    {
        if (!flag || s3 == null) goto _L2; else goto _L1
_L1:
        String s5 = s3;
_L4:
        return s5;
_L2:
        String s4;
        s4 = getContentTypeMime(s);
        s5 = getContentTypeEncoding(s);
        boolean flag1 = isAppXml(s4);
        boolean flag2 = isTextXml(s4);
        if (!flag1 && !flag2)
        {
            throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME", new Object[] {
                s4, s5, s1, s2, s3
            }), s4, s5, s1, s2, s3);
        }
        if (s5 == null)
        {
            if (flag1)
            {
                return calculateRawEncoding(s1, s2, s3);
            }
            String s6;
            if (defaultEncoding == null)
            {
                s6 = "US-ASCII";
            } else
            {
                s6 = defaultEncoding;
            }
            return s6;
        }
        if (!s5.equals("UTF-16BE") && !s5.equals("UTF-16LE"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (s1 != null)
        {
            throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL", new Object[] {
                s4, s5, s1, s2, s3
            }), s4, s5, s1, s2, s3);
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (s5.equals("UTF-16"))
        {
            if (s1 != null && s1.startsWith("UTF-16"))
            {
                return s1;
            } else
            {
                throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch", new Object[] {
                    s4, s5, s1, s2, s3
                }), s4, s5, s1, s2, s3);
            }
        }
        if (!s5.equals("UTF-32BE") && !s5.equals("UTF-32LE"))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (s1 == null) goto _L4; else goto _L5
_L5:
        throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL", new Object[] {
            s4, s5, s1, s2, s3
        }), s4, s5, s1, s2, s3);
        if (!s5.equals("UTF-32")) goto _L4; else goto _L6
_L6:
        if (s1 != null && s1.startsWith("UTF-32"))
        {
            return s1;
        } else
        {
            throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch", new Object[] {
                s4, s5, s1, s2, s3
            }), s4, s5, s1, s2, s3);
        }
    }

    String calculateRawEncoding(String s, String s1, String s2)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        if (s1 != null && s2 != null) goto _L4; else goto _L3
_L3:
        String s3;
        if (defaultEncoding == null)
        {
            s3 = "UTF-8";
        } else
        {
            s3 = defaultEncoding;
        }
        s = s3;
_L6:
        return s;
_L4:
        if (s2.equals("UTF-16") && (s1.equals("UTF-16BE") || s1.equals("UTF-16LE")))
        {
            return s1;
        } else
        {
            return s2;
        }
_L2:
        if (!s.equals("UTF-8"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (s1 != null && !s1.equals("UTF-8"))
        {
            throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", new Object[] {
                s, s1, s2
            }), s, s1, s2);
        }
        if (s2 != null && !s2.equals("UTF-8"))
        {
            throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", new Object[] {
                s, s1, s2
            }), s, s1, s2);
        }
        if (true) goto _L6; else goto _L5
_L5:
        if (!s.equals("UTF-16BE") && !s.equals("UTF-16LE"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (s1 != null && !s1.equals(s))
        {
            throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", new Object[] {
                s, s1, s2
            }), s, s1, s2);
        }
        if (s2 != null && !s2.equals("UTF-16") && !s2.equals(s))
        {
            throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", new Object[] {
                s, s1, s2
            }), s, s1, s2);
        }
        if (true) goto _L6; else goto _L7
_L7:
        if (s.equals("UTF-32BE") || s.equals("UTF-32LE"))
        {
            if (s1 != null && !s1.equals(s))
            {
                throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", new Object[] {
                    s, s1, s2
                }), s, s1, s2);
            }
            if (s2 != null && !s2.equals("UTF-32") && !s2.equals(s))
            {
                throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", new Object[] {
                    s, s1, s2
                }), s, s1, s2);
            }
        } else
        {
            throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM", new Object[] {
                s, s1, s2
            }), s, s1, s2);
        }
        if (true) goto _L6; else goto _L8
_L8:
    }

    public void close()
    {
        reader.close();
    }

    public String getDefaultEncoding()
    {
        return defaultEncoding;
    }

    public String getEncoding()
    {
        return encoding;
    }

    public int read(char ac[], int i, int j)
    {
        return reader.read(ac, i, j);
    }

    static 
    {
        ByteOrderMark abyteordermark[] = new ByteOrderMark[5];
        abyteordermark[0] = ByteOrderMark.UTF_8;
        abyteordermark[1] = ByteOrderMark.UTF_16BE;
        abyteordermark[2] = ByteOrderMark.UTF_16LE;
        abyteordermark[3] = ByteOrderMark.UTF_32BE;
        abyteordermark[4] = ByteOrderMark.UTF_32LE;
        BOMS = abyteordermark;
        ByteOrderMark abyteordermark1[] = new ByteOrderMark[6];
        abyteordermark1[0] = new ByteOrderMark("UTF-8", new int[] {
            60, 63, 120, 109
        });
        abyteordermark1[1] = new ByteOrderMark("UTF-16BE", new int[] {
            0, 60, 0, 63
        });
        abyteordermark1[2] = new ByteOrderMark("UTF-16LE", new int[] {
            60, 0, 63, 0
        });
        abyteordermark1[3] = new ByteOrderMark("UTF-32BE", new int[] {
            0, 0, 0, 60, 0, 0, 0, 63, 0, 0, 
            0, 120, 0, 0, 0, 109
        });
        abyteordermark1[4] = new ByteOrderMark("UTF-32LE", new int[] {
            60, 0, 0, 0, 63, 0, 0, 0, 120, 0, 
            0, 0, 109, 0, 0, 0
        });
        abyteordermark1[5] = new ByteOrderMark("CP1047", new int[] {
            76, 111, 167, 148
        });
        XML_GUESS_BYTES = abyteordermark1;
    }
}
