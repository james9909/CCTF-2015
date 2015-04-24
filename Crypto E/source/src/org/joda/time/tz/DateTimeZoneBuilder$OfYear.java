// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;

import java.io.DataInput;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.chrono.ISOChronology;

// Referenced classes of package org.joda.time.tz:
//            DateTimeZoneBuilder

static final class f
{

    final char a;
    final int b;
    final int c;
    final int d;
    final boolean e;
    final int f;

    private long a(Chronology chronology, long l)
    {
        long l1;
        try
        {
            l1 = c(chronology, l);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            if (b == 2 && c == 29)
            {
                for (; !chronology.E().b(l); l = chronology.E().a(l, 1)) { }
                return c(chronology, l);
            } else
            {
                throw illegalargumentexception;
            }
        }
        return l1;
    }

    static c a(DataInput datainput)
    {
        return new <init>((char)datainput.readUnsignedByte(), datainput.readUnsignedByte(), datainput.readByte(), datainput.readUnsignedByte(), datainput.readBoolean(), (int)DateTimeZoneBuilder.a(datainput));
    }

    private long b(Chronology chronology, long l)
    {
        long l1;
        try
        {
            l1 = c(chronology, l);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            if (b == 2 && c == 29)
            {
                for (; !chronology.E().b(l); l = chronology.E().a(l, -1)) { }
                return c(chronology, l);
            } else
            {
                throw illegalargumentexception;
            }
        }
        return l1;
    }

    private long c(Chronology chronology, long l)
    {
        if (c >= 0)
        {
            return chronology.u().b(l, c);
        } else
        {
            long l1 = chronology.u().b(l, 1);
            long l2 = chronology.C().a(l1, 1);
            return chronology.u().a(l2, c);
        }
    }

    private long d(Chronology chronology, long l)
    {
        int j;
        int i = chronology.t().a(l);
        j = d - i;
        if (j == 0) goto _L2; else goto _L1
_L1:
        if (!e) goto _L4; else goto _L3
_L3:
        if (j < 0)
        {
            j += 7;
        }
_L6:
        l = chronology.t().a(l, j);
_L2:
        return l;
_L4:
        if (j > 0)
        {
            j -= 7;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public long a(long l, int i, int j)
    {
        long l1;
        ISOChronology isochronology;
        long l2;
        long l3;
        long l4;
        if (a == 'w')
        {
            i += j;
        } else
        if (a != 's')
        {
            i = 0;
        }
        l1 = l + (long)i;
        isochronology = ISOChronology.N();
        l2 = isochronology.C().b(l1, b);
        l3 = isochronology.e().b(l2, 0);
        l4 = a(((Chronology) (isochronology)), isochronology.e().a(l3, f));
        if (d == 0)
        {
            if (l4 <= l1)
            {
                l4 = a(((Chronology) (isochronology)), isochronology.E().a(l4, 1));
            }
        } else
        {
            l4 = d(isochronology, l4);
            if (l4 <= l1)
            {
                long l5 = isochronology.E().a(l4, 1);
                l4 = d(isochronology, a(((Chronology) (isochronology)), isochronology.C().b(l5, b)));
            }
        }
        return l4 - (long)i;
    }

    public long b(long l, int i, int j)
    {
        long l1;
        ISOChronology isochronology;
        long l2;
        long l3;
        long l4;
        if (a == 'w')
        {
            i += j;
        } else
        if (a != 's')
        {
            i = 0;
        }
        l1 = l + (long)i;
        isochronology = ISOChronology.N();
        l2 = isochronology.C().b(l1, b);
        l3 = isochronology.e().b(l2, 0);
        l4 = b(((Chronology) (isochronology)), isochronology.e().a(l3, f));
        if (d == 0)
        {
            if (l4 >= l1)
            {
                l4 = b(((Chronology) (isochronology)), isochronology.E().a(l4, -1));
            }
        } else
        {
            l4 = d(isochronology, l4);
            if (l4 >= l1)
            {
                long l5 = isochronology.E().a(l4, -1);
                l4 = d(isochronology, b(((Chronology) (isochronology)), isochronology.C().b(l5, b)));
            }
        }
        return l4 - (long)i;
    }

    public boolean equals(Object obj)
    {
        b b1;
        if (this != obj)
        {
            if (obj instanceof b)
            {
                if (a != (b1 = (a)obj).a || b != b1.b || c != b1.c || d != b1.d || e != b1.e || f != b1.f)
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    (char c1, int i, int j, int k, boolean flag, int l)
    {
        if (c1 != 'u' && c1 != 'w' && c1 != 's')
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown mode: ").append(c1).toString());
        } else
        {
            a = c1;
            b = i;
            c = j;
            d = k;
            e = flag;
            f = l;
            return;
        }
    }
}
