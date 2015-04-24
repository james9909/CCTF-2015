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

    private final char a;

    public int a()
    {
        return 1;
    }

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        if (i >= s.length())
        {
            return ~i;
        }
        char c = s.charAt(i);
        char c1 = a;
        if (c != c1)
        {
            char c2 = Character.toUpperCase(c);
            char c3 = Character.toUpperCase(c1);
            if (c2 != c3 && Character.toLowerCase(c2) != Character.toLowerCase(c3))
            {
                return ~i;
            }
        }
        return i + 1;
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
        return 1;
    }

    (char c)
    {
        a = c;
    }
}
