// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;

// Referenced classes of package org.joda.time.field:
//            BaseDateTimeField

public abstract class DecoratedDateTimeField extends BaseDateTimeField
{

    private final DateTimeField a;

    public DecoratedDateTimeField(DateTimeField datetimefield, DateTimeFieldType datetimefieldtype)
    {
        super(datetimefieldtype);
        if (datetimefield == null)
        {
            throw new IllegalArgumentException("The field must not be null");
        }
        if (!datetimefield.c())
        {
            throw new IllegalArgumentException("The field must be supported");
        } else
        {
            a = datetimefield;
            return;
        }
    }

    public int a(long l)
    {
        return a.a(l);
    }

    public long b(long l, int k)
    {
        return a.b(l, k);
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

    public DurationField f()
    {
        return a.f();
    }

    public int h()
    {
        return a.h();
    }

    public int i()
    {
        return a.i();
    }

    public final DateTimeField j()
    {
        return a;
    }
}
