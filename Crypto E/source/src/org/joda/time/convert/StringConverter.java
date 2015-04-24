// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.convert;

import org.joda.time.Chronology;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

// Referenced classes of package org.joda.time.convert:
//            AbstractConverter, DurationConverter, InstantConverter, IntervalConverter, 
//            PartialConverter, PeriodConverter

class StringConverter extends AbstractConverter
    implements DurationConverter, InstantConverter, IntervalConverter, PartialConverter, PeriodConverter
{

    static final StringConverter a = new StringConverter();

    protected StringConverter()
    {
    }

    public long a(Object obj, Chronology chronology)
    {
        String s = (String)obj;
        return ISODateTimeFormat.b().a(chronology).a(s);
    }

    public Class a()
    {
        return java/lang/String;
    }

}
