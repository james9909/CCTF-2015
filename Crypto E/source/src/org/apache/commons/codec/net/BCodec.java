// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.net;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;
import org.apache.commons.codec.binary.Base64;

// Referenced classes of package org.apache.commons.codec.net:
//            RFC1522Codec

public class BCodec extends RFC1522Codec
    implements StringDecoder, StringEncoder
{

    private final String charset;

    public BCodec()
    {
        this("UTF-8");
    }

    public BCodec(String s)
    {
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
            throw new DecoderException((new StringBuilder()).append("Objects of type ").append(obj.getClass().getName()).append(" cannot be decoded using BCodec").toString());
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
        if (abyte0 == null)
        {
            return null;
        } else
        {
            return Base64.decodeBase64(abyte0);
        }
    }

    protected byte[] doEncoding(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        } else
        {
            return Base64.encodeBase64(abyte0);
        }
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
            throw new EncoderException((new StringBuilder()).append("Objects of type ").append(obj.getClass().getName()).append(" cannot be encoded using BCodec").toString());
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
        return "B";
    }
}
