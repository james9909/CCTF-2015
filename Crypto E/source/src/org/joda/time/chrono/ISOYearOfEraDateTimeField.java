// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.field.DecoratedDateTimeField;
import org.joda.time.field.FieldUtils;

// Referenced classes of package org.joda.time.chrono:
//            GregorianChronology

class ISOYearOfEraDateTimeField extends DecoratedDateTimeField
{

    static final DateTimeField a = new ISOYearOfEraDateTimeField();

    private ISOYearOfEraDateTimeField()
    {
        super(GregorianChronology.Z().E(), DateTimeFieldType.t());
    }

    public int a(long l)
    {
        int k = j().a(l);
        if (k < 0)
        {
            k = -k;
        }
        return k;
    }

    public long a(long l, int k)
    {
        return j().a(l, k);
    }

    public long a(long l, long l1)
    {
        return j().a(l, l1);
    }

    public int b(long l, long l1)
    {
        return j().b(l, l1);
    }

    public long b(long l, int k)
    {
        FieldUtils.a(this, k, 0, i());
        if (j().a(l) < 0)
        {
            k = -k;
        }
        return super.b(l, k);
    }

    public long c(long l, long l1)
    {
        return j().c(l, l1);
    }

    public long e(long l)
    {
        return j().e(l);
    }

    public long f(long l)
    {
        return j().f(l);
    }

    public int h()
    {
        return 0;
    }

    public int i()
    {
        return j().i();
    }

    public long j(long l)
    {
        return j().j(l);
    }

}
