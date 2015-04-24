// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.binary;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;

// Referenced classes of package org.apache.commons.codec.binary:
//            StringUtils

public class Hex
    implements BinaryDecoder, BinaryEncoder
{

    public static final String DEFAULT_CHARSET_NAME = "UTF-8";
    private static final char DIGITS_LOWER[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };
    private static final char DIGITS_UPPER[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'A', 'B', 'C', 'D', 'E', 'F'
    };
    private final String charsetName;

    public Hex()
    {
        charsetName = "UTF-8";
    }

    public Hex(String s)
    {
        charsetName = s;
    }

    public static byte[] decodeHex(char ac[])
    {
        int i = 0;
        int j = ac.length;
        if ((j & 1) != 0)
        {
            throw new DecoderException("Odd number of characters.");
        }
        byte abyte0[] = new byte[j >> 1];
        for (int k = 0; i < j; k++)
        {
            int l = toDigit(ac[i], i) << 4;
            int i1 = i + 1;
            int j1 = l | toDigit(ac[i1], i1);
            i = i1 + 1;
            abyte0[k] = (byte)(j1 & 0xff);
        }

        return abyte0;
    }

    public static char[] encodeHex(byte abyte0[])
    {
        return encodeHex(abyte0, true);
    }

    public static char[] encodeHex(byte abyte0[], boolean flag)
    {
        char ac[];
        if (flag)
        {
            ac = DIGITS_LOWER;
        } else
        {
            ac = DIGITS_UPPER;
        }
        return encodeHex(abyte0, ac);
    }

    protected static char[] encodeHex(byte abyte0[], char ac[])
    {
        int i = 0;
        int j = abyte0.length;
        char ac1[] = new char[j << 1];
        for (int k = 0; k < j; k++)
        {
            int l = i + 1;
            ac1[i] = ac[(0xf0 & abyte0[k]) >>> 4];
            i = l + 1;
            ac1[l] = ac[0xf & abyte0[k]];
        }

        return ac1;
    }

    public static String encodeHexString(byte abyte0[])
    {
        return new String(encodeHex(abyte0));
    }

    protected static int toDigit(char c, int i)
    {
        int j = Character.digit(c, 16);
        if (j == -1)
        {
            throw new DecoderException((new StringBuilder()).append("Illegal hexadecimal character ").append(c).append(" at index ").append(i).toString());
        } else
        {
            return j;
        }
    }

    public Object decode(Object obj)
    {
        try
        {
            char ac[];
            if (obj instanceof String)
            {
                ac = ((String)obj).toCharArray();
            } else
            {
                ac = (char[])(char[])obj;
            }
            return decodeHex(ac);
        }
        catch (ClassCastException classcastexception)
        {
            throw new DecoderException(classcastexception.getMessage(), classcastexception);
        }
    }

    public byte[] decode(byte abyte0[])
    {
        byte abyte1[];
        try
        {
            abyte1 = decodeHex((new String(abyte0, getCharsetName())).toCharArray());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new DecoderException(unsupportedencodingexception.getMessage(), unsupportedencodingexception);
        }
        return abyte1;
    }

    public Object encode(Object obj)
    {
        try
        {
            byte abyte0[];
            if (obj instanceof String)
            {
                abyte0 = ((String)obj).getBytes(getCharsetName());
            } else
            {
                abyte0 = (byte[])(byte[])obj;
            }
            return encodeHex(abyte0);
        }
        catch (ClassCastException classcastexception)
        {
            throw new EncoderException(classcastexception.getMessage(), classcastexception);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new EncoderException(unsupportedencodingexception.getMessage(), unsupportedencodingexception);
        }
    }

    public byte[] encode(byte abyte0[])
    {
        return StringUtils.getBytesUnchecked(encodeHexString(abyte0), getCharsetName());
    }

    public String getCharsetName()
    {
        return charsetName;
    }

    public String toString()
    {
        return (new StringBuilder()).append(super.toString()).append("[charsetName=").append(charsetName).append("]").toString();
    }

}
