// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.util;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;

public class StringUtil
{

    public StringUtil()
    {
    }

    public static boolean isEmpty(String s)
    {
        return s == null || s.trim().isEmpty();
    }

    public static String join(List list, String s)
    {
        if (list == null || list.size() == 0)
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < list.size(); i++)
        {
            stringbuilder.append((String)list.get(i));
            if (i < -1 + list.size())
            {
                stringbuilder.append(s);
            }
        }

        return stringbuilder.toString();
    }

    public static String join(String as[], String s)
    {
        if (as == null || as.length == 0)
        {
            return null;
        } else
        {
            return join(Arrays.asList(as), s);
        }
    }

    public static CharSequence replaceAll(CharSequence charsequence, String as[], CharSequence acharsequence[])
    {
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(charsequence);
        do
        {
            int i = as.length;
            int j = 0;
            boolean flag = false;
            for (; j < i; j++)
            {
                String s = as[j];
                int j1 = TextUtils.indexOf(spannablestringbuilder, s);
                if (j1 >= 0)
                {
                    flag = true;
                    spannablestringbuilder.setSpan(s, j1, j1 + s.length(), 33);
                }
            }

            if (!flag)
            {
                return spannablestringbuilder;
            }
            int k = 0;
            while (k < as.length) 
            {
                int l = spannablestringbuilder.getSpanStart(as[k]);
                int i1 = spannablestringbuilder.getSpanEnd(as[k]);
                if (l >= 0)
                {
                    spannablestringbuilder.replace(l, i1, acharsequence[k]);
                }
                k++;
            }
        } while (true);
    }
}
