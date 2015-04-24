// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;

import org.joda.time.DateTimeZone;

public final class FixedDateTimeZone extends DateTimeZone
{

    private final String b;
    private final int c;
    private final int d;

    public FixedDateTimeZone(String s, String s1, int i, int j)
    {
        super(s);
        b = s1;
        c = i;
        d = j;
    }

    public String a(long l)
    {
        return b;
    }

    public int b(long l)
    {
        return c;
    }

    public int c(long l)
    {
        return c;
    }

    public boolean d()
    {
        return true;
    }

    public long e(long l)
    {
        return l;
    }

    public boolean equals(Object obj)
    {
        FixedDateTimeZone fixeddatetimezone;
        if (this != obj)
        {
            if (obj instanceof FixedDateTimeZone)
            {
                if (!c().equals((fixeddatetimezone = (FixedDateTimeZone)obj).c()) || d != fixeddatetimezone.d || c != fixeddatetimezone.c)
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public long f(long l)
    {
        return l;
    }

    public int hashCode()
    {
        return c().hashCode() + 37 * d + 31 * c;
    }
}
