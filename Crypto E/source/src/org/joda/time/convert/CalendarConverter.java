// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.convert;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import org.joda.time.Chronology;
import org.joda.time.DateTimeZone;
import org.joda.time.chrono.BuddhistChronology;
import org.joda.time.chrono.GJChronology;
import org.joda.time.chrono.GregorianChronology;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.chrono.JulianChronology;

// Referenced classes of package org.joda.time.convert:
//            AbstractConverter, InstantConverter, PartialConverter

final class CalendarConverter extends AbstractConverter
    implements InstantConverter, PartialConverter
{

    static final CalendarConverter a = new CalendarConverter();

    protected CalendarConverter()
    {
    }

    public long a(Object obj, Chronology chronology)
    {
        return ((Calendar)obj).getTime().getTime();
    }

    public Class a()
    {
        return java/util/Calendar;
    }

    public Chronology a(Object obj, DateTimeZone datetimezone)
    {
        if (obj.getClass().getName().endsWith(".BuddhistCalendar"))
        {
            return BuddhistChronology.b(datetimezone);
        }
        if (obj instanceof GregorianCalendar)
        {
            long l = ((GregorianCalendar)obj).getGregorianChange().getTime();
            if (l == 0x8000000000000000L)
            {
                return GregorianChronology.b(datetimezone);
            }
            if (l == 0x7fffffffffffffffL)
            {
                return JulianChronology.b(datetimezone);
            } else
            {
                return GJChronology.a(datetimezone, l, 4);
            }
        } else
        {
            return ISOChronology.b(datetimezone);
        }
    }

    public Chronology b(Object obj, Chronology chronology)
    {
        Calendar calendar;
        if (chronology != null)
        {
            return chronology;
        }
        calendar = (Calendar)obj;
        DateTimeZone datetimezone1 = DateTimeZone.a(calendar.getTimeZone());
        DateTimeZone datetimezone = datetimezone1;
_L2:
        return a(calendar, datetimezone);
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        datetimezone = DateTimeZone.a();
        if (true) goto _L2; else goto _L1
_L1:
    }

}
