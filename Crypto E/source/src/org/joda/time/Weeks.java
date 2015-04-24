// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import org.joda.time.base.BaseSingleFieldPeriod;
import org.joda.time.format.ISOPeriodFormat;
import org.joda.time.format.PeriodFormatter;

// Referenced classes of package org.joda.time:
//            PeriodType, DurationFieldType

public final class Weeks extends BaseSingleFieldPeriod
{

    public static final Weeks a = new Weeks(0);
    public static final Weeks b = new Weeks(1);
    public static final Weeks c = new Weeks(2);
    public static final Weeks d = new Weeks(3);
    public static final Weeks e = new Weeks(0x7fffffff);
    public static final Weeks f = new Weeks(0x80000000);
    private static final PeriodFormatter g = ISOPeriodFormat.a().a(PeriodType.e());

    private Weeks(int i)
    {
        super(i);
    }

    public DurationFieldType a()
    {
        return DurationFieldType.g();
    }

    public PeriodType b()
    {
        return PeriodType.e();
    }

    public String toString()
    {
        return (new StringBuilder()).append("P").append(String.valueOf(d())).append("W").toString();
    }

}
