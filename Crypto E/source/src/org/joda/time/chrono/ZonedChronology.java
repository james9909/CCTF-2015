// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.HashMap;
import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.IllegalInstantException;
import org.joda.time.ReadablePartial;
import org.joda.time.field.BaseDateTimeField;
import org.joda.time.field.BaseDurationField;

// Referenced classes of package org.joda.time.chrono:
//            AssembledChronology

public final class ZonedChronology extends AssembledChronology
{
    static final class ZonedDateTimeField extends BaseDateTimeField
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

        ZonedDateTimeField(DateTimeField datetimefield, DateTimeZone datetimezone, DurationField durationfield, DurationField durationfield1, DurationField durationfield2)
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

    static class ZonedDurationField extends BaseDurationField
    {

        final DurationField a;
        final boolean b;
        final DateTimeZone c;

        private int a(long l)
        {
            int i = c.b(l);
            if ((l ^ l + (long)i) < 0L && (l ^ (long)i) >= 0L)
            {
                throw new ArithmeticException("Adding time zone offset caused overflow");
            } else
            {
                return i;
            }
        }

        private int b(long l)
        {
            int i = c.c(l);
            if ((l ^ l - (long)i) < 0L && (l ^ (long)i) < 0L)
            {
                throw new ArithmeticException("Subtracting time zone offset caused overflow");
            } else
            {
                return i;
            }
        }

        public long a(long l, int i)
        {
            int j = a(l);
            long l1 = a.a(l + (long)j, i);
            if (!b)
            {
                j = b(l1);
            }
            return l1 - (long)j;
        }

        public long a(long l, long l1)
        {
            int i = a(l);
            long l2 = a.a(l + (long)i, l1);
            if (!b)
            {
                i = b(l2);
            }
            return l2 - (long)i;
        }

        public int b(long l, long l1)
        {
            int i = a(l1);
            DurationField durationfield = a;
            int j;
            if (b)
            {
                j = i;
            } else
            {
                j = a(l);
            }
            return durationfield.b(l + (long)j, l1 + (long)i);
        }

        public long c(long l, long l1)
        {
            int i = a(l1);
            DurationField durationfield = a;
            int j;
            if (b)
            {
                j = i;
            } else
            {
                j = a(l);
            }
            return durationfield.c(l + (long)j, l1 + (long)i);
        }

        public boolean c()
        {
            if (b)
            {
                return a.c();
            }
            return a.c() && c.d();
        }

        public long d()
        {
            return a.d();
        }

        ZonedDurationField(DurationField durationfield, DateTimeZone datetimezone)
        {
            super(durationfield.a());
            if (!durationfield.b())
            {
                throw new IllegalArgumentException();
            } else
            {
                a = durationfield;
                b = ZonedChronology.a(durationfield);
                c = datetimezone;
                return;
            }
        }
    }


    private ZonedChronology(Chronology chronology, DateTimeZone datetimezone)
    {
        super(chronology, datetimezone);
    }

    private long a(long l)
    {
        DateTimeZone datetimezone = a();
        int i = datetimezone.c(l);
        long l1 = l - (long)i;
        if (i != datetimezone.b(l1))
        {
            throw new IllegalInstantException(l1, datetimezone.c());
        } else
        {
            return l1;
        }
    }

    private DateTimeField a(DateTimeField datetimefield, HashMap hashmap)
    {
        if (datetimefield == null || !datetimefield.c())
        {
            return datetimefield;
        }
        if (hashmap.containsKey(datetimefield))
        {
            return (DateTimeField)hashmap.get(datetimefield);
        } else
        {
            ZonedDateTimeField zoneddatetimefield = new ZonedDateTimeField(datetimefield, a(), a(datetimefield.e(), hashmap), a(datetimefield.f(), hashmap), a(datetimefield.g(), hashmap));
            hashmap.put(datetimefield, zoneddatetimefield);
            return zoneddatetimefield;
        }
    }

    private DurationField a(DurationField durationfield, HashMap hashmap)
    {
        if (durationfield == null || !durationfield.b())
        {
            return durationfield;
        }
        if (hashmap.containsKey(durationfield))
        {
            return (DurationField)hashmap.get(durationfield);
        } else
        {
            ZonedDurationField zoneddurationfield = new ZonedDurationField(durationfield, a());
            hashmap.put(durationfield, zoneddurationfield);
            return zoneddurationfield;
        }
    }

    public static ZonedChronology a(Chronology chronology, DateTimeZone datetimezone)
    {
        if (chronology == null)
        {
            throw new IllegalArgumentException("Must supply a chronology");
        }
        Chronology chronology1 = chronology.b();
        if (chronology1 == null)
        {
            throw new IllegalArgumentException("UTC chronology must not be null");
        }
        if (datetimezone == null)
        {
            throw new IllegalArgumentException("DateTimeZone must not be null");
        } else
        {
            return new ZonedChronology(chronology1, datetimezone);
        }
    }

    static boolean a(DurationField durationfield)
    {
        return durationfield != null && durationfield.d() < 0x2932e00L;
    }

    public long a(int i, int j, int k, int l)
    {
        return a(L().a(i, j, k, l));
    }

    public long a(int i, int j, int k, int l, int i1, int j1, int k1)
    {
        return a(L().a(i, j, k, l, i1, j1, k1));
    }

    public long a(long l, int i, int j, int k, int i1)
    {
        return a(L().a(l + (long)a().b(l), i, j, k, i1));
    }

    public Chronology a(DateTimeZone datetimezone)
    {
        if (datetimezone == null)
        {
            datetimezone = DateTimeZone.a();
        }
        if (datetimezone == M())
        {
            return this;
        }
        if (datetimezone == DateTimeZone.a)
        {
            return L();
        } else
        {
            return new ZonedChronology(L(), datetimezone);
        }
    }

    public DateTimeZone a()
    {
        return (DateTimeZone)M();
    }

    protected void a(AssembledChronology.Fields fields)
    {
        HashMap hashmap = new HashMap();
        fields.l = a(fields.l, hashmap);
        fields.k = a(fields.k, hashmap);
        fields.j = a(fields.j, hashmap);
        fields.i = a(fields.i, hashmap);
        fields.h = a(fields.h, hashmap);
        fields.g = a(fields.g, hashmap);
        fields.f = a(fields.f, hashmap);
        fields.e = a(fields.e, hashmap);
        fields.d = a(fields.d, hashmap);
        fields.c = a(fields.c, hashmap);
        fields.b = a(fields.b, hashmap);
        fields.a = a(fields.a, hashmap);
        fields.E = a(fields.E, hashmap);
        fields.F = a(fields.F, hashmap);
        fields.G = a(fields.G, hashmap);
        fields.H = a(fields.H, hashmap);
        fields.I = a(fields.I, hashmap);
        fields.x = a(fields.x, hashmap);
        fields.y = a(fields.y, hashmap);
        fields.z = a(fields.z, hashmap);
        fields.D = a(fields.D, hashmap);
        fields.A = a(fields.A, hashmap);
        fields.B = a(fields.B, hashmap);
        fields.C = a(fields.C, hashmap);
        fields.m = a(fields.m, hashmap);
        fields.n = a(fields.n, hashmap);
        fields.o = a(fields.o, hashmap);
        fields.p = a(fields.p, hashmap);
        fields.q = a(fields.q, hashmap);
        fields.r = a(fields.r, hashmap);
        fields.s = a(fields.s, hashmap);
        fields.u = a(fields.u, hashmap);
        fields.t = a(fields.t, hashmap);
        fields.v = a(fields.v, hashmap);
        fields.w = a(fields.w, hashmap);
    }

    public Chronology b()
    {
        return L();
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ZonedChronology))
            {
                return false;
            }
            ZonedChronology zonedchronology = (ZonedChronology)obj;
            if (!L().equals(zonedchronology.L()) || !a().equals(zonedchronology.a()))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 0x4fba5 + 11 * a().hashCode() + 7 * L().hashCode();
    }

    public String toString()
    {
        return (new StringBuilder()).append("ZonedChronology[").append(L()).append(", ").append(a().c()).append(']').toString();
    }
}
