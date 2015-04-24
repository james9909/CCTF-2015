// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;
import org.joda.time.field.DividedDateTimeField;
import org.joda.time.field.FieldUtils;
import org.joda.time.field.MillisDurationField;
import org.joda.time.field.OffsetDateTimeField;
import org.joda.time.field.PreciseDateTimeField;
import org.joda.time.field.PreciseDurationField;
import org.joda.time.field.RemainderDateTimeField;
import org.joda.time.field.ZeroIsMaxDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            AssembledChronology, BasicYearDateTimeField, GJYearOfEraDateTimeField, GJEraDateTimeField, 
//            GJDayOfWeekDateTimeField, BasicDayOfMonthDateTimeField, BasicDayOfYearDateTimeField, GJMonthOfYearDateTimeField, 
//            BasicWeekyearDateTimeField, BasicWeekOfWeekyearDateTimeField, GJLocaleSymbols

abstract class BasicChronology extends AssembledChronology
{
    static class HalfdayField extends PreciseDateTimeField
    {

        public int a(Locale locale)
        {
            return GJLocaleSymbols.a(locale).d();
        }

        public long a(long l1, String s1, Locale locale)
        {
            return b(l1, GJLocaleSymbols.a(locale).d(s1));
        }

        public String a(int i1, Locale locale)
        {
            return GJLocaleSymbols.a(locale).f(i1);
        }

        HalfdayField()
        {
            super(DateTimeFieldType.k(), BasicChronology.X(), BasicChronology.Y());
        }
    }

    static class YearInfo
    {

        public final int a;
        public final long b;

        YearInfo(int i1, long l1)
        {
            a = i1;
            b = l1;
        }
    }


    private static final DurationField a;
    private static final DurationField b;
    private static final DurationField c;
    private static final DurationField d;
    private static final DurationField e;
    private static final DurationField f;
    private static final DurationField g = new PreciseDurationField(DurationFieldType.g(), 0x240c8400L);
    private static final DateTimeField h;
    private static final DateTimeField i;
    private static final DateTimeField j;
    private static final DateTimeField k;
    private static final DateTimeField l;
    private static final DateTimeField m;
    private static final DateTimeField n;
    private static final DateTimeField o;
    private static final DateTimeField p;
    private static final DateTimeField q;
    private static final DateTimeField r = new HalfdayField();
    private final transient YearInfo s[] = new YearInfo[1024];
    private final int t;

    BasicChronology(Chronology chronology, Object obj, int i1)
    {
        super(chronology, obj);
        if (i1 < 1 || i1 > 7)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid min days in first week: ").append(i1).toString());
        } else
        {
            t = i1;
            return;
        }
    }

    static DurationField X()
    {
        return e;
    }

    static DurationField Y()
    {
        return f;
    }

    private YearInfo i(int i1)
    {
        YearInfo yearinfo = s[i1 & 0x3ff];
        if (yearinfo == null || yearinfo.a != i1)
        {
            yearinfo = new YearInfo(i1, g(i1));
            s[i1 & 0x3ff] = yearinfo;
        }
        return yearinfo;
    }

    public int N()
    {
        return t;
    }

    int O()
    {
        return 366;
    }

    int P()
    {
        return 31;
    }

    abstract int Q();

    abstract int R();

    int S()
    {
        return 12;
    }

    abstract long T();

    abstract long U();

    abstract long V();

    abstract long W();

    int a(int i1)
    {
        return !e(i1) ? 365 : 366;
    }

    int a(long l1)
    {
        long l2 = 0x757b12c00L;
        long l3 = U();
        long l4 = (l1 >> 1) + W();
        if (l4 < 0L)
        {
            l4 = 1L + (l4 - l3);
        }
        int i1 = (int)(l4 / l3);
        long l5 = d(i1);
        long l6 = l1 - l5;
        if (l6 < 0L)
        {
            i1--;
        } else
        if (l6 >= l2)
        {
            if (e(i1))
            {
                l2 = 0x75cd78800L;
            }
            if (l2 + l5 <= l1)
            {
                return i1 + 1;
            }
        }
        return i1;
    }

    abstract int a(long l1, int i1);

    int a(long l1, int i1, int j1)
    {
        return 1 + (int)((l1 - (d(i1) + c(i1, j1))) / 0x5265c00L);
    }

    long a(int i1, int j1)
    {
        return d(i1) + c(i1, j1);
    }

    long a(int i1, int j1, int k1)
    {
        return d(i1) + c(i1, j1) + 0x5265c00L * (long)(k1 - 1);
    }

    public long a(int i1, int j1, int k1, int l1)
    {
        Chronology chronology = L();
        if (chronology != null)
        {
            return chronology.a(i1, j1, k1, l1);
        } else
        {
            FieldUtils.a(DateTimeFieldType.b(), l1, 0, 0x5265bff);
            return b(i1, j1, k1) + (long)l1;
        }
    }

    public long a(int i1, int j1, int k1, int l1, int i2, int j2, int k2)
    {
        Chronology chronology = L();
        if (chronology != null)
        {
            return chronology.a(i1, j1, k1, l1, i2, j2, k2);
        } else
        {
            FieldUtils.a(DateTimeFieldType.g(), l1, 0, 23);
            FieldUtils.a(DateTimeFieldType.e(), i2, 0, 59);
            FieldUtils.a(DateTimeFieldType.c(), j2, 0, 59);
            FieldUtils.a(DateTimeFieldType.a(), k2, 0, 999);
            return b(i1, j1, k1) + (long)(0x36ee80 * l1) + (long)(60000 * i2) + (long)(j2 * 1000) + (long)k2;
        }
    }

    abstract long a(long l1, long l2);

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
        fields.a = a;
        fields.b = b;
        fields.c = c;
        fields.d = d;
        fields.e = e;
        fields.f = f;
        fields.g = g;
        fields.m = h;
        fields.n = i;
        fields.o = j;
        fields.p = k;
        fields.q = l;
        fields.r = m;
        fields.s = n;
        fields.u = o;
        fields.t = p;
        fields.v = q;
        fields.w = r;
        fields.E = new BasicYearDateTimeField(this);
        fields.F = new GJYearOfEraDateTimeField(fields.E, this);
        fields.H = new DividedDateTimeField(new OffsetDateTimeField(fields.F, 99), DateTimeFieldType.v(), 100);
        fields.G = new OffsetDateTimeField(new RemainderDateTimeField((DividedDateTimeField)fields.H), DateTimeFieldType.u(), 1);
        fields.I = new GJEraDateTimeField(this);
        fields.x = new GJDayOfWeekDateTimeField(this, fields.f);
        fields.y = new BasicDayOfMonthDateTimeField(this, fields.f);
        fields.z = new BasicDayOfYearDateTimeField(this, fields.f);
        fields.D = new GJMonthOfYearDateTimeField(this);
        fields.B = new BasicWeekyearDateTimeField(this);
        fields.A = new BasicWeekOfWeekyearDateTimeField(this, fields.g);
        fields.C = new OffsetDateTimeField(new RemainderDateTimeField(fields.B, DateTimeFieldType.q(), 100), DateTimeFieldType.q(), 1);
        fields.j = fields.E.e();
        fields.k = fields.H.e();
        fields.i = fields.D.e();
        fields.h = fields.B.e();
    }

    int b(int i1)
    {
        long l1 = c(i1);
        return (int)((c(i1 + 1) - l1) / 0x240c8400L);
    }

    abstract int b(int i1, int j1);

    int b(long l1)
    {
        return a(l1, a(l1));
    }

    int b(long l1, int i1)
    {
        return a(l1, i1, a(l1, i1));
    }

    long b(int i1, int j1, int k1)
    {
        FieldUtils.a(DateTimeFieldType.s(), i1, Q(), R());
        FieldUtils.a(DateTimeFieldType.r(), j1, 1, h(i1));
        FieldUtils.a(DateTimeFieldType.m(), k1, 1, b(i1, j1));
        return a(i1, j1, k1);
    }

    int c(long l1)
    {
        int i1 = a(l1);
        return a(l1, i1, a(l1, i1));
    }

    int c(long l1, int i1)
    {
        return 1 + (int)((l1 - d(i1)) / 0x5265c00L);
    }

    long c(int i1)
    {
        long l1 = d(i1);
        int j1 = g(l1);
        if (j1 > 8 - t)
        {
            return l1 + 0x5265c00L * (long)(8 - j1);
        } else
        {
            return l1 - 0x5265c00L * (long)(j1 - 1);
        }
    }

    abstract long c(int i1, int j1);

    int d(long l1)
    {
        return c(l1, a(l1));
    }

    int d(long l1, int i1)
    {
        long l2 = c(i1);
        if (l1 < l2)
        {
            return b(i1 - 1);
        }
        if (l1 >= c(i1 + 1))
        {
            return 1;
        } else
        {
            return 1 + (int)((l1 - l2) / 0x240c8400L);
        }
    }

    long d(int i1)
    {
        return i(i1).b;
    }

    int e(long l1)
    {
        int i1 = a(l1);
        int j1 = d(l1, i1);
        if (j1 == 1)
        {
            i1 = a(0x240c8400L + l1);
        } else
        if (j1 > 51)
        {
            return a(l1 - 0x48190800L);
        }
        return i1;
    }

    int e(long l1, int i1)
    {
        return i(l1);
    }

    abstract boolean e(int i1);

    public boolean equals(Object obj)
    {
        BasicChronology basicchronology;
        if (this != obj)
        {
            if (obj != null && getClass() == obj.getClass())
            {
                if (N() != (basicchronology = (BasicChronology)obj).N() || !a().equals(basicchronology.a()))
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

    abstract int f(int i1);

    int f(long l1)
    {
        return d(l1, a(l1));
    }

    abstract long f(long l1, int i1);

    int g(long l1)
    {
        long l2;
        if (l1 >= 0L)
        {
            l2 = l1 / 0x5265c00L;
        } else
        {
            l2 = (l1 - 0x5265bffL) / 0x5265c00L;
            if (l2 < -3L)
            {
                return 7 + (int)((l2 + 4L) % 7L);
            }
        }
        return 1 + (int)((l2 + 3L) % 7L);
    }

    abstract long g(int i1);

    int h(int i1)
    {
        return S();
    }

    int h(long l1)
    {
        if (l1 >= 0L)
        {
            return (int)(l1 % 0x5265c00L);
        } else
        {
            return 0x5265bff + (int)((1L + l1) % 0x5265c00L);
        }
    }

    public int hashCode()
    {
        return 11 * getClass().getName().hashCode() + a().hashCode() + N();
    }

    int i(long l1)
    {
        int i1 = a(l1);
        return b(i1, a(l1, i1));
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(60);
        String s1 = getClass().getName();
        int i1 = s1.lastIndexOf('.');
        if (i1 >= 0)
        {
            s1 = s1.substring(i1 + 1);
        }
        stringbuilder.append(s1);
        stringbuilder.append('[');
        DateTimeZone datetimezone = a();
        if (datetimezone != null)
        {
            stringbuilder.append(datetimezone.c());
        }
        if (N() != 4)
        {
            stringbuilder.append(",mdfw=");
            stringbuilder.append(N());
        }
        stringbuilder.append(']');
        return stringbuilder.toString();
    }

    static 
    {
        a = MillisDurationField.a;
        b = new PreciseDurationField(DurationFieldType.b(), 1000L);
        c = new PreciseDurationField(DurationFieldType.c(), 60000L);
        d = new PreciseDurationField(DurationFieldType.d(), 0x36ee80L);
        e = new PreciseDurationField(DurationFieldType.e(), 0x2932e00L);
        f = new PreciseDurationField(DurationFieldType.f(), 0x5265c00L);
        h = new PreciseDateTimeField(DateTimeFieldType.a(), a, b);
        i = new PreciseDateTimeField(DateTimeFieldType.b(), a, f);
        j = new PreciseDateTimeField(DateTimeFieldType.c(), b, c);
        k = new PreciseDateTimeField(DateTimeFieldType.d(), b, f);
        l = new PreciseDateTimeField(DateTimeFieldType.e(), c, d);
        m = new PreciseDateTimeField(DateTimeFieldType.f(), c, f);
        n = new PreciseDateTimeField(DateTimeFieldType.g(), d, f);
        o = new PreciseDateTimeField(DateTimeFieldType.i(), d, e);
        p = new ZeroIsMaxDateTimeField(n, DateTimeFieldType.h());
        q = new ZeroIsMaxDateTimeField(o, DateTimeFieldType.j());
    }
}
