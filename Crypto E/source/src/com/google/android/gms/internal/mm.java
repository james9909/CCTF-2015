// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class mm
{

    private static final List abh;

    public static long a(long l, TimeUnit timeunit, TimeUnit timeunit1)
    {
        return timeunit.convert(timeunit1.convert(l, timeunit), timeunit1);
    }

    public static boolean a(TimeUnit timeunit)
    {
        return a(timeunit, TimeUnit.MILLISECONDS);
    }

    private static boolean a(TimeUnit timeunit, TimeUnit timeunit1)
    {
        return abh.indexOf(timeunit) < abh.indexOf(timeunit1);
    }

    static 
    {
        TimeUnit atimeunit[] = new TimeUnit[7];
        atimeunit[0] = TimeUnit.NANOSECONDS;
        atimeunit[1] = TimeUnit.MICROSECONDS;
        atimeunit[2] = TimeUnit.MILLISECONDS;
        atimeunit[3] = TimeUnit.SECONDS;
        atimeunit[4] = TimeUnit.MINUTES;
        atimeunit[5] = TimeUnit.HOURS;
        atimeunit[6] = TimeUnit.DAYS;
        abh = Arrays.asList(atimeunit);
    }
}
