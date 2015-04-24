// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

public final class NumberFormatUtils
{

    private static final NumberFormat a = new DecimalFormat("###,###,###");

    private NumberFormatUtils()
    {
    }

    public static String a(double d, Locale locale, int i)
    {
        NumberFormat numberformat = NumberFormat.getCurrencyInstance(locale);
        numberformat.setMinimumFractionDigits(i);
        numberformat.setGroupingUsed(true);
        return numberformat.format(d);
    }

    public static String a(int i)
    {
        String s;
        if (i >= 0)
        {
            s = "";
        } else
        {
            s = "-";
            i *= -1;
        }
        if (i < 1000)
        {
            return (new StringBuilder()).append(s).append(i).toString();
        }
        int j = (int)(Math.log(i) / Math.log(1000D));
        float f = (float)((double)i / Math.pow(1000D, j));
        if (f < 100F)
        {
            Object aobj1[] = new Object[3];
            aobj1[0] = s;
            aobj1[1] = Float.valueOf(f);
            aobj1[2] = Character.valueOf("kMB".charAt(j - 1));
            return String.format("%s%.1f%c", aobj1);
        } else
        {
            Object aobj[] = new Object[3];
            aobj[0] = s;
            aobj[1] = Integer.valueOf((int)f);
            aobj[2] = Character.valueOf("kMB".charAt(j - 1));
            return String.format("%s%d%c", aobj);
        }
    }

    public static String a(long l)
    {
        return a(l, 10D);
    }

    private static String a(long l, double d)
    {
        double d1 = (double)l / 1000D;
        double d2 = Math.exp(Math.floor(d * Math.log(d1)) / d);
        double d3 = Math.exp(Math.ceil(d * Math.log(d1)) / d);
        Locale locale = Locale.US;
        Object aobj[] = new Object[2];
        aobj[0] = Double.valueOf(d2);
        aobj[1] = Double.valueOf(d3);
        return String.format(locale, "%4.3f-%4.3f s", aobj);
    }

    public static String a(long l, int i, int j)
    {
        double d = (double)l / 1000D;
        double d1 = (double)i * (double)j;
        if (d > d1)
        {
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf((int)d1);
            return String.format("%d+ s", aobj2);
        }
        if (d < (double)i)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(i);
            return String.format("0-%d s", aobj1);
        } else
        {
            int k = 1 + (int)(d / (double)i);
            int i1 = k - 1;
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i1 * i);
            aobj[1] = Integer.valueOf(k * i);
            return String.format("%d-%d s", aobj);
        }
    }

    public static String b(int i)
    {
        return a.format(i);
    }

}
