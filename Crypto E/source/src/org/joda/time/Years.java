// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import org.joda.time.base.BaseSingleFieldPeriod;
import org.joda.time.format.ISOPeriodFormat;
import org.joda.time.format.PeriodFormatter;

// Referenced classes of package org.joda.time:
//            PeriodType, DurationFieldType

public final class Years extends BaseSingleFieldPeriod
{

    public static final Years a = new Years(0);
    public static final Years b = new Years(1);
    public static final Years c = new Years(2);
    public static final Years d = new Years(3);
    public static final Years e = new Years(0x7fffffff);
    public static final Years f = new Years(0x80000000);
    private static final PeriodFormatter g = ISOPeriodFormat.a().a(PeriodType.c());

    private Years(int i)
    {
        super(i);
    }

    public DurationFieldType a()
    {
        return DurationFieldType.j();
    }

    public PeriodType b()
    {
        return PeriodType.c();
    }

    public String toString()
    {
        return (new StringBuilder()).append("P").append(String.valueOf(d())).append("Y").toString();
    }

}
