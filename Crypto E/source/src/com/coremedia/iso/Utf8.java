// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import java.io.UnsupportedEncodingException;

public final class Utf8
{

    public Utf8()
    {
    }

    public static String a(byte abyte0[])
    {
        if (abyte0 != null)
        {
            String s;
            try
            {
                s = new String(abyte0, "UTF-8");
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                throw new Error(unsupportedencodingexception);
            }
            return s;
        } else
        {
            return null;
        }
    }

    public static byte[] a(String s)
    {
        if (s != null)
        {
            byte abyte0[];
            try
            {
                abyte0 = s.getBytes("UTF-8");
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                throw new Error(unsupportedencodingexception);
            }
            return abyte0;
        } else
        {
            return null;
        }
    }

    public static int b(String s)
    {
        if (s != null)
        {
            int i;
            try
            {
                i = s.getBytes("UTF-8").length;
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                throw new RuntimeException();
            }
            return i;
        } else
        {
            return 0;
        }
    }
}
