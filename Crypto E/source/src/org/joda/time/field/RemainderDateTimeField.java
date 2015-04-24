// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;

// Referenced classes of package org.joda.time.field:
//            DecoratedDateTimeField, ScaledDurationField, DividedDateTimeField, FieldUtils

public class RemainderDateTimeField extends DecoratedDateTimeField
{

    final int a;
    final DurationField b;

    public RemainderDateTimeField(DateTimeField datetimefield, DateTimeFieldType datetimefieldtype, int k)
    {
        super(datetimefield, datetimefieldtype);
        if (k < 2)
        {
            throw new IllegalArgumentException("The divisor must be at least 2");
        }
        DurationField durationfield = datetimefield.e();
        if (durationfield == null)
        {
            b = null;
        } else
        {
            b = new ScaledDurationField(durationfield, datetimefieldtype.z(), k);
        }
        a = k;
    }

    public RemainderDateTimeField(DividedDateTimeField divideddatetimefield)
    {
        this(divideddatetimefield, divideddatetimefield.a());
    }

    public RemainderDateTimeField(DividedDateTimeField divideddatetimefield, DateTimeFieldType datetimefieldtype)
    {
        super(divideddatetimefield.j(), datetimefieldtype);
        a = divideddatetimefield.a;
        b = divideddatetimefield.b;
    }

    private int a(int k)
    {
        if (k >= 0)
        {
            return k / a;
        } else
        {
            return -1 + (k + 1) / a;
        }
    }

    public int a(long l)
    {
        int k = j().a(l);
        if (k >= 0)
        {
            return k % a;
        } else
        {
            return -1 + a + (k + 1) % a;
        }
    }

    public long b(long l, int k)
    {
        FieldUtils.a(this, k, 0, -1 + a);
        int i1 = a(j().a(l));
        return j().b(l, k + i1 * a);
    }

    public long e(long l)
    {
        return j().e(l);
    }

    public long f(long l)
    {
        return j().f(l);
    }

    public DurationField f()
    {
        return b;
    }

    public long g(long l)
    {
        return j().g(l);
    }

    public int h()
    {
        return 0;
    }

    public long h(long l)
    {
        return j().h(l);
    }

    public int i()
    {
        return -1 + a;
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
