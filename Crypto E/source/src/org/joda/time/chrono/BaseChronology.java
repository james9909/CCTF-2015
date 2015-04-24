// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.io.Serializable;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.ReadablePartial;
import org.joda.time.ReadablePeriod;
import org.joda.time.field.UnsupportedDateTimeField;
import org.joda.time.field.UnsupportedDurationField;

public abstract class BaseChronology extends Chronology
    implements Serializable
{

    public BaseChronology()
    {
    }

    public DateTimeField A()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.q(), y());
    }

    public DurationField B()
    {
        return UnsupportedDurationField.a(DurationFieldType.i());
    }

    public DateTimeField C()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.r(), B());
    }

    public DurationField D()
    {
        return UnsupportedDurationField.a(DurationFieldType.j());
    }

    public DateTimeField E()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.s(), D());
    }

    public DateTimeField F()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.t(), D());
    }

    public DateTimeField G()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.u(), D());
    }

    public DurationField H()
    {
        return UnsupportedDurationField.a(DurationFieldType.k());
    }

    public DateTimeField I()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.v(), H());
    }

    public DurationField J()
    {
        return UnsupportedDurationField.a(DurationFieldType.l());
    }

    public DateTimeField K()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.w(), J());
    }

    public long a(int i1, int j1, int k1, int l1)
    {
        long l2 = E().b(0L, i1);
        long l3 = C().b(l2, j1);
        long l4 = u().b(l3, k1);
        return e().b(l4, l1);
    }

    public long a(int i1, int j1, int k1, int l1, int i2, int j2, int k2)
    {
        long l2 = E().b(0L, i1);
        long l3 = C().b(l2, j1);
        long l4 = u().b(l3, k1);
        long l5 = m().b(l4, l1);
        long l6 = j().b(l5, i2);
        long l7 = g().b(l6, j2);
        return d().b(l7, k2);
    }

    public long a(long l1, int i1, int j1, int k1, int i2)
    {
        long l2 = m().b(l1, i1);
        long l3 = j().b(l2, j1);
        long l4 = g().b(l3, k1);
        return d().b(l4, i2);
    }

    public void a(ReadablePartial readablepartial, int ai[])
    {
        int i1;
        int k1;
        i1 = readablepartial.a();
        int j1 = 0;
        do
        {
            k1 = 0;
            if (j1 >= i1)
            {
                break;
            }
            int i2 = ai[j1];
            DateTimeField datetimefield1 = readablepartial.c(j1);
            if (i2 < datetimefield1.h())
            {
                throw new IllegalFieldValueException(datetimefield1.a(), Integer.valueOf(i2), Integer.valueOf(datetimefield1.h()), null);
            }
            if (i2 > datetimefield1.i())
            {
                throw new IllegalFieldValueException(datetimefield1.a(), Integer.valueOf(i2), null, Integer.valueOf(datetimefield1.i()));
            }
            j1++;
        } while (true);
_L3:
        if (k1 < i1)
        {
            int l1 = ai[k1];
            DateTimeField datetimefield = readablepartial.c(k1);
            if (l1 < datetimefield.a(readablepartial, ai))
            {
                throw new IllegalFieldValueException(datetimefield.a(), Integer.valueOf(l1), Integer.valueOf(datetimefield.a(readablepartial, ai)), null);
            }
            if (l1 > datetimefield.b(readablepartial, ai))
            {
                throw new IllegalFieldValueException(datetimefield.a(), Integer.valueOf(l1), null, Integer.valueOf(datetimefield.b(readablepartial, ai)));
            }
        } else
        {
            return;
        }
        if (true) goto _L2; else goto _L1
_L2:
        k1++;
        if (true) goto _L3; else goto _L1
_L1:
    }

    public int[] a(ReadablePartial readablepartial, long l1)
    {
        int i1 = readablepartial.a();
        int ai[] = new int[i1];
        for (int j1 = 0; j1 < i1; j1++)
        {
            ai[j1] = readablepartial.b(j1).a(this).a(l1);
        }

        return ai;
    }

    public int[] a(ReadablePeriod readableperiod, long l1)
    {
        int i1 = readableperiod.c();
        int ai[] = new int[i1];
        if (l1 != 0L)
        {
            long l2 = 0L;
            for (int j1 = 0; j1 < i1; j1++)
            {
                DurationField durationfield = readableperiod.b(j1).a(this);
                if (durationfield.c())
                {
                    int k1 = durationfield.b(l1, l2);
                    l2 = durationfield.a(l2, k1);
                    ai[j1] = k1;
                }
            }

        }
        return ai;
    }

    public long b(ReadablePartial readablepartial, long l1)
    {
        int i1 = 0;
        for (int j1 = readablepartial.a(); i1 < j1; i1++)
        {
            l1 = readablepartial.b(i1).a(this).b(l1, readablepartial.a(i1));
        }

        return l1;
    }

    public DurationField c()
    {
        return UnsupportedDurationField.a(DurationFieldType.a());
    }

    public DateTimeField d()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.a(), c());
    }

    public DateTimeField e()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.b(), c());
    }

    public DurationField f()
    {
        return UnsupportedDurationField.a(DurationFieldType.b());
    }

    public DateTimeField g()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.c(), f());
    }

    public DateTimeField h()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.d(), f());
    }

    public DurationField i()
    {
        return UnsupportedDurationField.a(DurationFieldType.c());
    }

    public DateTimeField j()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.e(), i());
    }

    public DateTimeField k()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.f(), i());
    }

    public DurationField l()
    {
        return UnsupportedDurationField.a(DurationFieldType.d());
    }

    public DateTimeField m()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.g(), l());
    }

    public DateTimeField n()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.h(), l());
    }

    public DurationField o()
    {
        return UnsupportedDurationField.a(DurationFieldType.e());
    }

    public DateTimeField p()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.i(), l());
    }

    public DateTimeField q()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.j(), l());
    }

    public DateTimeField r()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.k(), o());
    }

    public DurationField s()
    {
        return UnsupportedDurationField.a(DurationFieldType.f());
    }

    public DateTimeField t()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.l(), s());
    }

    public DateTimeField u()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.m(), s());
    }

    public DateTimeField v()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.n(), s());
    }

    public DurationField w()
    {
        return UnsupportedDurationField.a(DurationFieldType.g());
    }

    public DateTimeField x()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.o(), w());
    }

    public DurationField y()
    {
        return UnsupportedDurationField.a(DurationFieldType.h());
    }

    public DateTimeField z()
    {
        return UnsupportedDateTimeField.a(DateTimeFieldType.p(), y());
    }
}
