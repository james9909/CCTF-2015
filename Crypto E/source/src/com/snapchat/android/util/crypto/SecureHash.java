// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import android.util.Base64;
import com.snapchat.android.Timber;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.io.Charsets;

public class SecureHash
{

    public SecureHash()
    {
    }

    public static String a(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1 = b(s);
        return s1;
        Object obj;
        obj;
_L2:
        Timber.a("SecureHash", ((Throwable) (obj)));
        return null;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String b(String s)
    {
        MessageDigest messagedigest = MessageDigest.getInstance("SHA-256");
        messagedigest.reset();
        return Base64.encodeToString(messagedigest.digest(s.getBytes("UTF-8")), 0);
    }

    public static String c(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1 = d(s);
        return s1;
        Object obj;
        obj;
_L2:
        Timber.a("SecureHash", ((Throwable) (obj)));
        return null;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String d(String s)
    {
        MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
        messagedigest.reset();
        return Base64.encodeToString(messagedigest.digest(s.getBytes(Charsets.UTF_8)), 0);
    }
}
