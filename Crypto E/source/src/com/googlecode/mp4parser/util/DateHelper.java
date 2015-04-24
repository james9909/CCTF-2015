// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;

import java.util.Date;

public class DateHelper
{

    public DateHelper()
    {
    }

    public static long a(Date date)
    {
        return 0x7c25b080L + date.getTime() / 1000L;
    }

    public static Date a(long l)
    {
        return new Date(1000L * (l - 0x7c25b080L));
    }
}
