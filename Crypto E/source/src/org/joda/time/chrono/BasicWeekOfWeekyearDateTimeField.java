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

final class BasicWeekOfWeekyearDateTimeField extends PreciseDurationDateTimeField
{

    private final BasicChronology b;

    BasicWeekOfWeekyearDateTimeField(BasicChronology basicchronology, DurationField durationfield)
    {
        super(DateTimeFieldType.o(), durationfield);
        b = basicchronology;
    }

    public int a(long l)
    {
        return b.f(l);
    }

    public int b(ReadablePartial readablepartial)
    {
        if (readablepartial.b(DateTimeFieldType.p()))
        {
            int k = readablepartial.a(DateTimeFieldType.p());
            return b.b(k);
        } else
        {
            return 53;
        }
    }

    public int b(ReadablePartial readablepartial, int ai[])
    {
        int k = readablepartial.a();
        for (int l = 0; l < k; l++)
        {
            if (readablepartial.b(l) == DateTimeFieldType.p())
            {
                int i1 = ai[l];
                return b.b(i1);
            }
        }

        return 53;
    }

    protected int c(long l, int k)
    {
        int i1 = 52;
        if (k > i1)
        {
            i1 = d(l);
        }
        return i1;
    }

    public int d(long l)
    {
        int k = b.e(l);
        return b.b(k);
    }

    public long e(long l)
    {
        return super.e(l + 0xf731400L) - 0xf731400L;
    }

    public long f(long l)
    {
        return super.f(l + 0xf731400L) - 0xf731400L;
    }

    public DurationField f()
    {
        return b.y();
    }

    public int h()
    {
        return 1;
    }

    public int i()
    {
        return 53;
    }

    public long j(long l)
    {
        return super.j(0xf731400L + l);
    }
}
