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

class BasicMonthOfYearDateTimeField extends ImpreciseDateTimeField
{

    private final BasicChronology a;
    private final int c;
    private final int d;

    BasicMonthOfYearDateTimeField(BasicChronology basicchronology, int k)
    {
        super(DateTimeFieldType.r(), basicchronology.V());
        a = basicchronology;
        c = a.S();
        d = k;
    }

    public int a(long l)
    {
        return a.b(l);
    }

    public long a(long l, int k)
    {
        if (k == 0)
        {
            return l;
        }
        long l1 = a.h(l);
        int i1 = a.a(l);
        int j1 = a.a(l, i1);
        int k1 = k + (j1 - 1);
        int i2;
        int k2;
        int l2;
        int i3;
        if (k1 >= 0)
        {
            i2 = i1 + k1 / c;
            k2 = 1 + k1 % c;
        } else
        {
            i2 = -1 + (i1 + k1 / c);
            int j2 = Math.abs(k1) % c;
            if (j2 == 0)
            {
                j2 = c;
            }
            k2 = 1 + (c - j2);
            if (k2 == 1)
            {
                i2++;
            }
        }
        l2 = a.a(l, i1, j1);
        i3 = a.b(i2, k2);
        if (l2 <= i3)
        {
            i3 = l2;
        }
        return l1 + a.a(i2, k2, i3);
    }

    public long a(long l, long l1)
    {
        long l2;
        int i1;
        int j1;
        long l3;
        int k = (int)l1;
        if ((long)k == l1)
        {
            return a(l, k);
        }
        l2 = a.h(l);
        i1 = a.a(l);
        j1 = a.a(l, i1);
        l3 = l1 + (long)(j1 - 1);
        if (l3 < 0L) goto _L2; else goto _L1
_L1:
        long l4;
        long l5;
        l4 = (long)i1 + l3 / (long)c;
        l5 = 1L + l3 % (long)c;
_L4:
        if (l4 < (long)a.Q() || l4 > (long)a.R())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Magnitude of add amount is too large: ").append(l1).toString());
        }
        break; /* Loop/switch isn't completed */
_L2:
        l4 = ((long)i1 + l3 / (long)c) - 1L;
        int k1 = (int)(Math.abs(l3) % (long)c);
        if (k1 == 0)
        {
            k1 = c;
        }
        l5 = 1 + (c - k1);
        if (l5 == 1L)
        {
            l4++;
        }
        if (true) goto _L4; else goto _L3
_L3:
        int i2 = (int)l4;
        int j2 = (int)l5;
        int k2 = a.a(l, i1, j1);
        int i3 = a.b(i2, j2);
        if (k2 <= i3)
        {
            i3 = k2;
        }
        return l2 + a.a(i2, j2, i3);
    }

    public long b(long l, int k)
    {
        FieldUtils.a(this, k, 1, c);
        int i1 = a.a(l);
        int j1 = a.b(l, i1);
        int k1 = a.b(i1, k);
        if (j1 <= k1)
        {
            k1 = j1;
        }
        return a.a(i1, k, k1) + (long)a.h(l);
    }

    public boolean b(long l)
    {
        int k = a.a(l);
        boolean flag = a.e(k);
        boolean flag1 = false;
        if (flag)
        {
            int i1 = a.a(l, k);
            int j1 = d;
            flag1 = false;
            if (i1 == j1)
            {
                flag1 = true;
            }
        }
        return flag1;
    }

    public long c(long l, long l1)
    {
        long l2;
        if (l < l1)
        {
            l2 = -b(l1, l);
        } else
        {
            int k = a.a(l);
            int i1 = a.a(l, k);
            int j1 = a.a(l1);
            int k1 = a.a(l1, j1);
            l2 = ((long)(k - j1) * (long)c + (long)i1) - (long)k1;
            int i2 = a.a(l, k, i1);
            if (i2 == a.b(k, i1) && a.a(l1, j1, k1) > i2)
            {
                l1 = a.u().b(l1, i2);
            }
            if (l - a.a(k, i1) < l1 - a.a(j1, k1))
            {
                return l2 - 1L;
            }
        }
        return l2;
    }

    public boolean d()
    {
        return false;
    }

    public long e(long l)
    {
        int k = a.a(l);
        int i1 = a.a(l, k);
        return a.a(k, i1);
    }

    public DurationField f()
    {
        return a.D();
    }

    public DurationField g()
    {
        return a.s();
    }

    public int h()
    {
        return 1;
    }

    public int i()
    {
        return c;
    }

    public long j(long l)
    {
        return l - e(l);
    }
}
