// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.joda.time.Chronology;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.format:
//            DateTimeParser, DateTimePrinter, DateTimeFormatter, DateTimeFormat, 
//            DateTimeParserBucket

static class 
    implements DateTimeParser, DateTimePrinter
{

    private static final Map a = new HashMap();
    private final int b;
    private final int c;
    private final int d;

    private DateTimeFormatter b(Locale locale)
    {
        String s;
        if (locale == null)
        {
            locale = Locale.getDefault();
        }
        s = (new StringBuilder()).append(Integer.toString(d + (b << 4) + (c << 8))).append(locale.toString()).toString();
        Map map = a;
        map;
        JVM INSTR monitorenter ;
        DateTimeFormatter datetimeformatter = (DateTimeFormatter)a.get(s);
        if (datetimeformatter != null)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        datetimeformatter = DateTimeFormat.a(a(locale));
        a.put(s, datetimeformatter);
        map;
        JVM INSTR monitorexit ;
        return datetimeformatter;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int a()
    {
        return 40;
    }

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        return b(datetimeparserbucket.b()).b().a(datetimeparserbucket, s, i);
    }

    String a(Locale locale)
    {
        int i;
        DateFormat dateformat;
        i = d;
        dateformat = null;
        i;
        JVM INSTR tableswitch 0 2: default 36
    //                   0 70
    //                   1 82
    //                   2 94;
           goto _L1 _L2 _L3 _L4
_L1:
        break; /* Loop/switch isn't completed */
_L4:
        break MISSING_BLOCK_LABEL_94;
_L5:
        if (!(dateformat instanceof SimpleDateFormat))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("No datetime pattern for locale: ").append(locale).toString());
        } else
        {
            return ((SimpleDateFormat)dateformat).toPattern();
        }
_L2:
        dateformat = DateFormat.getDateInstance(b, locale);
          goto _L5
_L3:
        dateformat = DateFormat.getTimeInstance(c, locale);
          goto _L5
        dateformat = DateFormat.getDateTimeInstance(b, c, locale);
          goto _L5
    }

    public void a(StringBuffer stringbuffer, long l, Chronology chronology, int i, DateTimeZone datetimezone, Locale locale)
    {
        b(locale).a().a(stringbuffer, l, chronology, i, datetimezone, locale);
    }

    public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
    {
        b(locale).a().a(stringbuffer, readablepartial, locale);
    }

    public int b()
    {
        return 40;
    }

}
