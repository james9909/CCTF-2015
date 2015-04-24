// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import com.snapchat.android.Timber;
import com.snapchat.android.model.UserPrefs;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class RequestAuthorization
{

    private static final String PATTERN = "0001110111101110001111010101111011010001001110011000110001000110";
    private static final String SECRET = "iEk21fuwZApXlz93750dmW22pw389dPwOk";
    private static final String STATIC_TOKEN = "m198sOkJEn37DjqZ32lpRu76xmw288xSQ9";
    private static final String TAG = "RequestAuthorization";

    private RequestAuthorization()
    {
    }

    public static String a(String s)
    {
        String s1 = a(UserPrefs.u(), s);
        return s1;
        Object obj;
        obj;
_L2:
        Timber.a("RequestAuthorization", ((Throwable) (obj)));
        return null;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String a(String s, String s1)
    {
        String s2 = (new StringBuilder()).append("iEk21fuwZApXlz93750dmW22pw389dPwOk").append(s).toString();
        String s3 = (new StringBuilder()).append(s1).append("iEk21fuwZApXlz93750dmW22pw389dPwOk").toString();
        MessageDigest messagedigest = MessageDigest.getInstance("SHA-256");
        messagedigest.update(s2.getBytes("UTF-8"));
        String s4 = new String(a(messagedigest.digest()));
        messagedigest.update(s3.getBytes("UTF-8"));
        String s5 = new String(a(messagedigest.digest()));
        String s6 = "";
        int i = 0;
        while (i < "0001110111101110001111010101111011010001001110011000110001000110".length()) 
        {
            char c = "0001110111101110001111010101111011010001001110011000110001000110".charAt(i);
            StringBuilder stringbuilder = (new StringBuilder()).append(s6);
            char c1;
            if (c == '0')
            {
                c1 = s4.charAt(i);
            } else
            {
                c1 = s5.charAt(i);
            }
            s6 = stringbuilder.append(c1).toString();
            i++;
        }
        return s6;
    }

    private static String a(byte abyte0[])
    {
        Object aobj[] = new Object[1];
        aobj[0] = new BigInteger(1, abyte0);
        return String.format("%064x", aobj);
    }

    public static String b(String s)
    {
        String s1 = a("m198sOkJEn37DjqZ32lpRu76xmw288xSQ9", s);
        return s1;
        Object obj;
        obj;
_L2:
        Timber.a("RequestAuthorization", ((Throwable) (obj)));
        return null;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
