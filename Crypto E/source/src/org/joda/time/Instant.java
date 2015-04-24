// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import org.joda.time.base.AbstractInstant;
import org.joda.time.chrono.ISOChronology;

// Referenced classes of package org.joda.time:
//            ReadableInstant, DateTimeUtils, DateTime, MutableDateTime, 
//            Chronology

public final class Instant extends AbstractInstant
    implements Serializable, ReadableInstant
{

    private final long a;

    public Instant()
    {
        a = DateTimeUtils.a();
    }

    public Instant(long l)
    {
        a = l;
    }

    public DateTime a()
    {
        return new DateTime(x_(), ISOChronology.O());
    }

    public Chronology d()
    {
        return ISOChronology.N();
    }

    public MutableDateTime e()
    {
        return new MutableDateTime(x_(), ISOChronology.O());
    }

    public long x_()
    {
        return a;
    }

    public Instant y_()
    {
        return this;
    }
}
