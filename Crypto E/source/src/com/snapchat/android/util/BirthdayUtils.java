// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.Locale;

public class BirthdayUtils
{

    public BirthdayUtils()
    {
    }

    public static String a(GregorianCalendar gregoriancalendar)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd", new Locale("en"));
        simpledateformat.setCalendar(gregoriancalendar);
        return simpledateformat.format(gregoriancalendar.getTime());
    }

    public static int b(GregorianCalendar gregoriancalendar)
    {
        GregorianCalendar gregoriancalendar1 = new GregorianCalendar();
        int i = gregoriancalendar1.get(1);
        int j = gregoriancalendar1.get(2);
        int k = gregoriancalendar1.get(5);
        int l = i - gregoriancalendar.get(1);
        if (j < gregoriancalendar.get(2) || j == gregoriancalendar.get(2) && k < gregoriancalendar.get(5))
        {
            l--;
        }
        return l;
    }
}
