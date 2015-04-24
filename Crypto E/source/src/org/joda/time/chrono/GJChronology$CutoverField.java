// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.Locale;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.ReadablePartial;
import org.joda.time.field.BaseDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            GJChronology

class f extends BaseDateTimeField
{

    final DateTimeField a;
    final DateTimeField b;
    final long c;
    final boolean d;
    protected DurationField e;
    protected DurationField f;
    final GJChronology g;

    public int a(long l1)
    {
        if (l1 >= c)
        {
            return b.a(l1);
        } else
        {
            return a.a(l1);
        }
    }

    public int a(Locale locale)
    {
        return Math.max(a.a(locale), b.a(locale));
    }

    public int a(ReadablePartial readablepartial)
    {
        return a.a(readablepartial);
    }

    public int a(ReadablePartial readablepartial, int ai[])
    {
        return a.a(readablepartial, ai);
    }

    public long a(long l1, int j)
    {
        return b.a(l1, j);
    }

    public long a(long l1, long l2)
    {
        return b.a(l1, l2);
    }

    public long a(long l1, String s, Locale locale)
    {
        long l2;
        if (l1 >= c)
        {
            l2 = b.a(l1, s, locale);
            if (l2 < c && l2 + GJChronology.a(g) < c)
            {
                l2 = l(l2);
            }
        } else
        {
            l2 = a.a(l1, s, locale);
            if (l2 >= c && l2 - GJChronology.a(g) >= c)
            {
                return k(l2);
            }
        }
        return l2;
    }

    public String a(int j, Locale locale)
    {
        return b.a(j, locale);
    }

    public String a(long l1, Locale locale)
    {
        if (l1 >= c)
        {
            return b.a(l1, locale);
        } else
        {
            return a.a(l1, locale);
        }
    }

    public int b(long l1, long l2)
    {
        return b.b(l1, l2);
    }

    public int b(ReadablePartial readablepartial)
    {
        return d(GJChronology.N().b(readablepartial, 0L));
    }

    public int b(ReadablePartial readablepartial, int ai[])
    {
        GJChronology gjchronology = GJChronology.N();
        int j = readablepartial.a();
        long l1 = 0L;
        for (int i1 = 0; i1 < j; i1++)
        {
            DateTimeField datetimefield = readablepartial.b(i1).a(gjchronology);
            if (ai[i1] <= datetimefield.d(l1))
            {
                l1 = datetimefield.b(l1, ai[i1]);
            }
        }

        return d(l1);
    }

    public long b(long l1, int j)
    {
        long l2;
        if (l1 >= c)
        {
            l2 = b.b(l1, j);
            if (l2 < c)
            {
                if (l2 + GJChronology.a(g) < c)
                {
                    l2 = l(l2);
                }
                if (a(l2) != j)
                {
                    throw new IllegalFieldValueException(b.a(), Integer.valueOf(j), null, null);
                }
            }
        } else
        {
            l2 = a.b(l1, j);
            if (l2 >= c)
            {
                if (l2 - GJChronology.a(g) >= c)
                {
                    l2 = k(l2);
                }
                if (a(l2) != j)
                {
                    throw new IllegalFieldValueException(a.a(), Integer.valueOf(j), null, null);
                }
            }
        }
        return l2;
    }

    public String b(int j, Locale locale)
    {
        return b.b(j, locale);
    }

    public String b(long l1, Locale locale)
    {
        if (l1 >= c)
        {
            return b.b(l1, locale);
        } else
        {
            return a.b(l1, locale);
        }
    }

    public boolean b(long l1)
    {
        if (l1 >= c)
        {
            return b.b(l1);
        } else
        {
            return a.b(l1);
        }
    }

    public int c(long l1)
    {
        int j;
        if (l1 < c)
        {
            j = a.c(l1);
        } else
        {
            j = b.c(l1);
            if (b.b(l1, j) < c)
            {
                return b.a(c);
            }
        }
        return j;
    }

    public long c(long l1, long l2)
    {
        return b.c(l1, l2);
    }

    public int d(long l1)
    {
        int j;
        if (l1 >= c)
        {
            j = b.d(l1);
        } else
        {
            j = a.d(l1);
            if (a.b(l1, j) >= c)
            {
                return a.a(a.a(c, -1));
            }
        }
        return j;
    }

    public boolean d()
    {
        return false;
    }

    public long e(long l1)
    {
        if (l1 >= c)
        {
            long l2 = b.e(l1);
            if (l2 < c && l2 + GJChronology.a(g) < c)
            {
                l2 = l(l2);
            }
            return l2;
        } else
        {
            return a.e(l1);
        }
    }

    public DurationField e()
    {
        return e;
    }

    public long f(long l1)
    {
        long l2;
        if (l1 >= c)
        {
            l2 = b.f(l1);
        } else
        {
            l2 = a.f(l1);
            if (l2 >= c && l2 - GJChronology.a(g) >= c)
            {
                return k(l2);
            }
        }
        return l2;
    }

    public DurationField f()
    {
        return f;
    }

    public DurationField g()
    {
        return b.g();
    }

    public int h()
    {
        return a.h();
    }

    public int i()
    {
        return b.i();
    }

    protected long k(long l1)
    {
        if (d)
        {
            return g.c(l1);
        } else
        {
            return g.a(l1);
        }
    }

    protected long l(long l1)
    {
        if (d)
        {
            return g.d(l1);
        } else
        {
            return g.b(l1);
        }
    }

    (GJChronology gjchronology, DateTimeField datetimefield, DateTimeField datetimefield1, long l1)
    {
        this(gjchronology, datetimefield, datetimefield1, l1, false);
    }

    <init>(GJChronology gjchronology, DateTimeField datetimefield, DateTimeField datetimefield1, long l1, boolean flag)
    {
        g = gjchronology;
        super(datetimefield1.a());
        a = datetimefield;
        b = datetimefield1;
        c = l1;
        d = flag;
        e = datetimefield1.e();
        DurationField durationfield = datetimefield1.f();
        if (durationfield == null)
        {
            durationfield = datetimefield.f();
        }
        f = durationfield;
    }
}
