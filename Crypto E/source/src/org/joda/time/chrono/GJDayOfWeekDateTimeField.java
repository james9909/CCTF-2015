// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.Locale;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.field.PreciseDurationDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            BasicChronology, GJLocaleSymbols

final class GJDayOfWeekDateTimeField extends PreciseDurationDateTimeField
{

    private final BasicChronology b;

    GJDayOfWeekDateTimeField(BasicChronology basicchronology, DurationField durationfield)
    {
        super(DateTimeFieldType.l(), durationfield);
        b = basicchronology;
    }

    public int a(long l)
    {
        return b.g(l);
    }

    protected int a(String s, Locale locale)
    {
        return GJLocaleSymbols.a(locale).c(s);
    }

    public int a(Locale locale)
    {
        return GJLocaleSymbols.a(locale).c();
    }

    public String a(int j, Locale locale)
    {
        return GJLocaleSymbols.a(locale).d(j);
    }

    public String b(int j, Locale locale)
    {
        return GJLocaleSymbols.a(locale).e(j);
    }

    public DurationField f()
    {
        return b.w();
    }

    public int h()
    {
        return 1;
    }

    public int i()
    {
        return 7;
    }
}
