// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.field:
//            DecoratedDateTimeField, FieldUtils

public final class ZeroIsMaxDateTimeField extends DecoratedDateTimeField
{

    public ZeroIsMaxDateTimeField(DateTimeField datetimefield, DateTimeFieldType datetimefieldtype)
    {
        super(datetimefield, datetimefieldtype);
        if (datetimefield.h() != 0)
        {
            throw new IllegalArgumentException("Wrapped field's minumum value must be zero");
        } else
        {
            return;
        }
    }

    public int a(long l)
    {
        int k = j().a(l);
        if (k == 0)
        {
            k = i();
        }
        return k;
    }

    public int a(ReadablePartial readablepartial)
    {
        return 1;
    }

    public int a(ReadablePartial readablepartial, int ai[])
    {
        return 1;
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

    public int b(ReadablePartial readablepartial)
    {
        return 1 + j().b(readablepartial);
    }

    public int b(ReadablePartial readablepartial, int ai[])
    {
        return 1 + j().b(readablepartial, ai);
    }

    public long b(long l, int k)
    {
        int i1 = i();
        FieldUtils.a(this, k, 1, i1);
        if (k == i1)
        {
            k = 0;
        }
        return j().b(l, k);
    }

    public boolean b(long l)
    {
        return j().b(l);
    }

    public int c(long l)
    {
        return 1;
    }

    public long c(long l, long l1)
    {
        return j().c(l, l1);
    }

    public int d(long l)
    {
        return 1 + j().d(l);
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
        return 1;
    }

    public long h(long l)
    {
        return j().h(l);
    }

    public int i()
    {
        return 1 + j().i();
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
