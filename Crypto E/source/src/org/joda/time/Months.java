// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import org.joda.time.base.BaseSingleFieldPeriod;
import org.joda.time.format.ISOPeriodFormat;
import org.joda.time.format.PeriodFormatter;

// Referenced classes of package org.joda.time:
//            PeriodType, DurationFieldType

public final class Months extends BaseSingleFieldPeriod
{

    public static final Months a = new Months(0);
    public static final Months b = new Months(1);
    public static final Months c = new Months(2);
    public static final Months d = new Months(3);
    public static final Months e = new Months(4);
    public static final Months f = new Months(5);
    public static final Months g = new Months(6);
    public static final Months h = new Months(7);
    public static final Months i = new Months(8);
    public static final Months j = new Months(9);
    public static final Months k = new Months(10);
    public static final Months l = new Months(11);
    public static final Months m = new Months(12);
    public static final Months n = new Months(0x7fffffff);
    public static final Months o = new Months(0x80000000);
    private static final PeriodFormatter p = ISOPeriodFormat.a().a(PeriodType.d());

    private Months(int i1)
    {
        super(i1);
    }

    public DurationFieldType a()
    {
        return DurationFieldType.i();
    }

    public PeriodType b()
    {
        return PeriodType.d();
    }

    public String toString()
    {
        return (new StringBuilder()).append("P").append(String.valueOf(d())).append("M").toString();
    }

}
