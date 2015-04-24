// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.base;

import java.io.Serializable;
import org.joda.time.DateTimeUtils;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;
import org.joda.time.PeriodType;
import org.joda.time.ReadableInstant;
import org.joda.time.ReadablePeriod;

public abstract class BaseSingleFieldPeriod
    implements Serializable, Comparable, ReadablePeriod
{

    private volatile int a;

    public BaseSingleFieldPeriod(int i)
    {
        a = i;
    }

    public static int a(ReadableInstant readableinstant, ReadableInstant readableinstant1, DurationFieldType durationfieldtype)
    {
        if (readableinstant == null || readableinstant1 == null)
        {
            throw new IllegalArgumentException("ReadableInstant objects must not be null");
        } else
        {
            return durationfieldtype.a(DateTimeUtils.b(readableinstant)).b(readableinstant1.x_(), readableinstant.x_());
        }
    }

    public int a(DurationFieldType durationfieldtype)
    {
        if (durationfieldtype == a())
        {
            return d();
        } else
        {
            return 0;
        }
    }

    public int a(BaseSingleFieldPeriod basesinglefieldperiod)
    {
        if (basesinglefieldperiod.getClass() != getClass())
        {
            throw new ClassCastException((new StringBuilder()).append(getClass()).append(" cannot be compared to ").append(basesinglefieldperiod.getClass()).toString());
        }
        int i = basesinglefieldperiod.d();
        int j = d();
        if (j > i)
        {
            return 1;
        }
        return j >= i ? 0 : -1;
    }

    public abstract DurationFieldType a();

    public DurationFieldType b(int i)
    {
        if (i != 0)
        {
            throw new IndexOutOfBoundsException(String.valueOf(i));
        } else
        {
            return a();
        }
    }

    public abstract PeriodType b();

    public int c()
    {
        return 1;
    }

    public int c(int i)
    {
        if (i != 0)
        {
            throw new IndexOutOfBoundsException(String.valueOf(i));
        } else
        {
            return d();
        }
    }

    public int compareTo(Object obj)
    {
        return a((BaseSingleFieldPeriod)obj);
    }

    public int d()
    {
        return a;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ReadablePeriod))
            {
                return false;
            }
            ReadablePeriod readableperiod = (ReadablePeriod)obj;
            if (readableperiod.b() != b() || readableperiod.c(0) != d())
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 27 * (459 + d()) + a().hashCode();
    }
}
