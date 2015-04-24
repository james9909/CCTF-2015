// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import org.joda.time.DateTimeZone;

// Referenced classes of package org.joda.time.format:
//            DateTimeParserBucket

class d
{

    final DateTimeZone a;
    final Integer b;
    final d c[];
    final int d;
    final DateTimeParserBucket e;

    boolean a(DateTimeParserBucket datetimeparserbucket)
    {
        if (datetimeparserbucket != e)
        {
            return false;
        }
        DateTimeParserBucket.a(datetimeparserbucket, a);
        DateTimeParserBucket.a(datetimeparserbucket, b);
        DateTimeParserBucket.a(datetimeparserbucket, c);
        if (d < DateTimeParserBucket.d(datetimeparserbucket))
        {
            DateTimeParserBucket.a(datetimeparserbucket, true);
        }
        DateTimeParserBucket.a(datetimeparserbucket, d);
        return true;
    }

    (DateTimeParserBucket datetimeparserbucket)
    {
        e = datetimeparserbucket;
        super();
        a = DateTimeParserBucket.a(datetimeparserbucket);
        b = DateTimeParserBucket.b(datetimeparserbucket);
        c = DateTimeParserBucket.c(datetimeparserbucket);
        d = DateTimeParserBucket.d(datetimeparserbucket);
    }
}
