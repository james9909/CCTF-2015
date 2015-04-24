// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import org.joda.time.DateTimeField;
import org.joda.time.DurationField;

// Referenced classes of package org.joda.time.chrono:
//            GJChronology, GregorianChronology

final class e extends e
{

    final GJChronology h;

    public long a(long l, int i)
    {
        if (l < c) goto _L2; else goto _L1
_L1:
        long l1 = b.a(l, i);
        if (l1 >= c || l1 + GJChronology.a(h) >= c) goto _L4; else goto _L3
_L3:
        if (!d) goto _L6; else goto _L5
_L5:
        if (GJChronology.b(h).z().a(l1) <= 0)
        {
            l1 = GJChronology.b(h).z().a(l1, -1);
        }
_L9:
        l1 = l(l1);
_L4:
        return l1;
_L6:
        if (GJChronology.b(h).E().a(l1) <= 0)
        {
            l1 = GJChronology.b(h).E().a(l1, -1);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        l1 = a.a(l, i);
        if (l1 < c || l1 - GJChronology.a(h) < c) goto _L4; else goto _L7
_L7:
        return k(l1);
        if (true) goto _L9; else goto _L8
_L8:
    }

    public long a(long l, long l1)
    {
        if (l < c) goto _L2; else goto _L1
_L1:
        long l2 = b.a(l, l1);
        if (l2 >= c || l2 + GJChronology.a(h) >= c) goto _L4; else goto _L3
_L3:
        if (!d) goto _L6; else goto _L5
_L5:
        if (GJChronology.b(h).z().a(l2) <= 0)
        {
            l2 = GJChronology.b(h).z().a(l2, -1);
        }
_L9:
        l2 = l(l2);
_L4:
        return l2;
_L6:
        if (GJChronology.b(h).E().a(l2) <= 0)
        {
            l2 = GJChronology.b(h).E().a(l2, -1);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        l2 = a.a(l, l1);
        if (l2 < c || l2 - GJChronology.a(h) < c) goto _L4; else goto _L7
_L7:
        return k(l2);
        if (true) goto _L9; else goto _L8
_L8:
    }

    public int b(long l, long l1)
    {
        if (l >= c)
        {
            if (l1 >= c)
            {
                return b.b(l, l1);
            } else
            {
                long l3 = l(l);
                return a.b(l3, l1);
            }
        }
        if (l1 < c)
        {
            return a.b(l, l1);
        } else
        {
            long l2 = k(l);
            return b.b(l2, l1);
        }
    }

    public int c(long l)
    {
        if (l >= c)
        {
            return b.c(l);
        } else
        {
            return a.c(l);
        }
    }

    public long c(long l, long l1)
    {
        if (l >= c)
        {
            if (l1 >= c)
            {
                return b.c(l, l1);
            } else
            {
                long l3 = l(l);
                return a.c(l3, l1);
            }
        }
        if (l1 < c)
        {
            return a.c(l, l1);
        } else
        {
            long l2 = k(l);
            return b.c(l2, l1);
        }
    }

    public int d(long l)
    {
        if (l >= c)
        {
            return b.d(l);
        } else
        {
            return a.d(l);
        }
    }

    (GJChronology gjchronology, DateTimeField datetimefield, DateTimeField datetimefield1, long l)
    {
        this(gjchronology, datetimefield, datetimefield1, null, l, false);
    }

    <init>(GJChronology gjchronology, DateTimeField datetimefield, DateTimeField datetimefield1, DurationField durationfield, long l)
    {
        this(gjchronology, datetimefield, datetimefield1, durationfield, l, false);
    }

    <init>(GJChronology gjchronology, DateTimeField datetimefield, DateTimeField datetimefield1, DurationField durationfield, long l, boolean flag)
    {
        h = gjchronology;
        super(gjchronology, datetimefield, datetimefield1, l, flag);
        if (durationfield == null)
        {
            durationfield = new nit>(e, this);
        }
        e = durationfield;
    }
}
