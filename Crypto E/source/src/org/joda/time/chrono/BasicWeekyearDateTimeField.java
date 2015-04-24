// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.field.FieldUtils;
import org.joda.time.field.ImpreciseDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            BasicChronology

final class BasicWeekyearDateTimeField extends ImpreciseDateTimeField
{

    private final BasicChronology a;

    BasicWeekyearDateTimeField(BasicChronology basicchronology)
    {
        super(DateTimeFieldType.p(), basicchronology.T());
        a = basicchronology;
    }

    public int a(long l)
    {
        return a.e(l);
    }

    public long a(long l, int k)
    {
        if (k == 0)
        {
            return l;
        } else
        {
            return b(l, k + a(l));
        }
    }

    public long a(long l, long l1)
    {
        return a(l, FieldUtils.a(l1));
    }

    public long b(long l, int k)
    {
        FieldUtils.a(this, Math.abs(k), a.Q(), a.R());
        int i1 = a(l);
        if (i1 == k)
        {
            return l;
        }
        int j1 = a.g(l);
        int k1 = a.b(i1);
        int l1 = a.b(k);
        int i2;
        long l2;
        int j2;
        long l3;
        if (l1 >= k1)
        {
            l1 = k1;
        }
        i2 = a.f(l);
        if (i2 <= l1)
        {
            l1 = i2;
        }
        l2 = a.f(l, k);
        j2 = a(l2);
        if (j2 >= k) goto _L2; else goto _L1
_L1:
        l2 += 0x240c8400L;
_L4:
        l3 = l2 + 0x240c8400L * (long)(l1 - a.f(l2));
        return a.t().b(l3, j1);
_L2:
        if (j2 > k)
        {
            l2 -= 0x240c8400L;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean b(long l)
    {
        return a.b(a.e(l)) > 52;
    }

    public long c(long l, long l1)
    {
        if (l < l1)
        {
            return (long)(-b(l1, l));
        }
        int k = a(l);
        int i1 = a(l1);
        long l2 = j(l);
        long l3 = j(l1);
        long l4;
        int j1;
        if (l3 >= 0x7528ad000L && a.b(k) <= 52)
        {
            l4 = l3 - 0x240c8400L;
        } else
        {
            l4 = l3;
        }
        j1 = k - i1;
        if (l2 < l4)
        {
            j1--;
        }
        return (long)j1;
    }

    public boolean d()
    {
        return false;
    }

    public long e(long l)
    {
        long l1 = a.x().e(l);
        int k = a.f(l1);
        if (k > 1)
        {
            l1 -= 0x240c8400L * (long)(k - 1);
        }
        return l1;
    }

    public DurationField f()
    {
        return null;
    }

    public DurationField g()
    {
        return a.w();
    }

    public int h()
    {
        return a.Q();
    }

    public int i()
    {
        return a.R();
    }

    public long j(long l)
    {
        return l - e(l);
    }
}
