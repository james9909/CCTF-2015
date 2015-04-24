// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.convert;


// Referenced classes of package org.joda.time.convert:
//            AbstractConverter, DurationConverter, InstantConverter, IntervalConverter, 
//            PartialConverter, PeriodConverter

class NullConverter extends AbstractConverter
    implements DurationConverter, InstantConverter, IntervalConverter, PartialConverter, PeriodConverter
{

    static final NullConverter a = new NullConverter();

    protected NullConverter()
    {
    }

    public Class a()
    {
        return null;
    }

}
