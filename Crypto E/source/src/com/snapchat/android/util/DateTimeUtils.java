// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.text.format.DateUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.i18n.LocaleDateTimeFormat;
import com.snapchat.android.util.system.Clock;
import com.snapchat.android.util.system.ClockProvider;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.LocalDate;

public class DateTimeUtils
{

    private static DateFormat a = null;

    public DateTimeUtils()
    {
    }

    public static String a(long l)
    {
        DateTime datetime = (new LocalDate((new ClockProvider()).a().a())).d();
        DateTime datetime1 = (new LocalDate(l)).d();
        Days days = Days.a(datetime1, datetime);
        StringBuilder stringbuilder = new StringBuilder();
        if (days == Days.a)
        {
            stringbuilder.append(SnapchatApplication.e().getString(0x7f0c0064));
        } else
        if (days == Days.b)
        {
            stringbuilder.append(SnapchatApplication.e().getString(0x7f0c0065));
        } else
        if (days.a(Days.h))
        {
            stringbuilder.append(datetime1.c().a(Locale.getDefault()));
        } else
        if (datetime1.f() != datetime.f())
        {
            stringbuilder.append(LocaleDateTimeFormat.b(datetime1, Locale.getDefault()));
        } else
        {
            stringbuilder.append(LocaleDateTimeFormat.a(datetime1, Locale.getDefault()));
        }
        return stringbuilder.toString();
    }

    public static String a(Context context, long l)
    {
        DateFormat dateformat = a(context);
        dateformat.setTimeZone(TimeZone.getDefault());
        if (l == 0L)
        {
            l = System.currentTimeMillis();
        }
        return dateformat.format(new Date(l));
    }

    private static DateFormat a(Context context)
    {
        if (a == null)
        {
            a = android.text.format.DateFormat.getTimeFormat(context);
        }
        return a;
    }

    public static void a(Calendar calendar)
    {
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
    }

    public static boolean a(long l, long l1)
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.setTimeInMillis(l);
        int i = gregoriancalendar.get(6);
        int j = gregoriancalendar.get(1);
        gregoriancalendar.setTimeInMillis(l1);
        int k = gregoriancalendar.get(6);
        int i1 = gregoriancalendar.get(1);
        return i != k || j != i1;
    }

    public static String b(Context context, long l)
    {
        Long long1 = Long.valueOf((new Date()).getTime());
        String s = DateUtils.getRelativeTimeSpanString(l, long1.longValue(), 60000L).toString();
        long l1 = Math.abs(long1.longValue() - l);
        if (l1 < 60000L)
        {
            s = context.getString(0x7f0c0111);
        } else
        if (l1 > 0x5265c00L)
        {
            return a(l);
        }
        return s;
    }

}
