// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;

// Referenced classes of package org.joda.time.field:
//            DecoratedDateTimeField, FieldUtils

public class OffsetDateTimeField extends DecoratedDateTimeField
{

    private final int a;
    private final int b;
    private final int c;

    public OffsetDateTimeField(DateTimeField datetimefield, int k)
    {
        DateTimeFieldType datetimefieldtype;
        if (datetimefield == null)
        {
            datetimefieldtype = null;
        } else
        {
            datetimefieldtype = datetimefield.a();
        }
        this(datetimefield, datetimefieldtype, k, 0x80000000, 0x7fffffff);
    }

    public OffsetDateTimeField(DateTimeField datetimefield, DateTimeFieldType datetimefieldtype, int k)
    {
        this(datetimefield, datetimefieldtype, k, 0x80000000, 0x7fffffff);
    }

    public OffsetDateTimeField(DateTimeField datetimefield, DateTimeFieldType datetimefieldtype, int k, int l, int i1)
    {
        super(datetimefield, datetimefieldtype);
        if (k == 0)
        {
            throw new IllegalArgumentException("The offset cannot be zero");
        }
        a = k;
        if (l < k + datetimefield.h())
        {
            b = k + datetimefield.h();
        } else
        {
            b = l;
        }
        if (i1 > k + datetimefield.i())
        {
            c = k + datetimefield.i();
            return;
        } else
        {
            c = i1;
            return;
        }
    }

    public int a(long l)
    {
        return super.a(l) + a;
    }

    public long a(long l, int k)
    {
        long l1 = super.a(l, k);
        FieldUtils.a(this, a(l1), b, c);
        return l1;
    }

    public long a(long l, long l1)
    {
        long l2 = super.a(l, l1);
        FieldUtils.a(this, a(l2), b, c);
        return l2;
    }

    public long b(long l, int k)
    {
        FieldUtils.a(this, k, b, c);
        return super.b(l, k - a);
    }

    public boolean b(long l)
    {
        return j().b(l);
    }

    public long e(long l)
    {
        return j().e(l);
    }

    public long f(long l)
    {
        return j().f(l);
    }

    public long g(long l)
    {
        return j().g(l);
    }

    public DurationField g()
    {
        return j().g();
    }

    public int h()
    {
        return b;
    }

    public long h(long l)
    {
        return j().h(l);
    }

    public int i()
    {
        return c;
    }

    public long i(long l)
    {
        return j().i(l);
    }

    public long j(long l)
    {
        return j().j(l);
    }
}
