// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;

import java.io.DataInput;
import org.joda.time.DateTimeZone;

// Referenced classes of package org.joda.time.tz:
//            DateTimeZoneBuilder

static final class d extends DateTimeZone
{

    final int b;
    final ce c;
    final ce d;

    static d a(DataInput datainput, String s)
    {
        return new <init>(s, (int)DateTimeZoneBuilder.a(datainput), ce.a(datainput), ce.a(datainput));
    }

    private ce g(long l)
    {
        int i;
        ce ce;
        ce ce1;
        i = b;
        ce = c;
        ce1 = d;
        long l3 = ce.a(l, i, ce1.b());
        long l1 = l3;
_L1:
        long l2 = ce1.a(l, i, ce.b());
        l = l2;
_L2:
        ArithmeticException arithmeticexception;
        IllegalArgumentException illegalargumentexception1;
        if (l1 > l)
        {
            return ce;
        } else
        {
            return ce1;
        }
        illegalargumentexception1;
        l1 = l;
          goto _L1
        arithmeticexception;
        l1 = l;
          goto _L1
        ArithmeticException arithmeticexception1;
        arithmeticexception1;
          goto _L2
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
          goto _L2
    }

    public String a(long l)
    {
        return g(l).a();
    }

    public int b(long l)
    {
        return b + g(l).b();
    }

    public boolean d()
    {
        return false;
    }

    public long e(long l)
    {
        int i;
        ce ce;
        ce ce1;
        i = b;
        ce = c;
        ce1 = d;
        long l4 = ce.a(l, i, ce1.b());
        long l1;
        long l5 = l4;
        if (l > 0L && l5 < 0L)
        {
            l5 = l;
        }
        l1 = l5;
_L2:
label0:
        {
            ArithmeticException arithmeticexception;
            long l2;
            long l3;
            IllegalArgumentException illegalargumentexception1;
            try
            {
                l3 = ce1.a(l, i, ce.b());
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                l2 = l;
                break label0;
            }
            catch (ArithmeticException arithmeticexception1)
            {
                l2 = l;
                break label0;
            }
            if (l <= 0L || l3 >= 0L)
            {
                l = l3;
            }
            l2 = l;
        }
        if (l1 > l2)
        {
            return l2;
        } else
        {
            return l1;
        }
        illegalargumentexception1;
        l1 = l;
        continue; /* Loop/switch isn't completed */
        arithmeticexception;
        l1 = l;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean equals(Object obj)
    {
        ce.b b1;
        if (this != obj)
        {
            if (obj instanceof ce.b)
            {
                if (!c().equals((b1 = (c)obj).c()) || b != b1.b || !c.equals(b1.c) || !d.equals(b1.d))
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

    public long f(long l)
    {
        long l1;
        int i;
        ce ce;
        ce ce1;
        l1 = l + 1L;
        i = b;
        ce = c;
        ce1 = d;
        long l5 = ce.b(l1, i, ce1.b());
        long l2;
        long l6 = l5;
        if (l1 < 0L && l6 > 0L)
        {
            l6 = l1;
        }
        l2 = l6;
_L2:
label0:
        {
            ArithmeticException arithmeticexception;
            long l3;
            long l4;
            IllegalArgumentException illegalargumentexception1;
            try
            {
                l4 = ce1.b(l1, i, ce.b());
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                l3 = l1;
                break label0;
            }
            catch (ArithmeticException arithmeticexception1)
            {
                l3 = l1;
                break label0;
            }
            if (l1 >= 0L || l4 <= 0L)
            {
                l1 = l4;
            }
            l3 = l1;
        }
        if (l2 > l3)
        {
            l3 = l2;
        }
        return l3 - 1L;
        illegalargumentexception1;
        l2 = l1;
        continue; /* Loop/switch isn't completed */
        arithmeticexception;
        l2 = l1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    ce(String s, int i, ce ce, ce ce1)
    {
        super(s);
        b = i;
        c = ce;
        d = ce1;
    }
}
