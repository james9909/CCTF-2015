// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.TimeZone;
import org.joda.time.DateTimeZone;
import org.joda.time.tz.Provider;

public class DateTimeZoneProvider
    implements Provider
{

    public static final Set a;

    public DateTimeZoneProvider()
    {
    }

    public Set a()
    {
        return a;
    }

    public DateTimeZone a(String s)
    {
        if (s == null)
        {
            return DateTimeZone.a;
        }
        TimeZone timezone = TimeZone.getTimeZone(s);
        if (timezone == null)
        {
            return DateTimeZone.a;
        }
        int i = timezone.getRawOffset();
        if (timezone.inDaylightTime(new Date()))
        {
            i += timezone.getDSTSavings();
        }
        return DateTimeZone.a(i);
    }

    static 
    {
        a = new HashSet();
        a.addAll(Arrays.asList(TimeZone.getAvailableIDs()));
    }
}
