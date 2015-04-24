// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.format:
//            DateTimeParser, DateTimePrinter, DateTimeFormatterBuilder, DateTimeParserBucket

static class a
    implements DateTimeParser, DateTimePrinter
{

    private final String a;

    public int a()
    {
        return a.length();
    }

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        if (s.regionMatches(true, i, a, 0, a.length()))
        {
            return i + a.length();
        } else
        {
            return ~i;
        }
    }

    public void a(StringBuffer stringbuffer, long l, Chronology chronology, int i, DateTimeZone datetimezone, Locale locale)
    {
        stringbuffer.append(a);
    }

    public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
    {
        stringbuffer.append(a);
    }

    public int b()
    {
        return a.length();
    }

    A(String s)
    {
        a = s;
    }
}
