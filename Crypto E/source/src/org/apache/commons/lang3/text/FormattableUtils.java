// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text;

import java.util.Formattable;
import java.util.Formatter;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.Validate;

public class FormattableUtils
{

    private static final String SIMPLEST_FORMAT = "%s";

    public FormattableUtils()
    {
    }

    public static Formatter append(CharSequence charsequence, Formatter formatter, int i, int j, int k)
    {
        return append(charsequence, formatter, i, j, k, ' ', null);
    }

    public static Formatter append(CharSequence charsequence, Formatter formatter, int i, int j, int k, char c)
    {
        return append(charsequence, formatter, i, j, k, c, null);
    }

    public static Formatter append(CharSequence charsequence, Formatter formatter, int i, int j, int k, char c, CharSequence charsequence1)
    {
        int l = 1;
        boolean flag;
        Object aobj[];
        StringBuilder stringbuilder;
        int i1;
        if (charsequence1 == null || k < 0 || charsequence1.length() <= k)
        {
            flag = l;
        } else
        {
            flag = false;
        }
        aobj = new Object[2];
        aobj[0] = charsequence1;
        aobj[l] = Integer.valueOf(k);
        Validate.isTrue(flag, "Specified ellipsis '%1$s' exceeds precision of %2$s", aobj);
        stringbuilder = new StringBuilder(charsequence);
        if (k >= 0 && k < charsequence.length())
        {
            CharSequence charsequence2 = (CharSequence)ObjectUtils.defaultIfNull(charsequence1, "");
            stringbuilder.replace(k - charsequence2.length(), charsequence.length(), charsequence2.toString());
        }
        if ((i & 1) != l)
        {
            l = 0;
        }
        i1 = stringbuilder.length();
        while (i1 < j) 
        {
            int j1;
            if (l != 0)
            {
                j1 = i1;
            } else
            {
                j1 = 0;
            }
            stringbuilder.insert(j1, c);
            i1++;
        }
        formatter.format(stringbuilder.toString(), new Object[0]);
        return formatter;
    }

    public static Formatter append(CharSequence charsequence, Formatter formatter, int i, int j, int k, CharSequence charsequence1)
    {
        return append(charsequence, formatter, i, j, k, ' ', charsequence1);
    }

    public static String toString(Formattable formattable)
    {
        return String.format("%s", new Object[] {
            formattable
        });
    }
}
