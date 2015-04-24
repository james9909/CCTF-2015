// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import org.joda.time.base.BaseSingleFieldPeriod;
import org.joda.time.format.ISOPeriodFormat;
import org.joda.time.format.PeriodFormatter;

// Referenced classes of package org.joda.time:
//            PeriodType, DurationFieldType, ReadableInstant

public final class Days extends BaseSingleFieldPeriod
{

    public static final Days a = new Days(0);
    public static final Days b = new Days(1);
    public static final Days c = new Days(2);
    public static final Days d = new Days(3);
    public static final Days e = new Days(4);
    public static final Days f = new Days(5);
    public static final Days g = new Days(6);
    public static final Days h = new Days(7);
    public static final Days i = new Days(0x7fffffff);
    public static final Days j = new Days(0x80000000);
    private static final PeriodFormatter k = ISOPeriodFormat.a().a(PeriodType.f());

    private Days(int l)
    {
        super(l);
    }

    public static Days a(int l)
    {
        switch (l)
        {
        default:
            return new Days(l);

        case 0: // '\0'
            return a;

        case 1: // '\001'
            return b;

        case 2: // '\002'
            return c;

        case 3: // '\003'
            return d;

        case 4: // '\004'
            return e;

        case 5: // '\005'
            return f;

        case 6: // '\006'
            return g;

        case 7: // '\007'
            return h;

        case 2147483647: 
            return i;

        case -2147483648: 
            return j;
        }
    }

    public static Days a(ReadableInstant readableinstant, ReadableInstant readableinstant1)
    {
        return a(BaseSingleFieldPeriod.a(readableinstant, readableinstant1, DurationFieldType.f()));
    }

    public DurationFieldType a()
    {
        return DurationFieldType.f();
    }

    public boolean a(Days days)
    {
        if (days != null) goto _L2; else goto _L1
_L1:
        if (d() >= 0) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (d() >= days.d())
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public PeriodType b()
    {
        return PeriodType.f();
    }

    public String toString()
    {
        return (new StringBuilder()).append("P").append(String.valueOf(d())).append("D").toString();
    }

}
