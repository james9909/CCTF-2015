// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.Locale;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.IllegalInstantException;
import org.joda.time.ReadablePartial;
import org.joda.time.field.BaseDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            ZonedChronology

static final class f extends BaseDateTimeField
{

    final DateTimeField a;
    final DateTimeZone b;
    final DurationField c;
    final boolean d;
    final DurationField e;
    final DurationField f;

    private int k(long l)
    {
        int i1 = b.b(l);
        if ((l ^ l + (long)i1) < 0L && (l ^ (long)i1) >= 0L)
        {
            throw new ArithmeticException("Adding time zone offset caused overflow");
        } else
        {
            return i1;
        }
    }

    public int a(long l)
    {
        long l1 = b.d(l);
        return a.a(l1);
    }

    public int a(Locale locale)
    {
        return a.a(locale);
    }

    public int a(ReadablePartial readablepartial)
    {
        return a.a(readablepartial);
    }

    public int a(ReadablePartial readablepartial, int ai[])
    {
        return a.a(readablepartial, ai);
    }

    public long a(long l, int i1)
    {
        if (d)
        {
            int j1 = k(l);
            return a.a(l + (long)j1, i1) - (long)j1;
        } else
        {
            long l1 = b.d(l);
            long l2 = a.a(l1, i1);
            return b.a(l2, false, l);
        }
    }

    public long a(long l, long l1)
    {
        if (d)
        {
            int i1 = k(l);
            return a.a(l + (long)i1, l1) - (long)i1;
        } else
        {
            long l2 = b.d(l);
            long l3 = a.a(l2, l1);
            return b.a(l3, false, l);
        }
    }

    public long a(long l, String s, Locale locale)
    {
        long l1 = b.d(l);
        long l2 = a.a(l1, s, locale);
        return b.a(l2, false, l);
    }

    public String a(int l, Locale locale)
    {
        return a.a(l, locale);
    }

    public String a(long l, Locale locale)
    {
        long l1 = b.d(l);
        return a.a(l1, locale);
    }

    public int b(long l, long l1)
    {
        int i1 = k(l1);
        DateTimeField datetimefield = a;
        int j1;
        if (d)
        {
            j1 = i1;
        } else
        {
            j1 = k(l);
        }
        return datetimefield.b(l + (long)j1, l1 + (long)i1);
    }

    public int b(ReadablePartial readablepartial)
    {
        return a.b(readablepartial);
    }

    public int b(ReadablePartial readablepartial, int ai[])
    {
        return a.b(readablepartial, ai);
    }

    public long b(long l, int i1)
    {
        long l1 = b.d(l);
        long l2 = a.b(l1, i1);
        long l3 = b.a(l2, false, l);
        if (a(l3) != i1)
        {
            IllegalInstantException illegalinstantexception = new IllegalInstantException(l2, b.c());
            IllegalFieldValueException illegalfieldvalueexception = new IllegalFieldValueException(a.a(), Integer.valueOf(i1), illegalinstantexception.getMessage());
            illegalfieldvalueexception.initCause(illegalinstantexception);
            throw illegalfieldvalueexception;
        } else
        {
            return l3;
        }
    }

    public String b(int l, Locale locale)
    {
        return a.b(l, locale);
    }

    public String b(long l, Locale locale)
    {
        long l1 = b.d(l);
        return a.b(l1, locale);
    }

    public boolean b(long l)
    {
        long l1 = b.d(l);
        return a.b(l1);
    }

    public int c(long l)
    {
        long l1 = b.d(l);
        return a.c(l1);
    }

    public long c(long l, long l1)
    {
        int i1 = k(l1);
        DateTimeField datetimefield = a;
        int j1;
        if (d)
        {
            j1 = i1;
        } else
        {
            j1 = k(l);
        }
        return datetimefield.c(l + (long)j1, l1 + (long)i1);
    }

    public int d(long l)
    {
        long l1 = b.d(l);
        return a.d(l1);
    }

    public boolean d()
    {
        return a.d();
    }

    public long e(long l)
    {
        if (d)
        {
            int i1 = k(l);
            return a.e(l + (long)i1) - (long)i1;
        } else
        {
            long l1 = b.d(l);
            long l2 = a.e(l1);
            return b.a(l2, false, l);
        }
    }

    public final DurationField e()
    {
        return c;
    }

    public long f(long l)
    {
        if (d)
        {
            int i1 = k(l);
            return a.f(l + (long)i1) - (long)i1;
        } else
        {
            long l1 = b.d(l);
            long l2 = a.f(l1);
            return b.a(l2, false, l);
        }
    }

    public final DurationField f()
    {
        return e;
    }

    public final DurationField g()
    {
        return f;
    }

    public int h()
    {
        return a.h();
    }

    public int i()
    {
        return a.i();
    }

    public long j(long l)
    {
        long l1 = b.d(l);
        return a.j(l1);
    }

    (DateTimeField datetimefield, DateTimeZone datetimezone, DurationField durationfield, DurationField durationfield1, DurationField durationfield2)
    {
        super(datetimefield.a());
        if (!datetimefield.c())
        {
            throw new IllegalArgumentException();
        } else
        {
            a = datetimefield;
            b = datetimezone;
            c = durationfield;
            d = ZonedChronology.a(durationfield);
            e = durationfield1;
            f = durationfield2;
            return;
        }
    }
}
