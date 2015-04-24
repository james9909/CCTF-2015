// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;

// Referenced classes of package org.joda.time.field:
//            BaseDurationField

public class DecoratedDurationField extends BaseDurationField
{

    private final DurationField a;

    public DecoratedDurationField(DurationField durationfield, DurationFieldType durationfieldtype)
    {
        super(durationfieldtype);
        if (durationfield == null)
        {
            throw new IllegalArgumentException("The field must not be null");
        }
        if (!durationfield.b())
        {
            throw new IllegalArgumentException("The field must be supported");
        } else
        {
            a = durationfield;
            return;
        }
    }

    public long a(long l, int i)
    {
        return a.a(l, i);
    }

    public long a(long l, long l1)
    {
        return a.a(l, l1);
    }

    public long c(long l, long l1)
    {
        return a.c(l, l1);
    }

    public boolean c()
    {
        return a.c();
    }

    public long d()
    {
        return a.d();
    }

    public final DurationField f()
    {
        return a;
    }
}
