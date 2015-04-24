// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.Locale;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;
import org.joda.time.field.BaseDateTimeField;
import org.joda.time.field.FieldUtils;
import org.joda.time.field.UnsupportedDurationField;

// Referenced classes of package org.joda.time.chrono:
//            BasicChronology, GJLocaleSymbols

final class GJEraDateTimeField extends BaseDateTimeField
{

    private final BasicChronology a;

    GJEraDateTimeField(BasicChronology basicchronology)
    {
        super(DateTimeFieldType.w());
        a = basicchronology;
    }

    public int a(long l)
    {
        return a.a(l) > 0 ? 1 : 0;
    }

    public int a(Locale locale)
    {
        return GJLocaleSymbols.a(locale).a();
    }

    public long a(long l, String s, Locale locale)
    {
        return b(l, GJLocaleSymbols.a(locale).a(s));
    }

    public String a(int j, Locale locale)
    {
        return GJLocaleSymbols.a(locale).a(j);
    }

    public long b(long l, int j)
    {
        FieldUtils.a(this, j, 0, 1);
        if (a(l) != j)
        {
            int k = a.a(l);
            l = a.f(l, -k);
        }
        return l;
    }

    public boolean d()
    {
        return false;
    }

    public long e(long l)
    {
        if (a(l) == 1)
        {
            return a.f(0L, 1);
        } else
        {
            return 0x8000000000000000L;
        }
    }

    public DurationField e()
    {
        return UnsupportedDurationField.a(DurationFieldType.l());
    }

    public long f(long l)
    {
        if (a(l) == 0)
        {
            return a.f(0L, 1);
        } else
        {
            return 0x7fffffffffffffffL;
        }
    }

    public DurationField f()
    {
        return null;
    }

    public long g(long l)
    {
        return e(l);
    }

    public int h()
    {
        return 0;
    }

    public long h(long l)
    {
        return e(l);
    }

    public int i()
    {
        return 1;
    }

    public long i(long l)
    {
        return e(l);
    }
}
