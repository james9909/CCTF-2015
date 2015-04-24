// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DurationFieldType;

// Referenced classes of package org.joda.time.field:
//            BaseDurationField, FieldUtils

public class PreciseDurationField extends BaseDurationField
{

    private final long a;

    public PreciseDurationField(DurationFieldType durationfieldtype, long l)
    {
        super(durationfieldtype);
        a = l;
    }

    public long a(long l, int i)
    {
        return FieldUtils.a(l, (long)i * a);
    }

    public long a(long l, long l1)
    {
        return FieldUtils.a(l, FieldUtils.c(l1, a));
    }

    public long c(long l, long l1)
    {
        return FieldUtils.b(l, l1) / a;
    }

    public final boolean c()
    {
        return true;
    }

    public final long d()
    {
        return a;
    }

    public boolean equals(Object obj)
    {
        PreciseDurationField precisedurationfield;
        if (this != obj)
        {
            if (obj instanceof PreciseDurationField)
            {
                if (a() != (precisedurationfield = (PreciseDurationField)obj).a() || a != precisedurationfield.a)
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
        return (int)(l ^ l >>> 32) + a().hashCode();
    }
}
