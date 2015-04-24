// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class MediaType
{

    private static final Pattern a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");
    private final String c;
    private final String d;
    private final String e;
    private final String f;

    private MediaType(String s, String s1, String s2, String s3)
    {
        c = s;
        d = s1;
        e = s2;
        f = s3;
    }

    public static MediaType a(String s)
    {
        Matcher matcher = a.matcher(s);
        if (matcher.lookingAt()) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        String s1;
        String s2;
        String s3;
        s1 = matcher.group(1).toLowerCase(Locale.US);
        s2 = matcher.group(2).toLowerCase(Locale.US);
        Matcher matcher1 = b.matcher(s);
        int i = matcher.end();
        s3 = null;
label0:
        do
        {
label1:
            {
                if (i >= s.length())
                {
                    break label1;
                }
                matcher1.region(i, s.length());
                if (!matcher1.lookingAt())
                {
                    break label0;
                }
                String s4 = matcher1.group(1);
                if (s4 != null && s4.equalsIgnoreCase("charset"))
                {
                    String s5;
                    if (matcher1.group(2) != null)
                    {
                        s5 = matcher1.group(2);
                    } else
                    {
                        s5 = matcher1.group(3);
                    }
                    if (s3 != null && !s5.equalsIgnoreCase(s3))
                    {
                        throw new IllegalArgumentException((new StringBuilder()).append("Multiple different charsets: ").append(s).toString());
                    }
                    s3 = s5;
                }
                i = matcher1.end();
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return new MediaType(s, s1, s2, s3);
    }

    public String a()
    {
        return d;
    }

    public Charset b()
    {
        if (f != null)
        {
            return Charset.forName(f);
        } else
        {
            return null;
        }
    }

    public boolean equals(Object obj)
    {
        return (obj instanceof MediaType) && ((MediaType)obj).c.equals(c);
    }

    public int hashCode()
    {
        return c.hashCode();
    }

    public String toString()
    {
        return c;
    }

}
