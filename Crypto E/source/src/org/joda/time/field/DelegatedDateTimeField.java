// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import java.io.Serializable;
import java.util.Locale;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.ReadablePartial;

public class DelegatedDateTimeField extends DateTimeField
    implements Serializable
{

    private final DateTimeField a;
    private final DateTimeFieldType b;

    public DelegatedDateTimeField(DateTimeField datetimefield)
    {
        this(datetimefield, null);
    }

    public DelegatedDateTimeField(DateTimeField datetimefield, DateTimeFieldType datetimefieldtype)
    {
        if (datetimefield == null)
        {
            throw new IllegalArgumentException("The field must not be null");
        }
        a = datetimefield;
        if (datetimefieldtype == null)
        {
            datetimefieldtype = datetimefield.a();
        }
        b = datetimefieldtype;
    }

    public int a(long l)
    {
        return a.a(l);
    }

    public int a(Locale locale)
    {
        return a.a(locale);
    }

    public int a(ReadablePartial readablepartial)
    {
        return a.a(readablepartial);
    }

    public int a(ReadablePartial readablepartial, int ai[])
    {
        return a.a(readablepartial, ai);
    }

    public long a(long l, int k)
    {
        return a.a(l, k);
    }

    public long a(long l, long l1)
    {
        return a.a(l, l1);
    }

    public long a(long l, String s, Locale locale)
    {
        return a.a(l, s, locale);
    }

    public String a(int k, Locale locale)
    {
        return a.a(k, locale);
    }

    public String a(long l, Locale locale)
    {
        return a.a(l, locale);
    }

    public String a(ReadablePartial readablepartial, Locale locale)
    {
        return a.a(readablepartial, locale);
    }

    public DateTimeFieldType a()
    {
        return b;
    }

    public int b(long l, long l1)
    {
        return a.b(l, l1);
    }

    public int b(ReadablePartial readablepartial)
    {
        return a.b(readablepartial);
    }

    public int b(ReadablePartial readablepartial, int ai[])
    {
        return a.b(readablepartial, ai);
    }

    public long b(long l, int k)
    {
        return a.b(l, k);
    }

    public String b()
    {
        return b.x();
    }

    public String b(int k, Locale locale)
    {
        return a.b(k, locale);
    }

    public String b(long l, Locale locale)
    {
        return a.b(l, locale);
    }

    public String b(ReadablePartial readablepartial, Locale locale)
    {
        return a.b(readablepartial, locale);
    }

    public boolean b(long l)
    {
        return a.b(l);
    }

    public int c(long l)
    {
        return a.c(l);
    }

    public long c(long l, long l1)
    {
        return a.c(l, l1);
    }

    public boolean c()
    {
        return a.c();
    }

    public int d(long l)
    {
        return a.d(l);
    }

    public boolean d()
    {
        return a.d();
    }

    public long e(long l)
    {
        return a.e(l);
    }

    public DurationField e()
    {
        return a.e();
    }

    public long f(long l)
    {
        return a.f(l);
    }

    public DurationField f()
    {
        return a.f();
    }

    public long g(long l)
    {
        return a.g(l);
    }

    public DurationField g()
    {
        return a.g();
    }

    public int h()
    {
        return a.h();
    }

    public long h(long l)
    {
        return a.h(l);
    }

    public int i()
    {
        return a.i();
    }

    public long i(long l)
    {
        return a.i(l);
    }

    public long j(long l)
    {
        return a.j(l);
    }

    public final DateTimeField j()
    {
        return a;
    }

    public String toString()
    {
        return (new StringBuilder()).append("DateTimeField[").append(b()).append(']').toString();
    }
}
