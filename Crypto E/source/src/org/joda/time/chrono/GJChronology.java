// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.Instant;
import org.joda.time.LocalDate;
import org.joda.time.ReadableInstant;
import org.joda.time.ReadablePartial;
import org.joda.time.field.BaseDateTimeField;
import org.joda.time.field.DecoratedDurationField;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

// Referenced classes of package org.joda.time.chrono:
//            AssembledChronology, JulianChronology, GregorianChronology, ZonedChronology

public final class GJChronology extends AssembledChronology
{
    class CutoverField extends BaseDateTimeField
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

        CutoverField(DateTimeField datetimefield, DateTimeField datetimefield1, long l1)
        {
            this(datetimefield, datetimefield1, l1, false);
        }

        CutoverField(DateTimeField datetimefield, DateTimeField datetimefield1, long l1, boolean flag)
        {
            g = GJChronology.this;
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

    final class ImpreciseCutoverField extends CutoverField
    {

        final GJChronology h;

        public long a(long l, int i)
        {
            if (l < c) goto _L2; else goto _L1
_L1:
            long l1 = b.a(l, i);
            if (l1 >= c || l1 + GJChronology.a(h) >= c) goto _L4; else goto _L3
_L3:
            if (!d) goto _L6; else goto _L5
_L5:
            if (GJChronology.b(h).z().a(l1) <= 0)
            {
                l1 = GJChronology.b(h).z().a(l1, -1);
            }
_L9:
            l1 = l(l1);
_L4:
            return l1;
_L6:
            if (GJChronology.b(h).E().a(l1) <= 0)
            {
                l1 = GJChronology.b(h).E().a(l1, -1);
            }
            continue; /* Loop/switch isn't completed */
_L2:
            l1 = a.a(l, i);
            if (l1 < c || l1 - GJChronology.a(h) < c) goto _L4; else goto _L7
_L7:
            return k(l1);
            if (true) goto _L9; else goto _L8
_L8:
        }

        public long a(long l, long l1)
        {
            if (l < c) goto _L2; else goto _L1
_L1:
            long l2 = b.a(l, l1);
            if (l2 >= c || l2 + GJChronology.a(h) >= c) goto _L4; else goto _L3
_L3:
            if (!d) goto _L6; else goto _L5
_L5:
            if (GJChronology.b(h).z().a(l2) <= 0)
            {
                l2 = GJChronology.b(h).z().a(l2, -1);
            }
_L9:
            l2 = l(l2);
_L4:
            return l2;
_L6:
            if (GJChronology.b(h).E().a(l2) <= 0)
            {
                l2 = GJChronology.b(h).E().a(l2, -1);
            }
            continue; /* Loop/switch isn't completed */
_L2:
            l2 = a.a(l, l1);
            if (l2 < c || l2 - GJChronology.a(h) < c) goto _L4; else goto _L7
_L7:
            return k(l2);
            if (true) goto _L9; else goto _L8
_L8:
        }

        public int b(long l, long l1)
        {
            if (l >= c)
            {
                if (l1 >= c)
                {
                    return b.b(l, l1);
                } else
                {
                    long l3 = l(l);
                    return a.b(l3, l1);
                }
            }
            if (l1 < c)
            {
                return a.b(l, l1);
            } else
            {
                long l2 = k(l);
                return b.b(l2, l1);
            }
        }

        public int c(long l)
        {
            if (l >= c)
            {
                return b.c(l);
            } else
            {
                return a.c(l);
            }
        }

        public long c(long l, long l1)
        {
            if (l >= c)
            {
                if (l1 >= c)
                {
                    return b.c(l, l1);
                } else
                {
                    long l3 = l(l);
                    return a.c(l3, l1);
                }
            }
            if (l1 < c)
            {
                return a.c(l, l1);
            } else
            {
                long l2 = k(l);
                return b.c(l2, l1);
            }
        }

        public int d(long l)
        {
            if (l >= c)
            {
                return b.d(l);
            } else
            {
                return a.d(l);
            }
        }

        ImpreciseCutoverField(DateTimeField datetimefield, DateTimeField datetimefield1, long l)
        {
            this(datetimefield, datetimefield1, null, l, false);
        }

        ImpreciseCutoverField(DateTimeField datetimefield, DateTimeField datetimefield1, DurationField durationfield, long l)
        {
            this(datetimefield, datetimefield1, durationfield, l, false);
        }

        ImpreciseCutoverField(DateTimeField datetimefield, DateTimeField datetimefield1, DurationField durationfield, long l, boolean flag)
        {
            h = GJChronology.this;
            super(datetimefield, datetimefield1, l, flag);
            if (durationfield == null)
            {
                durationfield = new LinkedDurationField(e, this);
            }
            e = durationfield;
        }
    }

    static class LinkedDurationField extends DecoratedDurationField
    {

        private final ImpreciseCutoverField a;

        public long a(long l, int i)
        {
            return a.a(l, i);
        }

        public long a(long l, long l1)
        {
            return a.a(l, l1);
        }

        public int b(long l, long l1)
        {
            return a.b(l, l1);
        }

        public long c(long l, long l1)
        {
            return a.c(l, l1);
        }

        LinkedDurationField(DurationField durationfield, ImpreciseCutoverField imprecisecutoverfield)
        {
            super(durationfield, durationfield.a());
            a = imprecisecutoverfield;
        }
    }


    static final Instant a = new Instant(0xfffff4e2f964ac00L);
    private static final Map b = new HashMap();
    private JulianChronology c;
    private GregorianChronology d;
    private Instant e;
    private long f;
    private long g;

    private GJChronology(Chronology chronology, JulianChronology julianchronology, GregorianChronology gregorianchronology, Instant instant)
    {
        super(chronology, ((Object) (new Object[] {
            julianchronology, gregorianchronology, instant
        })));
    }

    private GJChronology(JulianChronology julianchronology, GregorianChronology gregorianchronology, Instant instant)
    {
        super(null, ((Object) (new Object[] {
            julianchronology, gregorianchronology, instant
        })));
    }

    public static GJChronology N()
    {
        return a(DateTimeZone.a, a, 4);
    }

    private static long a(long l, Chronology chronology, Chronology chronology1)
    {
        return chronology1.a(chronology.E().a(l), chronology.C().a(l), chronology.u().a(l), chronology.e().a(l));
    }

    static long a(GJChronology gjchronology)
    {
        return gjchronology.g;
    }

    public static GJChronology a(DateTimeZone datetimezone, long l, int i)
    {
        Object obj;
        if (l == a.x_())
        {
            obj = null;
        } else
        {
            obj = new Instant(l);
        }
        return a(datetimezone, ((ReadableInstant) (obj)), i);
    }

    public static GJChronology a(DateTimeZone datetimezone, ReadableInstant readableinstant)
    {
        return a(datetimezone, readableinstant, 4);
    }

    public static GJChronology a(DateTimeZone datetimezone, ReadableInstant readableinstant, int i)
    {
        org/joda/time/chrono/GJChronology;
        JVM INSTR monitorenter ;
        DateTimeZone datetimezone1 = DateTimeUtils.a(datetimezone);
        if (readableinstant != null) goto _L2; else goto _L1
_L1:
        Instant instant = a;
_L14:
        Map map = b;
        map;
        JVM INSTR monitorenter ;
        ArrayList arraylist = (ArrayList)b.get(datetimezone1);
        if (arraylist != null) goto _L4; else goto _L3
_L3:
        arraylist = new ArrayList(2);
        b.put(datetimezone1, arraylist);
_L8:
        if (datetimezone1 != DateTimeZone.a) goto _L6; else goto _L5
_L5:
        GJChronology gjchronology = new GJChronology(JulianChronology.a(datetimezone1, i), GregorianChronology.a(datetimezone1, i), instant);
_L12:
        arraylist.add(gjchronology);
        map;
        JVM INSTR monitorexit ;
_L11:
        org/joda/time/chrono/GJChronology;
        JVM INSTR monitorexit ;
        return gjchronology;
_L2:
        Instant instant1;
        instant1 = readableinstant.y_();
        if ((new LocalDate(instant1.x_(), GregorianChronology.b(datetimezone1))).e() <= 0)
        {
            throw new IllegalArgumentException("Cutover too early. Must be on or after 0001-01-01.");
        }
        break MISSING_BLOCK_LABEL_282;
        Exception exception;
        exception;
        org/joda/time/chrono/GJChronology;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        int j = arraylist.size();
_L13:
        int k = j - 1;
        if (k < 0) goto _L8; else goto _L7
_L7:
        gjchronology = (GJChronology)arraylist.get(k);
        if (i != gjchronology.P() || !instant.equals(gjchronology.O())) goto _L10; else goto _L9
_L9:
        map;
        JVM INSTR monitorexit ;
          goto _L11
        Exception exception1;
        exception1;
        map;
        JVM INSTR monitorexit ;
        throw exception1;
_L6:
        GJChronology gjchronology1 = a(DateTimeZone.a, ((ReadableInstant) (instant)), i);
        gjchronology = new GJChronology(ZonedChronology.a(gjchronology1, datetimezone1), gjchronology1.c, gjchronology1.d, gjchronology1.e);
          goto _L12
_L10:
        j = k;
          goto _L13
        instant = instant1;
          goto _L14
    }

    private static long b(long l, Chronology chronology, Chronology chronology1)
    {
        long l1 = chronology1.z().b(0L, chronology.z().a(l));
        long l2 = chronology1.x().b(l1, chronology.x().a(l));
        long l3 = chronology1.t().b(l2, chronology.t().a(l));
        return chronology1.e().b(l3, chronology.e().a(l));
    }

    static GregorianChronology b(GJChronology gjchronology)
    {
        return gjchronology.d;
    }

    public Instant O()
    {
        return e;
    }

    public int P()
    {
        return d.N();
    }

    public long a(int i, int j, int k, int l)
    {
        Chronology chronology = L();
        long l1;
        if (chronology != null)
        {
            l1 = chronology.a(i, j, k, l);
        } else
        {
            l1 = d.a(i, j, k, l);
            if (l1 < f)
            {
                l1 = c.a(i, j, k, l);
                if (l1 >= f)
                {
                    throw new IllegalArgumentException("Specified date does not exist");
                }
            }
        }
        return l1;
    }

    public long a(int i, int j, int k, int l, int i1, int j1, int k1)
    {
        Chronology chronology = L();
        if (chronology == null) goto _L2; else goto _L1
_L1:
        long l1 = chronology.a(i, j, k, l, i1, j1, k1);
_L4:
        return l1;
_L2:
        long l2 = d.a(i, j, k, l, i1, j1, k1);
        l1 = l2;
_L5:
        if (l1 < f)
        {
            l1 = c.a(i, j, k, l, i1, j1, k1);
            if (l1 >= f)
            {
                throw new IllegalArgumentException("Specified date does not exist");
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        IllegalFieldValueException illegalfieldvalueexception;
        illegalfieldvalueexception;
        if (j != 2 || k != 29)
        {
            throw illegalfieldvalueexception;
        }
        l1 = d.a(i, j, 28, l, i1, j1, k1);
        if (l1 >= f)
        {
            throw illegalfieldvalueexception;
        }
          goto _L5
    }

    long a(long l)
    {
        return a(l, ((Chronology) (c)), ((Chronology) (d)));
    }

    public Chronology a(DateTimeZone datetimezone)
    {
        if (datetimezone == null)
        {
            datetimezone = DateTimeZone.a();
        }
        if (datetimezone == a())
        {
            return this;
        } else
        {
            return a(datetimezone, ((ReadableInstant) (e)), P());
        }
    }

    public DateTimeZone a()
    {
        Chronology chronology = L();
        if (chronology != null)
        {
            return chronology.a();
        } else
        {
            return DateTimeZone.a;
        }
    }

    protected void a(AssembledChronology.Fields fields)
    {
        Object aobj[] = (Object[])(Object[])M();
        JulianChronology julianchronology = (JulianChronology)aobj[0];
        GregorianChronology gregorianchronology = (GregorianChronology)aobj[1];
        Instant instant = (Instant)aobj[2];
        f = instant.x_();
        c = julianchronology;
        d = gregorianchronology;
        e = instant;
        if (L() != null)
        {
            return;
        }
        if (julianchronology.N() != gregorianchronology.N())
        {
            throw new IllegalArgumentException();
        }
        g = f - a(f);
        fields.a(gregorianchronology);
        if (gregorianchronology.e().a(f) == 0)
        {
            fields.m = new CutoverField(julianchronology.d(), fields.m, f);
            fields.n = new CutoverField(julianchronology.e(), fields.n, f);
            fields.o = new CutoverField(julianchronology.g(), fields.o, f);
            fields.p = new CutoverField(julianchronology.h(), fields.p, f);
            fields.q = new CutoverField(julianchronology.j(), fields.q, f);
            fields.r = new CutoverField(julianchronology.k(), fields.r, f);
            fields.s = new CutoverField(julianchronology.m(), fields.s, f);
            fields.u = new CutoverField(julianchronology.p(), fields.u, f);
            fields.t = new CutoverField(julianchronology.n(), fields.t, f);
            fields.v = new CutoverField(julianchronology.q(), fields.v, f);
            fields.w = new CutoverField(julianchronology.r(), fields.w, f);
        }
        fields.I = new CutoverField(julianchronology.K(), fields.I, f);
        long l = gregorianchronology.E().f(f);
        fields.z = new CutoverField(julianchronology.v(), fields.z, l);
        long l1 = gregorianchronology.z().f(f);
        fields.A = new CutoverField(julianchronology.x(), fields.A, l1, true);
        fields.E = new ImpreciseCutoverField(julianchronology.E(), fields.E, f);
        fields.j = fields.E.e();
        fields.F = new ImpreciseCutoverField(julianchronology.F(), fields.F, fields.j, f);
        fields.G = new ImpreciseCutoverField(julianchronology.G(), fields.G, fields.j, f);
        fields.H = new ImpreciseCutoverField(julianchronology.I(), fields.H, f);
        fields.k = fields.H.e();
        fields.D = new ImpreciseCutoverField(julianchronology.C(), fields.D, f);
        fields.i = fields.D.e();
        fields.B = new ImpreciseCutoverField(julianchronology.z(), fields.B, null, f, true);
        fields.C = new ImpreciseCutoverField(julianchronology.A(), fields.C, fields.h, f);
        fields.h = fields.B.e();
        CutoverField cutoverfield = new CutoverField(julianchronology.u(), fields.y, f);
        cutoverfield.f = fields.i;
        fields.y = cutoverfield;
    }

    long b(long l)
    {
        return a(l, d, c);
    }

    public Chronology b()
    {
        return a(DateTimeZone.a);
    }

    long c(long l)
    {
        return b(l, c, d);
    }

    long d(long l)
    {
        return b(l, d, c);
    }

    public boolean equals(Object obj)
    {
        GJChronology gjchronology;
        if (this != obj)
        {
            if (obj instanceof GJChronology)
            {
                if (f != (gjchronology = (GJChronology)obj).f || P() != gjchronology.P() || !a().equals(gjchronology.a()))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 11 * "GJ".hashCode() + a().hashCode() + P() + e.hashCode();
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer(60);
        stringbuffer.append("GJChronology");
        stringbuffer.append('[');
        stringbuffer.append(a().c());
        if (f != a.x_())
        {
            stringbuffer.append(",cutover=");
            DateTimeFormatter datetimeformatter;
            if (b().v().j(f) == 0L)
            {
                datetimeformatter = ISODateTimeFormat.c();
            } else
            {
                datetimeformatter = ISODateTimeFormat.f();
            }
            datetimeformatter.a(b()).a(stringbuffer, f);
        }
        if (P() != 4)
        {
            stringbuffer.append(",mdfw=");
            stringbuffer.append(P());
        }
        stringbuffer.append(']');
        return stringbuffer.toString();
    }

}
