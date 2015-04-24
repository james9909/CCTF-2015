// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.util;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import org.apache.http.Consts;

// Referenced classes of package org.apache.http.util:
//            Args

public final class EncodingUtils
{

    private EncodingUtils()
    {
    }

    public static byte[] getAsciiBytes(String s)
    {
        Args.notNull(s, "Input");
        byte abyte0[];
        try
        {
            abyte0 = s.getBytes(Consts.ASCII.name());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new Error("ASCII not supported");
        }
        return abyte0;
    }

    public static String getAsciiString(byte abyte0[])
    {
        Args.notNull(abyte0, "Input");
        return getAsciiString(abyte0, 0, abyte0.length);
    }

    public static String getAsciiString(byte abyte0[], int i, int j)
    {
        Args.notNull(abyte0, "Input");
        String s;
        try
        {
            s = new String(abyte0, i, j, Consts.ASCII.name());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new Error("ASCII not supported");
        }
        return s;
    }

    public static byte[] getBytes(String s, String s1)
    {
        Args.notNull(s, "Input");
        Args.notEmpty(s1, "Charset");
        byte abyte0[];
        try
        {
            abyte0 = s.getBytes(s1);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return s.getBytes();
        }
        return abyte0;
    }

    public static String getString(byte abyte0[], int i, int j, String s)
    {
        Args.notNull(abyte0, "Input");
        Args.notEmpty(s, "Charset");
        String s1;
        try
        {
            s1 = new String(abyte0, i, j, s);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return new String(abyte0, i, j);
        }
        return s1;
    }

    public static String getString(byte abyte0[], String s)
    {
        Args.notNull(abyte0, "Input");
        return getString(abyte0, 0, abyte0.length, s);
    }
}
