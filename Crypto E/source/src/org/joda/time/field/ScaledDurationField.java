// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;

// Referenced classes of package org.joda.time.field:
//            DecoratedDurationField, FieldUtils

public class ScaledDurationField extends DecoratedDurationField
{

    private final int a;

    public ScaledDurationField(DurationField durationfield, DurationFieldType durationfieldtype, int i)
    {
        super(durationfield, durationfieldtype);
        if (i == 0 || i == 1)
        {
            throw new IllegalArgumentException("The scalar must not be 0 or 1");
        } else
        {
            a = i;
            return;
        }
    }

    public long a(long l, int i)
    {
        long l1 = (long)i * (long)a;
        return f().a(l, l1);
    }

    public long a(long l, long l1)
    {
        long l2 = FieldUtils.a(l1, a);
        return f().a(l, l2);
    }

    public int b(long l, long l1)
    {
        return f().b(l, l1) / a;
    }

    public long c(long l, long l1)
    {
        return f().c(l, l1) / (long)a;
    }

    public long d()
    {
        return f().d() * (long)a;
    }

    public boolean equals(Object obj)
    {
        ScaledDurationField scaleddurationfield;
        if (this != obj)
        {
            if (obj instanceof ScaledDurationField)
            {
                if (!f().equals((scaleddurationfield = (ScaledDurationField)obj).f()) || a() != scaleddurationfield.a() || a != scaleddurationfield.a)
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
        long l = a;
        return (int)(l ^ l >>> 32) + a().hashCode() + f().hashCode();
    }
}
