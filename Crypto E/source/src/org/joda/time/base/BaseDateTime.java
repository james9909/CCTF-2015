// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.base;

import java.io.Serializable;
import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadableDateTime;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.convert.ConverterManager;
import org.joda.time.convert.InstantConverter;

// Referenced classes of package org.joda.time.base:
//            AbstractDateTime

public abstract class BaseDateTime extends AbstractDateTime
    implements Serializable, ReadableDateTime
{

    private volatile long a;
    private volatile Chronology b;

    public BaseDateTime()
    {
        this(DateTimeUtils.a(), ((Chronology) (ISOChronology.O())));
    }

    public BaseDateTime(int i, int j, int k, int l, int i1, int j1, int k1, 
            Chronology chronology)
    {
        b = b(chronology);
        a = a(b.a(i, j, k, l, i1, j1, k1), b);
    }

    public BaseDateTime(long l, Chronology chronology)
    {
        b = b(chronology);
        a = a(l, b);
    }

    public BaseDateTime(long l, DateTimeZone datetimezone)
    {
        this(l, ((Chronology) (ISOChronology.b(datetimezone))));
    }

    public BaseDateTime(Object obj, Chronology chronology)
    {
        InstantConverter instantconverter = ConverterManager.a().a(obj);
        b = b(instantconverter.b(obj, chronology));
        a = a(instantconverter.a(obj, chronology), b);
    }

    public long a(long l, Chronology chronology)
    {
        return l;
    }

    public void a(long l)
    {
        a = a(l, b);
    }

    public void a(Chronology chronology)
    {
        b = b(chronology);
    }

    protected Chronology b(Chronology chronology)
    {
        return DateTimeUtils.a(chronology);
    }

    public Chronology d()
    {
        return b;
    }

    public long x_()
    {
        return a;
    }
}
