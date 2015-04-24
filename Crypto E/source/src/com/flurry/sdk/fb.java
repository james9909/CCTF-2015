// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.sdk:
//            do, el

public final class fb
{

    private static final String a = com/flurry/sdk/fb.getSimpleName();

    public fb()
    {
    }

    public static long a(InputStream inputstream, OutputStream outputstream)
    {
        byte abyte0[] = new byte[1024];
        long l = 0L;
        do
        {
            int i = inputstream.read(abyte0);
            if (i < 0)
            {
                return l;
            }
            outputstream.write(abyte0, 0, i);
            l += i;
        } while (true);
    }

    public static String a(String s)
    {
        return a(s, 255);
    }

    public static String a(String s, int i)
    {
        if (s == null)
        {
            s = "";
        } else
        if (s.length() > i)
        {
            return s.substring(0, i);
        }
        return s;
    }

    public static String a(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder(2 * abyte0.length);
        char ac[] = {
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
            'a', 'b', 'c', 'd', 'e', 'f'
        };
        int i = abyte0.length;
        for (int j = 0; j < i; j++)
        {
            byte byte0 = abyte0[j];
            byte byte1 = (byte)(byte0 & 0xf);
            stringbuilder.append(ac[(byte)((byte0 & 0xf0) >> 4)]);
            stringbuilder.append(ac[byte1]);
        }

        return stringbuilder.toString();
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        Throwable throwable;
        throwable;
    }

    public static boolean a(long l)
    {
        boolean flag;
label0:
        {
            if (l != 0L)
            {
                int i = System.currentTimeMillis() != l;
                flag = false;
                if (i > 0)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public static boolean a(Intent intent)
    {
        return com.flurry.sdk.do.a().c().queryIntentActivities(intent, 0x10000).size() > 0;
    }

    public static String b(String s)
    {
        String s1;
        try
        {
            s1 = URLEncoder.encode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            el.a(5, a, (new StringBuilder()).append("Cannot encode '").append(s).append("'").toString());
            return "";
        }
        return s1;
    }

    public static boolean b(Intent intent)
    {
        boolean flag = false;
        if (intent != null)
        {
            ComponentName componentname = intent.resolveActivity(com.flurry.sdk.do.a().c());
            flag = com.flurry.sdk.do.a().b().getPackageName().equals(componentname.getPackageName());
        }
        return flag;
    }

    public static String c(String s)
    {
        String s1;
        try
        {
            s1 = URLDecoder.decode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            el.a(5, a, (new StringBuilder()).append("Cannot decode '").append(s).append("'").toString());
            return "";
        }
        return s1;
    }

    public static byte[] d(String s)
    {
        byte abyte0[];
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
            messagedigest.update(s.getBytes(), 0, s.length());
            abyte0 = messagedigest.digest();
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            el.a(6, a, (new StringBuilder()).append("Unsupported SHA1: ").append(nosuchalgorithmexception.getMessage()).toString());
            return null;
        }
        return abyte0;
    }

    public static String e(String s)
    {
        return s.replace("'", "\\'").replace("\\n", "").replace("\\r", "").replace("\\t", "");
    }

    public static Map f(String s)
    {
        HashMap hashmap = new HashMap();
        if (!TextUtils.isEmpty(s))
        {
            String as[] = s.split("&");
            int i = as.length;
            for (int j = 0; j < i; j++)
            {
                String as1[] = as[j].split("=");
                if (!as1[0].equals("event"))
                {
                    hashmap.put(c(as1[0]), c(as1[1]));
                }
            }

        }
        return hashmap;
    }

    public static long g(String s)
    {
        long l;
        if (s == null)
        {
            l = 0L;
        } else
        {
            int i = s.length();
            l = 0x3ffffffffffe5L;
            int j = 0;
            while (j < i) 
            {
                long l1 = l * 31L + (long)s.charAt(j);
                j++;
                l = l1;
            }
        }
        return l;
    }

}
