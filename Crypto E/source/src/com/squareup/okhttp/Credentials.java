// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import java.io.UnsupportedEncodingException;
import okio.ByteString;

public final class Credentials
{

    private Credentials()
    {
    }

    public static String a(String s, String s1)
    {
        String s3;
        try
        {
            String s2 = ByteString.a((new StringBuilder()).append(s).append(":").append(s1).toString().getBytes("ISO-8859-1")).b();
            s3 = (new StringBuilder()).append("Basic ").append(s2).toString();
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new AssertionError();
        }
        return s3;
    }
}
