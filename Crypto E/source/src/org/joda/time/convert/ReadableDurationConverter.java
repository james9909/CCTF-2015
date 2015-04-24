// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.convert;

import org.joda.time.ReadableDuration;

// Referenced classes of package org.joda.time.convert:
//            AbstractConverter, DurationConverter, PeriodConverter

class ReadableDurationConverter extends AbstractConverter
    implements DurationConverter, PeriodConverter
{

    static final ReadableDurationConverter a = new ReadableDurationConverter();

    protected ReadableDurationConverter()
    {
    }

    public Class a()
    {
        return org/joda/time/ReadableDuration;
    }

}
