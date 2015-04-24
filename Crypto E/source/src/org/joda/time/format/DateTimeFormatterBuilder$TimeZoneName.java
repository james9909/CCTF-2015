// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.format:
//            DateTimeParser, DateTimePrinter, DateTimeParserBucket, DateTimeFormatterBuilder

static class a
    implements DateTimeParser, DateTimePrinter
{

    private final Map a;
    private final int b;

    private String a(long l, DateTimeZone datetimezone, Locale locale)
    {
        if (datetimezone == null)
        {
            return "";
        }
        switch (b)
        {
        default:
            return "";

        case 0: // '\0'
            return datetimezone.b(l, locale);

        case 1: // '\001'
            return datetimezone.a(l, locale);
        }
    }

    public int a()
    {
        return b != 1 ? 20 : 4;
    }

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        Map map = a;
        Map map1;
        String s1;
        String s2;
        Iterator iterator;
        if (map != null)
        {
            map1 = map;
        } else
        {
            map1 = DateTimeUtils.b();
        }
        s1 = s.substring(i);
        s2 = null;
        iterator = map1.keySet().iterator();
        while (iterator.hasNext()) 
        {
            String s3 = (String)iterator.next();
            if (!s1.startsWith(s3) || s2 != null && s3.length() <= s2.length())
            {
                s3 = s2;
            }
            s2 = s3;
        }
        if (s2 != null)
        {
            datetimeparserbucket.a((DateTimeZone)map1.get(s2));
            return i + s2.length();
        } else
        {
            return ~i;
        }
    }

    public void a(StringBuffer stringbuffer, long l, Chronology chronology, int i, DateTimeZone datetimezone, Locale locale)
    {
        stringbuffer.append(a(l - (long)i, datetimezone, locale));
    }

    public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
    {
    }

    public int b()
    {
        return b != 1 ? 20 : 4;
    }

    (int i, Map map)
    {
        b = i;
        a = map;
    }
}
