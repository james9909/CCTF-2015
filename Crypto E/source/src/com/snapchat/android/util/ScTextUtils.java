// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.util.Locale;

// Referenced classes of package com.snapchat.android.util:
//            ApacheStringUtils

public abstract class ScTextUtils
{

    private ScTextUtils()
    {
    }

    protected static int a(String s)
    {
        int i;
label0:
        {
            if (!s.isEmpty())
            {
                s = s.substring(0, 1).toUpperCase(Locale.US);
            }
            if (s.compareTo("A") >= 0)
            {
                int j = s.compareTo("Z");
                i = 0;
                if (j <= 0)
                {
                    break label0;
                }
            }
            i = 1;
        }
        return i;
    }

    public static boolean a(String s, String s1)
    {
        if (s == s1)
        {
            return true;
        }
        if (s == null || s1 == null || s.length() != s1.length())
        {
            return false;
        } else
        {
            return s.equalsIgnoreCase(s1);
        }
    }

    public static boolean a(boolean flag, String s, String s1)
    {
        String s2 = ApacheStringUtils.a(s);
        String s3 = ApacheStringUtils.a(s1);
        return s2.regionMatches(flag, 0, s3, 0, s3.length());
    }

    public static int b(String s, String s1)
    {
        int i = a(s);
        if (i == a(s1))
        {
            return s.compareTo(s1);
        }
        return i != 0 ? 1 : -1;
    }

    public static boolean b(boolean flag, String s, String s1)
    {
        String s2 = ApacheStringUtils.a(s);
        String s3 = ApacheStringUtils.a(s1);
        if (flag)
        {
            s2 = s2.toLowerCase();
            s3 = s3.toLowerCase();
        }
        return s2.contains(s3);
    }
}
