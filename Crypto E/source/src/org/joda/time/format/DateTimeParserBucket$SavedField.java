// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Locale;
import org.joda.time.DateTimeField;

// Referenced classes of package org.joda.time.format:
//            DateTimeParserBucket

static class d
    implements Comparable
{

    final DateTimeField a;
    final int b;
    final String c;
    final Locale d;

    public int a(d d1)
    {
        DateTimeField datetimefield = d1.a;
        int i = DateTimeParserBucket.a(a.f(), datetimefield.f());
        if (i != 0)
        {
            return i;
        } else
        {
            return DateTimeParserBucket.a(a.e(), datetimefield.e());
        }
    }

    long a(long l, boolean flag)
    {
        long l1;
        if (c == null)
        {
            l1 = a.b(l, b);
        } else
        {
            l1 = a.a(l, c, d);
        }
        if (flag)
        {
            l1 = a.e(l1);
        }
        return l1;
    }

    public int compareTo(Object obj)
    {
        return a((a)obj);
    }

    (DateTimeField datetimefield, int i)
    {
        a = datetimefield;
        b = i;
        c = null;
        d = null;
    }

    d(DateTimeField datetimefield, String s, Locale locale)
    {
        a = datetimefield;
        b = 0;
        c = s;
        d = locale;
    }
}
