// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.base;

import org.joda.time.ReadableInterval;
import org.joda.time.field.FieldUtils;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

public abstract class AbstractInterval
    implements ReadableInterval
{

    protected AbstractInterval()
    {
    }

    protected void a(long l, long l1)
    {
        if (l1 < l)
        {
            throw new IllegalArgumentException("The end instant must be greater or equal to the start");
        } else
        {
            return;
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ReadableInterval))
            {
                return false;
            }
            ReadableInterval readableinterval = (ReadableInterval)obj;
            if (b() != readableinterval.b() || c() != readableinterval.c() || !FieldUtils.a(a(), readableinterval.a()))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        long l = b();
        long l1 = c();
        return 31 * (31 * (3007 + (int)(l ^ l >>> 32)) + (int)(l1 ^ l1 >>> 32)) + a().hashCode();
    }

    public String toString()
    {
        DateTimeFormatter datetimeformatter = ISODateTimeFormat.f().a(a());
        StringBuffer stringbuffer = new StringBuffer(48);
        datetimeformatter.a(stringbuffer, b());
        stringbuffer.append('/');
        datetimeformatter.a(stringbuffer, c());
        return stringbuffer.toString();
    }
}
