// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;

// Referenced classes of package org.joda.time.field:
//            DecoratedDateTimeField, ScaledDurationField, FieldUtils

public class DividedDateTimeField extends DecoratedDateTimeField
{

    final int a;
    final DurationField b;
    private final int c;
    private final int d;

    public DividedDateTimeField(DateTimeField datetimefield, DateTimeFieldType datetimefieldtype, int k)
    {
        super(datetimefield, datetimefieldtype);
        if (k < 2)
        {
            throw new IllegalArgumentException("The divisor must be at least 2");
        }
        DurationField durationfield = datetimefield.e();
        int l;
        int i1;
        int j1;
        int k1;
        if (durationfield == null)
        {
            b = null;
        } else
        {
            b = new ScaledDurationField(durationfield, datetimefieldtype.y(), k);
        }
        a = k;
        l = datetimefield.h();
        if (l >= 0)
        {
            i1 = l / k;
        } else
        {
            i1 = -1 + (l + 1) / k;
        }
        j1 = datetimefield.i();
        if (j1 >= 0)
        {
            k1 = j1 / k;
        } else
        {
            k1 = -1 + (j1 + 1) / k;
        }
        c = i1;
        d = k1;
    }

    private int a(int k)
    {
        if (k >= 0)
        {
            return k % a;
        } else
        {
            return -1 + a + (k + 1) % a;
        }
    }

    public int a(long l)
    {
        int k = j().a(l);
        if (k >= 0)
        {
            return k / a;
        } else
        {
            return -1 + (k + 1) / a;
        }
    }

    public long a(long l, int k)
    {
        return j().a(l, k * a);
    }

    public long a(long l, long l1)
    {
        return j().a(l, l1 * (long)a);
    }

    public int b(long l, long l1)
    {
        return j().b(l, l1) / a;
    }

    public long b(long l, int k)
    {
        FieldUtils.a(this, k, c, d);
        int i1 = a(j().a(l));
        return j().b(l, i1 + k * a);
    }

    public long c(long l, long l1)
    {
        return j().c(l, l1) / (long)a;
    }

    public long e(long l)
    {
        DateTimeField datetimefield = j();
        return datetimefield.e(datetimefield.b(l, a(l) * a));
    }

    public DurationField e()
    {
        return b;
    }

    public int h()
    {
        return c;
    }

    public int i()
    {
        return d;
    }

    public long j(long l)
    {
        return b(l, a(j().j(l)));
    }
}
