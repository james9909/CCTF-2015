// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.field.BaseDurationField;

// Referenced classes of package org.joda.time.chrono:
//            ZonedChronology

static class c extends BaseDurationField
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

    (DurationField durationfield, DateTimeZone datetimezone)
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
