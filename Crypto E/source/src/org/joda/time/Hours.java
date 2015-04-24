// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import org.joda.time.base.BaseSingleFieldPeriod;
import org.joda.time.format.ISOPeriodFormat;
import org.joda.time.format.PeriodFormatter;

// Referenced classes of package org.joda.time:
//            PeriodType, DurationFieldType

public final class Hours extends BaseSingleFieldPeriod
{

    public static final Hours a = new Hours(0);
    public static final Hours b = new Hours(1);
    public static final Hours c = new Hours(2);
    public static final Hours d = new Hours(3);
    public static final Hours e = new Hours(4);
    public static final Hours f = new Hours(5);
    public static final Hours g = new Hours(6);
    public static final Hours h = new Hours(7);
    public static final Hours i = new Hours(8);
    public static final Hours j = new Hours(0x7fffffff);
    public static final Hours k = new Hours(0x80000000);
    private static final PeriodFormatter l = ISOPeriodFormat.a().a(PeriodType.g());

    private Hours(int i1)
    {
        super(i1);
    }

    public DurationFieldType a()
    {
        return DurationFieldType.d();
    }

    public PeriodType b()
    {
        return PeriodType.g();
    }

    public String toString()
    {
        return (new StringBuilder()).append("PT").append(String.valueOf(d())).append("H").toString();
    }

}
