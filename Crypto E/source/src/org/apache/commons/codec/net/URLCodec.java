// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.net;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.BitSet;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;
import org.apache.commons.codec.binary.StringUtils;

// Referenced classes of package org.apache.commons.codec.net:
//            Utils

public class URLCodec
    implements BinaryDecoder, BinaryEncoder, StringDecoder, StringEncoder
{

    protected static final byte ESCAPE_CHAR = 37;
    static final int RADIX = 16;
    protected static final BitSet WWW_FORM_URL;
    protected String charset;

    public URLCodec()
    {
        this("UTF-8");
    }

    public URLCodec(String s)
    {
        charset = s;
    }

    public static final byte[] decodeUrl(byte abyte0[])
    {
        ByteArrayOutputStream bytearrayoutputstream;
        int i;
        if (abyte0 == null)
        {
            return null;
        }
        bytearrayoutputstream = new ByteArrayOutputStream();
        i = 0;
_L2:
        byte byte0;
        if (i >= abyte0.length)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        byte0 = abyte0[i];
        if (byte0 != 43)
        {
            break; /* Loop/switch isn't completed */
        }
        bytearrayoutputstream.write(32);
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (byte0 != 37)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        int j = i + 1;
        int k;
        try
        {
            k = Utils.digit16(abyte0[j]);
        }
        catch (ArrayIndexOutOfBoundsException arrayindexoutofboundsexception)
        {
            throw new DecoderException("Invalid URL encoding: ", arrayindexoutofboundsexception);
        }
        i = j + 1;
        bytearrayoutputstream.write((char)(Utils.digit16(abyte0[i]) + (k << 4)));
          goto _L3
        bytearrayoutputstream.write(byte0);
          goto _L3
        return bytearrayoutputstream.toByteArray();
    }

    public static final byte[] encodeUrl(BitSet bitset, byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        }
        if (bitset == null)
        {
            bitset = WWW_FORM_URL;
        }
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        int i = abyte0.length;
        int j = 0;
        while (j < i) 
        {
            int k = abyte0[j];
            if (k < 0)
            {
                k += 256;
            }
            if (bitset.get(k))
            {
                if (k == 32)
                {
                    k = 43;
                }
                bytearrayoutputstream.write(k);
            } else
            {
                bytearrayoutputstream.write(37);
                char c = Character.toUpperCase(Character.forDigit(0xf & k >> 4, 16));
                char c1 = Character.toUpperCase(Character.forDigit(k & 0xf, 16));
                bytearrayoutputstream.write(c);
                bytearrayoutputstream.write(c1);
            }
            j++;
        }
        return bytearrayoutputstream.toByteArray();
    }

    public Object decode(Object obj)
    {
        if (obj == null)
        {
            return null;
        }
        if (obj instanceof byte[])
        {
            return decode((byte[])(byte[])obj);
        }
        if (obj instanceof String)
        {
            return decode((String)obj);
        } else
        {
            throw new DecoderException((new StringBuilder()).append("Objects of type ").append(obj.getClass().getName()).append(" cannot be URL decoded").toString());
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
            s1 = decode(s, getDefaultCharset());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new DecoderException(unsupportedencodingexception.getMessage(), unsupportedencodingexception);
        }
        return s1;
    }

    public String decode(String s, String s1)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return new String(decode(StringUtils.getBytesUsAscii(s)), s1);
        }
    }

    public byte[] decode(byte abyte0[])
    {
        return decodeUrl(abyte0);
    }

    public Object encode(Object obj)
    {
        if (obj == null)
        {
            return null;
        }
        if (obj instanceof byte[])
        {
            return encode((byte[])(byte[])obj);
        }
        if (obj instanceof String)
        {
            return encode((String)obj);
        } else
        {
            throw new EncoderException((new StringBuilder()).append("Objects of type ").append(obj.getClass().getName()).append(" cannot be URL encoded").toString());
        }
    }

    public String encode(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1;
        try
        {
            s1 = encode(s, getDefaultCharset());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new EncoderException(unsupportedencodingexception.getMessage(), unsupportedencodingexception);
        }
        return s1;
    }

    public String encode(String s, String s1)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return StringUtils.newStringUsAscii(encode(s.getBytes(s1)));
        }
    }

    public byte[] encode(byte abyte0[])
    {
        return encodeUrl(WWW_FORM_URL, abyte0);
    }

    public String getDefaultCharset()
    {
        return charset;
    }

    public String getEncoding()
    {
        return charset;
    }

    static 
    {
        WWW_FORM_URL = new BitSet(256);
        for (int i = 97; i <= 122; i++)
        {
            WWW_FORM_URL.set(i);
        }

        for (int j = 65; j <= 90; j++)
        {
            WWW_FORM_URL.set(j);
        }

        for (int k = 48; k <= 57; k++)
        {
            WWW_FORM_URL.set(k);
        }

        WWW_FORM_URL.set(45);
        WWW_FORM_URL.set(95);
        WWW_FORM_URL.set(46);
        WWW_FORM_URL.set(42);
        WWW_FORM_URL.set(32);
    }
}
