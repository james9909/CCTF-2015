// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.convert;

import org.joda.time.ReadableInterval;

// Referenced classes of package org.joda.time.convert:
//            AbstractConverter, DurationConverter, IntervalConverter, PeriodConverter

class ReadableIntervalConverter extends AbstractConverter
    implements DurationConverter, IntervalConverter, PeriodConverter
{

    static final ReadableIntervalConverter a = new ReadableIntervalConverter();

    protected ReadableIntervalConverter()
    {
    }

    public Class a()
    {
        return org/joda/time/ReadableInterval;
    }

}
