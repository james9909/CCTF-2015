// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.ReadablePartial;
import org.joda.time.field.PreciseDurationDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            BasicChronology

final class BasicDayOfMonthDateTimeField extends PreciseDurationDateTimeField
{

    private final BasicChronology b;

    BasicDayOfMonthDateTimeField(BasicChronology basicchronology, DurationField durationfield)
    {
        super(DateTimeFieldType.m(), durationfield);
        b = basicchronology;
    }

    public int a(long l)
    {
        return b.c(l);
    }

    public int b(ReadablePartial readablepartial)
    {
        if (readablepartial.b(DateTimeFieldType.r()))
        {
            int j = readablepartial.a(DateTimeFieldType.r());
            if (readablepartial.b(DateTimeFieldType.s()))
            {
                int k = readablepartial.a(DateTimeFieldType.s());
                return b.b(k, j);
            } else
            {
                return b.f(j);
            }
        } else
        {
            return i();
        }
    }

    public int b(ReadablePartial readablepartial, int ai[])
    {
        int j = 0;
        int k = readablepartial.a();
        for (int l = 0; l < k; l++)
        {
            if (readablepartial.b(l) == DateTimeFieldType.r())
            {
                int i1 = ai[l];
                for (; j < k; j++)
                {
                    if (readablepartial.b(j) == DateTimeFieldType.s())
                    {
                        int j1 = ai[j];
                        return b.b(j1, i1);
                    }
                }

                return b.f(i1);
            }
        }

        return i();
    }

    protected int c(long l, int j)
    {
        return b.e(l, j);
    }

    public int d(long l)
    {
        return b.i(l);
    }

    public DurationField f()
    {
        return b.B();
    }

    public int h()
    {
        return 1;
    }

    public int i()
    {
        return b.P();
    }
}
