// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.Locale;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.field.BaseDateTimeField;
import org.joda.time.field.FieldUtils;
import org.joda.time.field.UnsupportedDurationField;

final class BasicSingleEraDateTimeField extends BaseDateTimeField
{

    private final String a;

    BasicSingleEraDateTimeField(String s)
    {
        super(DateTimeFieldType.w());
        a = s;
    }

    public int a(long l)
    {
        return 1;
    }

    public int a(Locale locale)
    {
        return a.length();
    }

    public long a(long l, String s, Locale locale)
    {
        if (!a.equals(s) && !"1".equals(s))
        {
            throw new IllegalFieldValueException(DateTimeFieldType.w(), s);
        } else
        {
            return l;
        }
    }

    public String a(int j, Locale locale)
    {
        return a;
    }

    public long b(long l, int j)
    {
        FieldUtils.a(this, j, 1, 1);
        return l;
    }

    public boolean d()
    {
        return false;
    }

    public long e(long l)
    {
        return 0x8000000000000000L;
    }

    public DurationField e()
    {
        return UnsupportedDurationField.a(DurationFieldType.l());
    }

    public long f(long l)
    {
        return 0x7fffffffffffffffL;
    }

    public DurationField f()
    {
        return null;
    }

    public long g(long l)
    {
        return 0x8000000000000000L;
    }

    public int h()
    {
        return 1;
    }

    public long h(long l)
    {
        return 0x8000000000000000L;
    }

    public int i()
    {
        return 1;
    }

    public long i(long l)
    {
        return 0x8000000000000000L;
    }
}
