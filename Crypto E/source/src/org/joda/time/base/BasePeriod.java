// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.base;

import java.io.Serializable;
import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.PeriodType;
import org.joda.time.ReadablePeriod;

// Referenced classes of package org.joda.time.base:
//            AbstractPeriod

public abstract class BasePeriod extends AbstractPeriod
    implements Serializable, ReadablePeriod
{

    private static final ReadablePeriod a = new AbstractPeriod() {

        public PeriodType b()
        {
            return PeriodType.b();
        }

        public int c(int i)
        {
            return 0;
        }

    };
    private final PeriodType b;
    private final int c[];

    public BasePeriod(long l, PeriodType periodtype, Chronology chronology)
    {
        PeriodType periodtype1 = a(periodtype);
        Chronology chronology1 = DateTimeUtils.a(chronology);
        b = periodtype1;
        c = chronology1.a(this, l);
    }

    protected PeriodType a(PeriodType periodtype)
    {
        return DateTimeUtils.a(periodtype);
    }

    public PeriodType b()
    {
        return b;
    }

    public int c(int i)
    {
        return c[i];
    }

}
