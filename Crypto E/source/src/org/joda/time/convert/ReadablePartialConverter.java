// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.convert;

import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.convert:
//            AbstractConverter, PartialConverter

class ReadablePartialConverter extends AbstractConverter
    implements PartialConverter
{

    static final ReadablePartialConverter a = new ReadablePartialConverter();

    protected ReadablePartialConverter()
    {
    }

    public Class a()
    {
        return org/joda/time/ReadablePartial;
    }

    public Chronology a(Object obj, DateTimeZone datetimezone)
    {
        return b(obj, (Chronology)null).a(datetimezone);
    }

    public Chronology b(Object obj, Chronology chronology)
    {
        if (chronology == null)
        {
            chronology = DateTimeUtils.a(((ReadablePartial)obj).c());
        }
        return chronology;
    }

}
