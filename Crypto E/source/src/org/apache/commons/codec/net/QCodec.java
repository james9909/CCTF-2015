// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.net;

import java.io.UnsupportedEncodingException;
import java.util.BitSet;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;

// Referenced classes of package org.apache.commons.codec.net:
//            RFC1522Codec, QuotedPrintableCodec

public class QCodec extends RFC1522Codec
    implements StringDecoder, StringEncoder
{

    private static final byte BLANK = 32;
    private static final BitSet PRINTABLE_CHARS;
    private static final byte UNDERSCORE = 95;
    private final String charset;
    private boolean encodeBlanks;

    public QCodec()
    {
        this("UTF-8");
    }

    public QCodec(String s)
    {
        encodeBlanks = false;
        charset = s;
    }

    public Object decode(Object obj)
    {
        if (obj == null)
        {
            return null;
        }
        if (obj instanceof String)
        {
            return decode((String)obj);
        } else
        {
            throw new DecoderException((new StringBuilder()).append("Objects of type ").append(obj.getClass().getName()).append(" cannot be decoded using Q codec").toString());
        }
    }

    public String decode(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1;
        try
        {
            s1 = decodeText(s);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new DecoderException(unsupportedencodingexception.getMessage(), unsupportedencodingexception);
        }
        return s1;
    }

    protected byte[] doDecoding(byte abyte0[])
    {
        int i = 0;
        if (abyte0 == null)
        {
            return null;
        }
        int j = abyte0.length;
        int k = 0;
        do
        {
            if (k >= j)
            {
                break MISSING_BLOCK_LABEL_99;
            }
            if (abyte0[k] == 95)
            {
                for (boolean flag = true; flag; flag = false)
                {
                    byte abyte1[] = new byte[abyte0.length];
                    while (i < abyte0.length) 
                    {
                        byte byte0 = abyte0[i];
                        if (byte0 != 95)
                        {
                            abyte1[i] = byte0;
                        } else
                        {
                            abyte1[i] = 32;
                        }
                        i++;
                    }
                    return QuotedPrintableCodec.decodeQuotedPrintable(abyte1);
                }

                return QuotedPrintableCodec.decodeQuotedPrintable(abyte0);
            }
            k++;
        } while (true);
    }

    protected byte[] doEncoding(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        }
        byte abyte1[] = QuotedPrintableCodec.encodeQuotedPrintable(PRINTABLE_CHARS, abyte0);
        if (encodeBlanks)
        {
            for (int i = 0; i < abyte1.length; i++)
            {
                if (abyte1[i] == 32)
                {
                    abyte1[i] = 95;
                }
            }

        }
        return abyte1;
    }

    public Object encode(Object obj)
    {
        if (obj == null)
        {
            return null;
        }
        if (obj instanceof String)
        {
            return encode((String)obj);
        } else
        {
            throw new EncoderException((new StringBuilder()).append("Objects of type ").append(obj.getClass().getName()).append(" cannot be encoded using Q codec").toString());
        }
    }

    public String encode(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return encode(s, getDefaultCharset());
        }
    }

    public String encode(String s, String s1)
    {
        if (s == null)
        {
            return null;
        }
        String s2;
        try
        {
            s2 = encodeText(s, s1);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new EncoderException(unsupportedencodingexception.getMessage(), unsupportedencodingexception);
        }
        return s2;
    }

    public String getDefaultCharset()
    {
        return charset;
    }

    protected String getEncoding()
    {
        return "Q";
    }

    public boolean isEncodeBlanks()
    {
        return encodeBlanks;
    }

    public void setEncodeBlanks(boolean flag)
    {
        encodeBlanks = flag;
    }

    static 
    {
        PRINTABLE_CHARS = new BitSet(256);
        PRINTABLE_CHARS.set(32);
        PRINTABLE_CHARS.set(33);
        PRINTABLE_CHARS.set(34);
        PRINTABLE_CHARS.set(35);
        PRINTABLE_CHARS.set(36);
        PRINTABLE_CHARS.set(37);
        PRINTABLE_CHARS.set(38);
        PRINTABLE_CHARS.set(39);
        PRINTABLE_CHARS.set(40);
        PRINTABLE_CHARS.set(41);
        PRINTABLE_CHARS.set(42);
        PRINTABLE_CHARS.set(43);
        PRINTABLE_CHARS.set(44);
        PRINTABLE_CHARS.set(45);
        PRINTABLE_CHARS.set(46);
        PRINTABLE_CHARS.set(47);
        for (int i = 48; i <= 57; i++)
        {
            PRINTABLE_CHARS.set(i);
        }

        PRINTABLE_CHARS.set(58);
        PRINTABLE_CHARS.set(59);
        PRINTABLE_CHARS.set(60);
        PRINTABLE_CHARS.set(62);
        PRINTABLE_CHARS.set(64);
        for (int j = 65; j <= 90; j++)
        {
            PRINTABLE_CHARS.set(j);
        }

        PRINTABLE_CHARS.set(91);
        PRINTABLE_CHARS.set(92);
        PRINTABLE_CHARS.set(93);
        PRINTABLE_CHARS.set(94);
        PRINTABLE_CHARS.set(96);
        for (int k = 97; k <= 122; k++)
        {
            PRINTABLE_CHARS.set(k);
        }

        PRINTABLE_CHARS.set(123);
        PRINTABLE_CHARS.set(124);
        PRINTABLE_CHARS.set(125);
        PRINTABLE_CHARS.set(126);
    }
}
