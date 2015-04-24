// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;

// Referenced classes of package org.joda.time:
//            DurationFieldType, Chronology, DateTimeField, DateTimeUtils

public abstract class DateTimeFieldType
    implements Serializable
{
    static class StandardDateTimeFieldType extends DateTimeFieldType
    {

        private final byte a;
        private final transient DurationFieldType b;
        private final transient DurationFieldType c;

        public DateTimeField a(Chronology chronology)
        {
            Chronology chronology1 = DateTimeUtils.a(chronology);
            switch (a)
            {
            default:
                throw new InternalError();

            case 1: // '\001'
                return chronology1.K();

            case 2: // '\002'
                return chronology1.F();

            case 3: // '\003'
                return chronology1.I();

            case 4: // '\004'
                return chronology1.G();

            case 5: // '\005'
                return chronology1.E();

            case 6: // '\006'
                return chronology1.v();

            case 7: // '\007'
                return chronology1.C();

            case 8: // '\b'
                return chronology1.u();

            case 9: // '\t'
                return chronology1.A();

            case 10: // '\n'
                return chronology1.z();

            case 11: // '\013'
                return chronology1.x();

            case 12: // '\f'
                return chronology1.t();

            case 13: // '\r'
                return chronology1.r();

            case 14: // '\016'
                return chronology1.p();

            case 15: // '\017'
                return chronology1.q();

            case 16: // '\020'
                return chronology1.n();

            case 17: // '\021'
                return chronology1.m();

            case 18: // '\022'
                return chronology1.k();

            case 19: // '\023'
                return chronology1.j();

            case 20: // '\024'
                return chronology1.h();

            case 21: // '\025'
                return chronology1.g();

            case 22: // '\026'
                return chronology1.e();

            case 23: // '\027'
                return chronology1.d();
            }
        }

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj instanceof StandardDateTimeFieldType)
                {
                    if (a != ((StandardDateTimeFieldType)obj).a)
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
            return 1 << a;
        }

        public DurationFieldType y()
        {
            return b;
        }

        public DurationFieldType z()
        {
            return c;
        }

        StandardDateTimeFieldType(String s1, byte byte0, DurationFieldType durationfieldtype, DurationFieldType durationfieldtype1)
        {
            super(s1);
            a = byte0;
            b = durationfieldtype;
            c = durationfieldtype1;
        }
    }


    private static final DateTimeFieldType a = new StandardDateTimeFieldType("era", (byte)1, DurationFieldType.l(), null);
    private static final DateTimeFieldType b = new StandardDateTimeFieldType("yearOfEra", (byte)2, DurationFieldType.j(), DurationFieldType.l());
    private static final DateTimeFieldType c = new StandardDateTimeFieldType("centuryOfEra", (byte)3, DurationFieldType.k(), DurationFieldType.l());
    private static final DateTimeFieldType d = new StandardDateTimeFieldType("yearOfCentury", (byte)4, DurationFieldType.j(), DurationFieldType.k());
    private static final DateTimeFieldType e = new StandardDateTimeFieldType("year", (byte)5, DurationFieldType.j(), null);
    private static final DateTimeFieldType f = new StandardDateTimeFieldType("dayOfYear", (byte)6, DurationFieldType.f(), DurationFieldType.j());
    private static final DateTimeFieldType g = new StandardDateTimeFieldType("monthOfYear", (byte)7, DurationFieldType.i(), DurationFieldType.j());
    private static final DateTimeFieldType h = new StandardDateTimeFieldType("dayOfMonth", (byte)8, DurationFieldType.f(), DurationFieldType.i());
    private static final DateTimeFieldType i = new StandardDateTimeFieldType("weekyearOfCentury", (byte)9, DurationFieldType.h(), DurationFieldType.k());
    private static final DateTimeFieldType j = new StandardDateTimeFieldType("weekyear", (byte)10, DurationFieldType.h(), null);
    private static final DateTimeFieldType k = new StandardDateTimeFieldType("weekOfWeekyear", (byte)11, DurationFieldType.g(), DurationFieldType.h());
    private static final DateTimeFieldType l = new StandardDateTimeFieldType("dayOfWeek", (byte)12, DurationFieldType.f(), DurationFieldType.g());
    private static final DateTimeFieldType m = new StandardDateTimeFieldType("halfdayOfDay", (byte)13, DurationFieldType.e(), DurationFieldType.f());
    private static final DateTimeFieldType n = new StandardDateTimeFieldType("hourOfHalfday", (byte)14, DurationFieldType.d(), DurationFieldType.e());
    private static final DateTimeFieldType o = new StandardDateTimeFieldType("clockhourOfHalfday", (byte)15, DurationFieldType.d(), DurationFieldType.e());
    private static final DateTimeFieldType p = new StandardDateTimeFieldType("clockhourOfDay", (byte)16, DurationFieldType.d(), DurationFieldType.f());
    private static final DateTimeFieldType q = new StandardDateTimeFieldType("hourOfDay", (byte)17, DurationFieldType.d(), DurationFieldType.f());
    private static final DateTimeFieldType r = new StandardDateTimeFieldType("minuteOfDay", (byte)18, DurationFieldType.c(), DurationFieldType.f());
    private static final DateTimeFieldType s = new StandardDateTimeFieldType("minuteOfHour", (byte)19, DurationFieldType.c(), DurationFieldType.d());
    private static final DateTimeFieldType t = new StandardDateTimeFieldType("secondOfDay", (byte)20, DurationFieldType.b(), DurationFieldType.f());
    private static final DateTimeFieldType u = new StandardDateTimeFieldType("secondOfMinute", (byte)21, DurationFieldType.b(), DurationFieldType.c());
    private static final DateTimeFieldType v = new StandardDateTimeFieldType("millisOfDay", (byte)22, DurationFieldType.a(), DurationFieldType.f());
    private static final DateTimeFieldType w = new StandardDateTimeFieldType("millisOfSecond", (byte)23, DurationFieldType.a(), DurationFieldType.b());
    private final String x;

    protected DateTimeFieldType(String s1)
    {
        x = s1;
    }

    public static DateTimeFieldType a()
    {
        return w;
    }

    public static DateTimeFieldType b()
    {
        return v;
    }

    public static DateTimeFieldType c()
    {
        return u;
    }

    public static DateTimeFieldType d()
    {
        return t;
    }

    public static DateTimeFieldType e()
    {
        return s;
    }

    public static DateTimeFieldType f()
    {
        return r;
    }

    public static DateTimeFieldType g()
    {
        return q;
    }

    public static DateTimeFieldType h()
    {
        return p;
    }

    public static DateTimeFieldType i()
    {
        return n;
    }

    public static DateTimeFieldType j()
    {
        return o;
    }

    public static DateTimeFieldType k()
    {
        return m;
    }

    public static DateTimeFieldType l()
    {
        return l;
    }

    public static DateTimeFieldType m()
    {
        return h;
    }

    public static DateTimeFieldType n()
    {
        return f;
    }

    public static DateTimeFieldType o()
    {
        return k;
    }

    public static DateTimeFieldType p()
    {
        return j;
    }

    public static DateTimeFieldType q()
    {
        return i;
    }

    public static DateTimeFieldType r()
    {
        return g;
    }

    public static DateTimeFieldType s()
    {
        return e;
    }

    public static DateTimeFieldType t()
    {
        return b;
    }

    public static DateTimeFieldType u()
    {
        return d;
    }

    public static DateTimeFieldType v()
    {
        return c;
    }

    public static DateTimeFieldType w()
    {
        return a;
    }

    public abstract DateTimeField a(Chronology chronology);

    public String toString()
    {
        return x();
    }

    public String x()
    {
        return x;
    }

    public abstract DurationFieldType y();

    public abstract DurationFieldType z();

}
