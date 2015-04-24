// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.os.Bundle;
import com.snapchat.android.Timber;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class HttpUtils
{

    public HttpUtils()
    {
    }

    public static String a(String s, Bundle bundle)
    {
        StringBuilder stringbuilder;
        Iterator iterator;
        if (bundle == null || s == null || bundle.isEmpty())
        {
            return s;
        }
        stringbuilder = new StringBuilder(s.length() + 32 * bundle.size());
        iterator = bundle.keySet().iterator();
_L8:
        String s1;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = (String)iterator.next();
        if (stringbuilder.length() != 0) goto _L2; else goto _L1
_L1:
        int i;
        stringbuilder.append(s);
        i = s.indexOf('?');
        if (i != -1) goto _L4; else goto _L3
_L3:
        stringbuilder.append('?');
_L6:
        if (s1 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        try
        {
            throw new NullPointerException(String.format("Found null key in %s", new Object[] {
                bundle
            }));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Timber.e("HttpUtils", "UTF-8 is not supported.", new Object[0]);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (i != -1 + s.length())
        {
            stringbuilder.append('&');
        }
        continue; /* Loop/switch isn't completed */
_L2:
        stringbuilder.append('&');
        if (true) goto _L6; else goto _L5
_L5:
        if (bundle.get(s1) == null)
        {
            throw new NullPointerException(String.format("Found null value for key %s", new Object[] {
                s1
            }));
        }
        stringbuilder.append(s1).append("=").append(URLEncoder.encode(bundle.get(s1).toString(), "UTF-8"));
        if (true) goto _L8; else goto _L7
_L7:
        return stringbuilder.toString();
    }

    public static HttpResponse a(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            return (new DefaultHttpClient()).execute(new HttpGet(s));
        }
    }

    public static boolean a(int i)
    {
        return i >= 200 && i <= 299;
    }

    public static void b(String s)
    {
        try
        {
            a(s);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }
}
