// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import org.joda.time.base.BaseSingleFieldPeriod;
import org.joda.time.format.ISOPeriodFormat;
import org.joda.time.format.PeriodFormatter;

// Referenced classes of package org.joda.time:
//            PeriodType, DurationFieldType

public final class Seconds extends BaseSingleFieldPeriod
{

    public static final Seconds a = new Seconds(0);
    public static final Seconds b = new Seconds(1);
    public static final Seconds c = new Seconds(2);
    public static final Seconds d = new Seconds(3);
    public static final Seconds e = new Seconds(0x7fffffff);
    public static final Seconds f = new Seconds(0x80000000);
    private static final PeriodFormatter g = ISOPeriodFormat.a().a(PeriodType.i());

    private Seconds(int i)
    {
        super(i);
    }

    public DurationFieldType a()
    {
        return DurationFieldType.b();
    }

    public PeriodType b()
    {
        return PeriodType.i();
    }

    public String toString()
    {
        return (new StringBuilder()).append("PT").append(String.valueOf(d())).append("S").toString();
    }

}
