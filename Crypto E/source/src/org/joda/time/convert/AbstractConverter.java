// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.convert;

import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.chrono.ISOChronology;

// Referenced classes of package org.joda.time.convert:
//            Converter

public abstract class AbstractConverter
    implements Converter
{

    protected AbstractConverter()
    {
    }

    public long a(Object obj, Chronology chronology)
    {
        return DateTimeUtils.a();
    }

    public Chronology a(Object obj, DateTimeZone datetimezone)
    {
        return ISOChronology.b(datetimezone);
    }

    public Chronology b(Object obj, Chronology chronology)
    {
        return DateTimeUtils.a(chronology);
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("Converter[");
        String s;
        if (a() == null)
        {
            s = "null";
        } else
        {
            s = a().getName();
        }
        return stringbuilder.append(s).append("]").toString();
    }
}
