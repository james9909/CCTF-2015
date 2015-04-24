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

final class BasicDayOfYearDateTimeField extends PreciseDurationDateTimeField
{

    private final BasicChronology b;

    BasicDayOfYearDateTimeField(BasicChronology basicchronology, DurationField durationfield)
    {
        super(DateTimeFieldType.n(), durationfield);
        b = basicchronology;
    }

    public int a(long l)
    {
        return b.d(l);
    }

    public int b(ReadablePartial readablepartial)
    {
        if (readablepartial.b(DateTimeFieldType.s()))
        {
            int j = readablepartial.a(DateTimeFieldType.s());
            return b.a(j);
        } else
        {
            return b.O();
        }
    }

    public int b(ReadablePartial readablepartial, int ai[])
    {
        int j = readablepartial.a();
        for (int k = 0; k < j; k++)
        {
            if (readablepartial.b(k) == DateTimeFieldType.s())
            {
                int l = ai[k];
                return b.a(l);
            }
        }

        return b.O();
    }

    protected int c(long l, int j)
    {
        int k = -1 + b.O();
        if (j > k || j < 1)
        {
            k = d(l);
        }
        return k;
    }

    public int d(long l)
    {
        int j = b.a(l);
        return b.a(j);
    }

    public DurationField f()
    {
        return b.D();
    }

    public int h()
    {
        return 1;
    }

    public int i()
    {
        return b.O();
    }
}
