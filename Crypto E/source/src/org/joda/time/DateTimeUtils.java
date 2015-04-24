// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.lang.reflect.Method;
import java.text.DateFormatSymbols;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import org.joda.time.chrono.ISOChronology;

// Referenced classes of package org.joda.time:
//            DateTimeZone, ReadableInstant, PeriodType, Chronology

public class DateTimeUtils
{
    static class FixedMillisProvider
        implements MillisProvider
    {

        private final long a;

        public long a()
        {
            return a;
        }
    }

    public static interface MillisProvider
    {

        public abstract long a();
    }

    static class OffsetMillisProvider
        implements MillisProvider
    {

        private final long a;

        public long a()
        {
            return System.currentTimeMillis() + a;
        }
    }

    static class SystemMillisProvider
        implements MillisProvider
    {

        public long a()
        {
            return System.currentTimeMillis();
        }

        SystemMillisProvider()
        {
        }
    }


    private static final SystemMillisProvider a;
    private static volatile MillisProvider b;
    private static volatile Map c;

    protected DateTimeUtils()
    {
    }

    public static final long a()
    {
        return b.a();
    }

    public static final long a(ReadableInstant readableinstant)
    {
        if (readableinstant == null)
        {
            return a();
        } else
        {
            return readableinstant.x_();
        }
    }

    public static final DateFormatSymbols a(Locale locale)
    {
        DateFormatSymbols dateformatsymbols;
        try
        {
            dateformatsymbols = (DateFormatSymbols)java/text/DateFormatSymbols.getMethod("getInstance", new Class[] {
                java/util/Locale
            }).invoke(null, new Object[] {
                locale
            });
        }
        catch (Exception exception)
        {
            return new DateFormatSymbols(locale);
        }
        return dateformatsymbols;
    }

    public static final Chronology a(Chronology chronology)
    {
        if (chronology == null)
        {
            chronology = ISOChronology.O();
        }
        return chronology;
    }

    public static final DateTimeZone a(DateTimeZone datetimezone)
    {
        if (datetimezone == null)
        {
            datetimezone = DateTimeZone.a();
        }
        return datetimezone;
    }

    public static final PeriodType a(PeriodType periodtype)
    {
        if (periodtype == null)
        {
            periodtype = PeriodType.a();
        }
        return periodtype;
    }

    private static void a(Map map, String s, String s1)
    {
        try
        {
            map.put(s, DateTimeZone.a(s1));
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            return;
        }
    }

    public static final Map b()
    {
        return c;
    }

    public static final Chronology b(ReadableInstant readableinstant)
    {
        Object obj;
        if (readableinstant == null)
        {
            obj = ISOChronology.O();
        } else
        {
            obj = readableinstant.d();
            if (obj == null)
            {
                return ISOChronology.O();
            }
        }
        return ((Chronology) (obj));
    }

    static 
    {
        a = new SystemMillisProvider();
        b = a;
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        linkedhashmap.put("UT", DateTimeZone.a);
        linkedhashmap.put("UTC", DateTimeZone.a);
        linkedhashmap.put("GMT", DateTimeZone.a);
        a(linkedhashmap, "EST", "America/New_York");
        a(linkedhashmap, "EDT", "America/New_York");
        a(linkedhashmap, "CST", "America/Chicago");
        a(linkedhashmap, "CDT", "America/Chicago");
        a(linkedhashmap, "MST", "America/Denver");
        a(linkedhashmap, "MDT", "America/Denver");
        a(linkedhashmap, "PST", "America/Los_Angeles");
        a(linkedhashmap, "PDT", "America/Los_Angeles");
        c = Collections.unmodifiableMap(linkedhashmap);
    }
}
