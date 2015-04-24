// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.field.FieldUtils;
import org.joda.time.field.ImpreciseDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            BasicChronology

class BasicYearDateTimeField extends ImpreciseDateTimeField
{

    protected final BasicChronology a;

    BasicYearDateTimeField(BasicChronology basicchronology)
    {
        super(DateTimeFieldType.s(), basicchronology.T());
        a = basicchronology;
    }

    public int a(long l)
    {
        return a.a(l);
    }

    public long a(long l, int k)
    {
        if (k == 0)
        {
            return l;
        } else
        {
            return b(l, FieldUtils.a(a(l), k));
        }
    }

    public long a(long l, long l1)
    {
        return a(l, FieldUtils.a(l1));
    }

    public long b(long l, int k)
    {
        FieldUtils.a(this, k, a.Q(), a.R());
        return a.f(l, k);
    }

    public boolean b(long l)
    {
        return a.e(a(l));
    }

    public long c(long l, long l1)
    {
        if (l < l1)
        {
            return -a.a(l1, l);
        } else
        {
            return a.a(l, l1);
        }
    }

    public boolean d()
    {
        return false;
    }

    public long e(long l)
    {
        return a.d(a(l));
    }

    public long f(long l)
    {
        int k = a(l);
        if (l != a.d(k))
        {
            l = a.d(k + 1);
        }
        return l;
    }

    public DurationField f()
    {
        return null;
    }

    public DurationField g()
    {
        return a.s();
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
