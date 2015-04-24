// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import java.util.Locale;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.ReadablePartial;

public abstract class BaseDateTimeField extends DateTimeField
{

    private final DateTimeFieldType a;

    public BaseDateTimeField(DateTimeFieldType datetimefieldtype)
    {
        if (datetimefieldtype == null)
        {
            throw new IllegalArgumentException("The type must not be null");
        } else
        {
            a = datetimefieldtype;
            return;
        }
    }

    public abstract int a(long l);

    public int a(String s, Locale locale)
    {
        int k;
        try
        {
            k = Integer.parseInt(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new IllegalFieldValueException(a(), s);
        }
        return k;
    }

    public int a(Locale locale)
    {
        int k = i();
        if (k >= 0)
        {
            if (k < 10)
            {
                return 1;
            }
            if (k < 100)
            {
                return 2;
            }
            if (k < 1000)
            {
                return 3;
            }
        }
        return Integer.toString(k).length();
    }

    public int a(ReadablePartial readablepartial)
    {
        return h();
    }

    public int a(ReadablePartial readablepartial, int ai[])
    {
        return a(readablepartial);
    }

    public long a(long l, int k)
    {
        return e().a(l, k);
    }

    public long a(long l, long l1)
    {
        return e().a(l, l1);
    }

    public long a(long l, String s, Locale locale)
    {
        return b(l, a(s, locale));
    }

    public String a(int k, Locale locale)
    {
        return Integer.toString(k);
    }

    public String a(long l, Locale locale)
    {
        return a(a(l), locale);
    }

    public String a(ReadablePartial readablepartial, int k, Locale locale)
    {
        return a(k, locale);
    }

    public final String a(ReadablePartial readablepartial, Locale locale)
    {
        return a(readablepartial, readablepartial.a(a()), locale);
    }

    public final DateTimeFieldType a()
    {
        return a;
    }

    public int b(long l, long l1)
    {
        return e().b(l, l1);
    }

    public int b(ReadablePartial readablepartial)
    {
        return i();
    }

    public int b(ReadablePartial readablepartial, int ai[])
    {
        return b(readablepartial);
    }

    public abstract long b(long l, int k);

    public final String b()
    {
        return a.x();
    }

    public String b(int k, Locale locale)
    {
        return a(k, locale);
    }

    public String b(long l, Locale locale)
    {
        return b(a(l), locale);
    }

    public String b(ReadablePartial readablepartial, int k, Locale locale)
    {
        return b(k, locale);
    }

    public final String b(ReadablePartial readablepartial, Locale locale)
    {
        return b(readablepartial, readablepartial.a(a()), locale);
    }

    public boolean b(long l)
    {
        return false;
    }

    public int c(long l)
    {
        return h();
    }

    public long c(long l, long l1)
    {
        return e().c(l, l1);
    }

    public final boolean c()
    {
        return true;
    }

    public int d(long l)
    {
        return i();
    }

    public abstract long e(long l);

    public abstract DurationField e();

    public long f(long l)
    {
        long l1 = e(l);
        if (l1 != l)
        {
            l = a(l1, 1);
        }
        return l;
    }

    public long g(long l)
    {
        long l1 = e(l);
        long l2 = f(l);
        if (l - l1 <= l2 - l)
        {
            return l1;
        } else
        {
            return l2;
        }
    }

    public DurationField g()
    {
        return null;
    }

    public abstract int h();

    public long h(long l)
    {
        long l1 = e(l);
        long l2 = f(l);
        long l3 = l - l1;
        if (l2 - l <= l3)
        {
            return l2;
        } else
        {
            return l1;
        }
    }

    public abstract int i();

    public long i(long l)
    {
        long l1 = e(l);
        long l2 = f(l);
        long l3 = l - l1;
        long l4 = l2 - l;
        if (l3 >= l4)
        {
            if (l4 < l3)
            {
                return l2;
            }
            if ((1 & a(l2)) == 0)
            {
                return l2;
            }
        }
        return l1;
    }

    public long j(long l)
    {
        return l - e(l);
    }

    public String toString()
    {
        return (new StringBuilder()).append("DateTimeField[").append(b()).append(']').toString();
    }
}
