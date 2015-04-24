// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.Locale;
import org.joda.time.DateTimeField;
import org.joda.time.DurationField;
import org.joda.time.field.DecoratedDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            LimitChronology

class d extends DecoratedDateTimeField
{

    final LimitChronology a;
    private final DurationField b;
    private final DurationField c;
    private final DurationField d;

    public int a(long l)
    {
        a.a(l, null);
        return j().a(l);
    }

    public int a(Locale locale)
    {
        return j().a(locale);
    }

    public long a(long l, int k)
    {
        a.a(l, null);
        long l1 = j().a(l, k);
        a.a(l1, "resulting");
        return l1;
    }

    public long a(long l, long l1)
    {
        a.a(l, null);
        long l2 = j().a(l, l1);
        a.a(l2, "resulting");
        return l2;
    }

    public long a(long l, String s, Locale locale)
    {
        a.a(l, null);
        long l1 = j().a(l, s, locale);
        a.a(l1, "resulting");
        return l1;
    }

    public String a(long l, Locale locale)
    {
        a.a(l, null);
        return j().a(l, locale);
    }

    public int b(long l, long l1)
    {
        a.a(l, "minuend");
        a.a(l1, "subtrahend");
        return j().b(l, l1);
    }

    public long b(long l, int k)
    {
        a.a(l, null);
        long l1 = j().b(l, k);
        a.a(l1, "resulting");
        return l1;
    }

    public String b(long l, Locale locale)
    {
        a.a(l, null);
        return j().b(l, locale);
    }

    public boolean b(long l)
    {
        a.a(l, null);
        return j().b(l);
    }

    public int c(long l)
    {
        a.a(l, null);
        return j().c(l);
    }

    public long c(long l, long l1)
    {
        a.a(l, "minuend");
        a.a(l1, "subtrahend");
        return j().c(l, l1);
    }

    public int d(long l)
    {
        a.a(l, null);
        return j().d(l);
    }

    public long e(long l)
    {
        a.a(l, null);
        long l1 = j().e(l);
        a.a(l1, "resulting");
        return l1;
    }

    public final DurationField e()
    {
        return b;
    }

    public long f(long l)
    {
        a.a(l, null);
        long l1 = j().f(l);
        a.a(l1, "resulting");
        return l1;
    }

    public final DurationField f()
    {
        return c;
    }

    public long g(long l)
    {
        a.a(l, null);
        long l1 = j().g(l);
        a.a(l1, "resulting");
        return l1;
    }

    public final DurationField g()
    {
        return d;
    }

    public long h(long l)
    {
        a.a(l, null);
        long l1 = j().h(l);
        a.a(l1, "resulting");
        return l1;
    }

    public long i(long l)
    {
        a.a(l, null);
        long l1 = j().i(l);
        a.a(l1, "resulting");
        return l1;
    }

    public long j(long l)
    {
        a.a(l, null);
        long l1 = j().j(l);
        a.a(l1, "resulting");
        return l1;
    }

    (LimitChronology limitchronology, DateTimeField datetimefield, DurationField durationfield, DurationField durationfield1, DurationField durationfield2)
    {
        a = limitchronology;
        super(datetimefield, datetimefield.a());
        b = durationfield;
        c = durationfield1;
        d = durationfield2;
    }
}
