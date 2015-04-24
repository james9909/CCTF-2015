// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.HashMap;
import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.MutableDateTime;
import org.joda.time.ReadableDateTime;
import org.joda.time.field.DecoratedDateTimeField;
import org.joda.time.field.DecoratedDurationField;
import org.joda.time.field.FieldUtils;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

// Referenced classes of package org.joda.time.chrono:
//            AssembledChronology

public final class LimitChronology extends AssembledChronology
{
    class LimitDateTimeField extends DecoratedDateTimeField
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

        LimitDateTimeField(DateTimeField datetimefield, DurationField durationfield, DurationField durationfield1, DurationField durationfield2)
        {
            a = LimitChronology.this;
            super(datetimefield, datetimefield.a());
            b = durationfield;
            c = durationfield1;
            d = durationfield2;
        }
    }

    class LimitDurationField extends DecoratedDurationField
    {

        final LimitChronology a;

        public long a(long l, int i)
        {
            a.a(l, null);
            long l1 = f().a(l, i);
            a.a(l1, "resulting");
            return l1;
        }

        public long a(long l, long l1)
        {
            a.a(l, null);
            long l2 = f().a(l, l1);
            a.a(l2, "resulting");
            return l2;
        }

        public int b(long l, long l1)
        {
            a.a(l, "minuend");
            a.a(l1, "subtrahend");
            return f().b(l, l1);
        }

        public long c(long l, long l1)
        {
            a.a(l, "minuend");
            a.a(l1, "subtrahend");
            return f().c(l, l1);
        }

        LimitDurationField(DurationField durationfield)
        {
            a = LimitChronology.this;
            super(durationfield, durationfield.a());
        }
    }

    class LimitException extends IllegalArgumentException
    {

        final LimitChronology a;
        private final boolean b;

        public String getMessage()
        {
            StringBuffer stringbuffer = new StringBuffer(85);
            stringbuffer.append("The");
            String s = super.getMessage();
            if (s != null)
            {
                stringbuffer.append(' ');
                stringbuffer.append(s);
            }
            stringbuffer.append(" instant is ");
            DateTimeFormatter datetimeformatter = ISODateTimeFormat.f().a(a.L());
            if (b)
            {
                stringbuffer.append("below the supported minimum of ");
                datetimeformatter.a(stringbuffer, a.N().x_());
            } else
            {
                stringbuffer.append("above the supported maximum of ");
                datetimeformatter.a(stringbuffer, a.O().x_());
            }
            stringbuffer.append(" (");
            stringbuffer.append(a.L());
            stringbuffer.append(')');
            return stringbuffer.toString();
        }

        public String toString()
        {
            return (new StringBuilder()).append("IllegalArgumentException: ").append(getMessage()).toString();
        }

        LimitException(String s, boolean flag)
        {
            a = LimitChronology.this;
            super(s);
            b = flag;
        }
    }


    final DateTime a;
    final DateTime b;
    private transient LimitChronology c;

    private LimitChronology(Chronology chronology, DateTime datetime, DateTime datetime1)
    {
        super(chronology, null);
        a = datetime;
        b = datetime1;
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
            LimitDateTimeField limitdatetimefield = new LimitDateTimeField(datetimefield, a(datetimefield.e(), hashmap), a(datetimefield.f(), hashmap), a(datetimefield.g(), hashmap));
            hashmap.put(datetimefield, limitdatetimefield);
            return limitdatetimefield;
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
            LimitDurationField limitdurationfield = new LimitDurationField(durationfield);
            hashmap.put(durationfield, limitdurationfield);
            return limitdurationfield;
        }
    }

    public static LimitChronology a(Chronology chronology, ReadableDateTime readabledatetime, ReadableDateTime readabledatetime1)
    {
        if (chronology == null)
        {
            throw new IllegalArgumentException("Must supply a chronology");
        }
        DateTime datetime;
        Object obj;
        if (readabledatetime == null)
        {
            datetime = null;
        } else
        {
            datetime = readabledatetime.a();
        }
        obj = null;
        if (readabledatetime1 != null)
        {
            obj = readabledatetime1.a();
        }
        if (datetime != null && obj != null && !datetime.a(((org.joda.time.ReadableInstant) (obj))))
        {
            throw new IllegalArgumentException("The lower limit must be come before than the upper limit");
        } else
        {
            return new LimitChronology(chronology, (DateTime)datetime, (DateTime)obj);
        }
    }

    public DateTime N()
    {
        return a;
    }

    public DateTime O()
    {
        return b;
    }

    public long a(int i, int j, int k, int l)
    {
        long l1 = L().a(i, j, k, l);
        a(l1, "resulting");
        return l1;
    }

    public long a(int i, int j, int k, int l, int i1, int j1, int k1)
    {
        long l1 = L().a(i, j, k, l, i1, j1, k1);
        a(l1, "resulting");
        return l1;
    }

    public long a(long l, int i, int j, int k, int i1)
    {
        a(l, ((String) (null)));
        long l1 = L().a(l, i, j, k, i1);
        a(l1, "resulting");
        return l1;
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
        }
        if (datetimezone == DateTimeZone.a && c != null)
        {
            return c;
        }
        DateTime datetime = a;
        if (datetime != null)
        {
            MutableDateTime mutabledatetime1 = datetime.e();
            mutabledatetime1.a(datetimezone);
            datetime = mutabledatetime1.a();
        }
        DateTime datetime1 = b;
        if (datetime1 != null)
        {
            MutableDateTime mutabledatetime = datetime1.e();
            mutabledatetime.a(datetimezone);
            datetime1 = mutabledatetime.a();
        }
        LimitChronology limitchronology = a(L().a(datetimezone), ((ReadableDateTime) (datetime)), ((ReadableDateTime) (datetime1)));
        if (datetimezone == DateTimeZone.a)
        {
            c = limitchronology;
        }
        return limitchronology;
    }

    void a(long l, String s)
    {
        DateTime datetime = a;
        if (datetime != null && l < datetime.x_())
        {
            throw new LimitException(s, true);
        }
        DateTime datetime1 = b;
        if (datetime1 != null && l >= datetime1.x_())
        {
            throw new LimitException(s, false);
        } else
        {
            return;
        }
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
        return a(DateTimeZone.a);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof LimitChronology))
            {
                return false;
            }
            LimitChronology limitchronology = (LimitChronology)obj;
            if (!L().equals(limitchronology.L()) || !FieldUtils.a(N(), limitchronology.N()) || !FieldUtils.a(O(), limitchronology.O()))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i;
        int j;
        DateTime datetime;
        int k;
        if (N() != null)
        {
            i = N().hashCode();
        } else
        {
            i = 0;
        }
        j = i + 0x12ea67c5;
        datetime = O();
        k = 0;
        if (datetime != null)
        {
            k = O().hashCode();
        }
        return j + k + 7 * L().hashCode();
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("LimitChronology[").append(L().toString()).append(", ");
        String s;
        StringBuilder stringbuilder1;
        String s1;
        if (N() == null)
        {
            s = "NoLimit";
        } else
        {
            s = N().toString();
        }
        stringbuilder1 = stringbuilder.append(s).append(", ");
        if (O() == null)
        {
            s1 = "NoLimit";
        } else
        {
            s1 = O().toString();
        }
        return stringbuilder1.append(s1).append(']').toString();
    }
}
