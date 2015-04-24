// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;

// Referenced classes of package org.joda.time.field:
//            PreciseDurationDateTimeField, FieldUtils

public class PreciseDateTimeField extends PreciseDurationDateTimeField
{

    private final int b;
    private final DurationField c;

    public PreciseDateTimeField(DateTimeFieldType datetimefieldtype, DurationField durationfield, DurationField durationfield1)
    {
        super(datetimefieldtype, durationfield);
        if (!durationfield1.c())
        {
            throw new IllegalArgumentException("Range duration field must be precise");
        }
        b = (int)(durationfield1.d() / j());
        if (b < 2)
        {
            throw new IllegalArgumentException("The effective range must be at least 2");
        } else
        {
            c = durationfield1;
            return;
        }
    }

    public int a(long l)
    {
        if (l >= 0L)
        {
            return (int)((l / j()) % (long)b);
        } else
        {
            return -1 + b + (int)(((1L + l) / j()) % (long)b);
        }
    }

    public long b(long l, int j)
    {
        FieldUtils.a(this, j, h(), i());
        return l + (long)(j - a(l)) * a;
    }

    public DurationField f()
    {
        return c;
    }

    public int i()
    {
        return -1 + b;
    }
}
