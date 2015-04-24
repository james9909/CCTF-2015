// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import org.joda.time.base.BaseSingleFieldPeriod;
import org.joda.time.format.ISOPeriodFormat;
import org.joda.time.format.PeriodFormatter;

// Referenced classes of package org.joda.time:
//            PeriodType, DurationFieldType

public final class Minutes extends BaseSingleFieldPeriod
{

    public static final Minutes a = new Minutes(0);
    public static final Minutes b = new Minutes(1);
    public static final Minutes c = new Minutes(2);
    public static final Minutes d = new Minutes(3);
    public static final Minutes e = new Minutes(0x7fffffff);
    public static final Minutes f = new Minutes(0x80000000);
    private static final PeriodFormatter g = ISOPeriodFormat.a().a(PeriodType.h());

    private Minutes(int i)
    {
        super(i);
    }

    public DurationFieldType a()
    {
        return DurationFieldType.c();
    }

    public PeriodType b()
    {
        return PeriodType.h();
    }

    public String toString()
    {
        return (new StringBuilder()).append("PT").append(String.valueOf(d())).append("M").toString();
    }

}
