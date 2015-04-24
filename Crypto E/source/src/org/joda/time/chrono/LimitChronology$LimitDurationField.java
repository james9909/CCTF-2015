// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import org.joda.time.DurationField;
import org.joda.time.field.DecoratedDurationField;

// Referenced classes of package org.joda.time.chrono:
//            LimitChronology

class a extends DecoratedDurationField
{

    final LimitChronology a;

    public long a(long l, int i)
    {
        a.a(l, null);
        long l1 = f().a(l, i);
        a.a(l1, "resulting");
        return l1;
    }

    public long a(long l, long l1)
    {
        a.a(l, null);
        long l2 = f().a(l, l1);
        a.a(l2, "resulting");
        return l2;
    }

    public int b(long l, long l1)
    {
        a.a(l, "minuend");
        a.a(l1, "subtrahend");
        return f().b(l, l1);
    }

    public long c(long l, long l1)
    {
        a.a(l, "minuend");
        a.a(l1, "subtrahend");
        return f().c(l, l1);
    }

    (LimitChronology limitchronology, DurationField durationfield)
    {
        a = limitchronology;
        super(durationfield, durationfield.a());
    }
}
