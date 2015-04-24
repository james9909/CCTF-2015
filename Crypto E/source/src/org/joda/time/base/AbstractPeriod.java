// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.base;

import org.joda.time.DurationFieldType;
import org.joda.time.PeriodType;
import org.joda.time.ReadablePeriod;
import org.joda.time.format.ISOPeriodFormat;
import org.joda.time.format.PeriodFormatter;

public abstract class AbstractPeriod
    implements ReadablePeriod
{

    protected AbstractPeriod()
    {
    }

    public int a(DurationFieldType durationfieldtype)
    {
        int i = b(durationfieldtype);
        if (i == -1)
        {
            return 0;
        } else
        {
            return c(i);
        }
    }

    public int b(DurationFieldType durationfieldtype)
    {
        return b().b(durationfieldtype);
    }

    public DurationFieldType b(int i)
    {
        return b().a(i);
    }

    public int c()
    {
        return b().k();
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
            if (c() != readableperiod.c())
            {
                return false;
            }
            int i = c();
            int j = 0;
            while (j < i) 
            {
                if (c(j) != readableperiod.c(j) || b(j) != readableperiod.b(j))
                {
                    return false;
                }
                j++;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i = 17;
        int j = 0;
        for (int k = c(); j < k; j++)
        {
            i = 27 * (i * 27 + c(j)) + b(j).hashCode();
        }

        return i;
    }

    public String toString()
    {
        return ISOPeriodFormat.a().a(this);
    }
}
