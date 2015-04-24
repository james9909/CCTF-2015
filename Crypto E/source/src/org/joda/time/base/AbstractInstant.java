// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.base;

import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.Instant;
import org.joda.time.MutableDateTime;
import org.joda.time.ReadableInstant;
import org.joda.time.field.FieldUtils;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

public abstract class AbstractInstant
    implements ReadableInstant
{

    public AbstractInstant()
    {
    }

    public DateTime a()
    {
        return new DateTime(x_(), i());
    }

    public boolean a(ReadableInstant readableinstant)
    {
        return b(DateTimeUtils.a(readableinstant));
    }

    public int b(ReadableInstant readableinstant)
    {
        if (this != readableinstant)
        {
            long l = readableinstant.x_();
            long l1 = x_();
            if (l1 != l)
            {
                return l1 >= l ? 1 : -1;
            }
        }
        return 0;
    }

    public boolean b(long l)
    {
        return x_() < l;
    }

    public int compareTo(Object obj)
    {
        return b((ReadableInstant)obj);
    }

    public MutableDateTime e()
    {
        return new MutableDateTime(x_(), i());
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ReadableInstant))
            {
                return false;
            }
            ReadableInstant readableinstant = (ReadableInstant)obj;
            if (x_() != readableinstant.x_() || !FieldUtils.a(d(), readableinstant.d()))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return (int)(x_() ^ x_() >>> 32) + d().hashCode();
    }

    public DateTimeZone i()
    {
        return d().a();
    }

    public String toString()
    {
        return ISODateTimeFormat.f().a(this);
    }

    public Instant y_()
    {
        return new Instant(x_());
    }
}
