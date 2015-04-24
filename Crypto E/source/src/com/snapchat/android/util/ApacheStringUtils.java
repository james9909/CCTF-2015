// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.text.Normalizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ApacheStringUtils
{
    static final class AccentPatternLazyHolder
    {

        private static final Pattern a = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");

        static Pattern a()
        {
            return a;
        }


        private AccentPatternLazyHolder()
        {
        }
    }


    private ApacheStringUtils()
    {
    }

    public static String a(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return AccentPatternLazyHolder.a().matcher(Normalizer.normalize(s, java.text.Normalizer.Form.NFD)).replaceAll("");
        }
    }
}
