// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.convert;

import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadableInstant;
import org.joda.time.chrono.ISOChronology;

// Referenced classes of package org.joda.time.convert:
//            AbstractConverter, InstantConverter, PartialConverter

class ReadableInstantConverter extends AbstractConverter
    implements InstantConverter, PartialConverter
{

    static final ReadableInstantConverter a = new ReadableInstantConverter();

    protected ReadableInstantConverter()
    {
    }

    public long a(Object obj, Chronology chronology)
    {
        return ((ReadableInstant)obj).x_();
    }

    public Class a()
    {
        return org/joda/time/ReadableInstant;
    }

    public Chronology a(Object obj, DateTimeZone datetimezone)
    {
        Object obj1 = ((ReadableInstant)obj).d();
        if (obj1 == null)
        {
            obj1 = ISOChronology.b(datetimezone);
        } else
        if (((Chronology) (obj1)).a() != datetimezone)
        {
            obj1 = ((Chronology) (obj1)).a(datetimezone);
            if (obj1 == null)
            {
                return ISOChronology.b(datetimezone);
            }
        }
        return ((Chronology) (obj1));
    }

    public Chronology b(Object obj, Chronology chronology)
    {
        if (chronology == null)
        {
            chronology = DateTimeUtils.a(((ReadableInstant)obj).d());
        }
        return chronology;
    }

}
