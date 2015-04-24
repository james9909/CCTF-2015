// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;

// Referenced classes of package org.joda.time.field:
//            BaseDateTimeField, FieldUtils

public abstract class PreciseDurationDateTimeField extends BaseDateTimeField
{

    final long a;
    private final DurationField b;

    public PreciseDurationDateTimeField(DateTimeFieldType datetimefieldtype, DurationField durationfield)
    {
        super(datetimefieldtype);
        if (!durationfield.c())
        {
            throw new IllegalArgumentException("Unit duration field must be precise");
        }
        a = durationfield.d();
        if (a < 1L)
        {
            throw new IllegalArgumentException("The unit milliseconds must be at least 1");
        } else
        {
            b = durationfield;
            return;
        }
    }

    public long b(long l, int i)
    {
        FieldUtils.a(this, i, h(), c(l, i));
        return l + (long)(i - a(l)) * a;
    }

    public int c(long l, int i)
    {
        return d(l);
    }

    public boolean d()
    {
        return false;
    }

    public long e(long l)
    {
        if (l >= 0L)
        {
            return l - l % a;
        } else
        {
            long l1 = 1L + l;
            return l1 - l1 % a - a;
        }
    }

    public DurationField e()
    {
        return b;
    }

    public long f(long l)
    {
        if (l > 0L)
        {
            long l1 = l - 1L;
            return (l1 - l1 % a) + a;
        } else
        {
            return l - l % a;
        }
    }

    public int h()
    {
        return 0;
    }

    public final long j()
    {
        return a;
    }

    public long j(long l)
    {
        if (l >= 0L)
        {
            return l % a;
        } else
        {
            return ((l + 1L) % a + a) - 1L;
        }
    }
}
