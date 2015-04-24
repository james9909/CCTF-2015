// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadableInstant;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.format:
//            DateTimePrinter, DateTimeParserBucket, DateTimeParser, FormatUtils

public class DateTimeFormatter
{

    private final DateTimePrinter a;
    private final DateTimeParser b;
    private final Locale c;
    private final boolean d;
    private final Chronology e;
    private final DateTimeZone f;
    private final Integer g;
    private final int h;

    public DateTimeFormatter(DateTimePrinter datetimeprinter, DateTimeParser datetimeparser)
    {
        a = datetimeprinter;
        b = datetimeparser;
        c = null;
        d = false;
        e = null;
        f = null;
        g = null;
        h = 2000;
    }

    private DateTimeFormatter(DateTimePrinter datetimeprinter, DateTimeParser datetimeparser, Locale locale, boolean flag, Chronology chronology, DateTimeZone datetimezone, Integer integer, 
            int i)
    {
        a = datetimeprinter;
        b = datetimeparser;
        c = locale;
        d = flag;
        e = chronology;
        f = datetimezone;
        g = integer;
        h = i;
    }

    private void a(StringBuffer stringbuffer, long l, Chronology chronology)
    {
        DateTimePrinter datetimeprinter = d();
        Chronology chronology1 = b(chronology);
        DateTimeZone datetimezone = chronology1.a();
        int i = datetimezone.b(l);
        long l1 = l + (long)i;
        if ((l ^ l1) < 0L && (l ^ (long)i) >= 0L)
        {
            datetimezone = DateTimeZone.a;
            i = 0;
            l1 = l;
        }
        datetimeprinter.a(stringbuffer, l1, chronology1.b(), i, datetimezone, c);
    }

    private Chronology b(Chronology chronology)
    {
        Chronology chronology1 = DateTimeUtils.a(chronology);
        if (e != null)
        {
            chronology1 = e;
        }
        if (f != null)
        {
            chronology1 = chronology1.a(f);
        }
        return chronology1;
    }

    private DateTimePrinter d()
    {
        DateTimePrinter datetimeprinter = a;
        if (datetimeprinter == null)
        {
            throw new UnsupportedOperationException("Printing not supported");
        } else
        {
            return datetimeprinter;
        }
    }

    private DateTimeParser e()
    {
        DateTimeParser datetimeparser = b;
        if (datetimeparser == null)
        {
            throw new UnsupportedOperationException("Parsing not supported");
        } else
        {
            return datetimeparser;
        }
    }

    public long a(String s)
    {
        DateTimeParser datetimeparser = e();
        DateTimeParserBucket datetimeparserbucket = new DateTimeParserBucket(0L, b(e), c, g, h);
        int i = datetimeparser.a(datetimeparserbucket, s, 0);
        if (i >= 0)
        {
            if (i >= s.length())
            {
                return datetimeparserbucket.a(true, s);
            }
        } else
        {
            i = ~i;
        }
        throw new IllegalArgumentException(FormatUtils.b(s, i));
    }

    public String a(ReadableInstant readableinstant)
    {
        StringBuffer stringbuffer = new StringBuffer(d().a());
        a(stringbuffer, readableinstant);
        return stringbuffer.toString();
    }

    public String a(ReadablePartial readablepartial)
    {
        StringBuffer stringbuffer = new StringBuffer(d().a());
        a(stringbuffer, readablepartial);
        return stringbuffer.toString();
    }

    public DateTimeFormatter a(Chronology chronology)
    {
        if (e == chronology)
        {
            return this;
        } else
        {
            return new DateTimeFormatter(a, b, c, d, chronology, f, g, h);
        }
    }

    public DateTimeFormatter a(DateTimeZone datetimezone)
    {
        if (f == datetimezone)
        {
            return this;
        } else
        {
            return new DateTimeFormatter(a, b, c, false, e, datetimezone, g, h);
        }
    }

    public DateTimePrinter a()
    {
        return a;
    }

    public void a(StringBuffer stringbuffer, long l)
    {
        a(stringbuffer, l, null);
    }

    public void a(StringBuffer stringbuffer, ReadableInstant readableinstant)
    {
        a(stringbuffer, DateTimeUtils.a(readableinstant), DateTimeUtils.b(readableinstant));
    }

    public void a(StringBuffer stringbuffer, ReadablePartial readablepartial)
    {
        DateTimePrinter datetimeprinter = d();
        if (readablepartial == null)
        {
            throw new IllegalArgumentException("The partial must not be null");
        } else
        {
            datetimeprinter.a(stringbuffer, readablepartial, c);
            return;
        }
    }

    public DateTime b(String s)
    {
        Chronology chronology;
        DateTimeParserBucket datetimeparserbucket;
        int i;
        DateTimeParser datetimeparser = e();
        chronology = b(((Chronology) (null)));
        datetimeparserbucket = new DateTimeParserBucket(0L, chronology, c, g, h);
        i = datetimeparser.a(datetimeparserbucket, s, 0);
        if (i < 0) goto _L2; else goto _L1
_L1:
        long l;
        if (i < s.length())
        {
            break MISSING_BLOCK_LABEL_160;
        }
        l = datetimeparserbucket.a(true, s);
        if (!d || datetimeparserbucket.d() == null) goto _L4; else goto _L3
_L3:
        chronology = chronology.a(DateTimeZone.a(datetimeparserbucket.d().intValue()));
_L5:
        DateTime datetime = new DateTime(l, chronology);
        if (f != null)
        {
            datetime = datetime.a(f);
        }
        return datetime;
_L4:
        if (datetimeparserbucket.c() != null)
        {
            chronology = chronology.a(datetimeparserbucket.c());
        }
        if (true) goto _L5; else goto _L2
_L2:
        i = ~i;
        throw new IllegalArgumentException(FormatUtils.b(s, i));
    }

    public DateTimeParser b()
    {
        return b;
    }

    public DateTimeFormatter c()
    {
        return a(DateTimeZone.a);
    }
}
