// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import org.joda.time.Chronology;

// Referenced classes of package org.joda.time.chrono:
//            BasicChronology

abstract class BasicFixedMonthChronology extends BasicChronology
{

    BasicFixedMonthChronology(Chronology chronology, Object obj, int i)
    {
        super(chronology, obj, i);
    }

    int P()
    {
        return 30;
    }

    int S()
    {
        return 13;
    }

    long T()
    {
        return 0x758fac300L;
    }

    long U()
    {
        return 0x3ac7d6180L;
    }

    long V()
    {
        return 0x9a7ec800L;
    }

    int a(long l, int i)
    {
        return 1 + (int)((l - d(i)) / 0x9a7ec800L);
    }

    long a(long l, long l1)
    {
        int i = a(l);
        int j = a(l1);
        long l2 = l - d(i);
        long l3 = l1 - d(j);
        int k = i - j;
        if (l2 < l3)
        {
            k--;
        }
        return (long)k;
    }

    int b(int i, int j)
    {
        if (j != 13)
        {
            return 30;
        }
        return !e(i) ? 5 : 6;
    }

    int b(long l)
    {
        return 1 + (-1 + d(l)) / 30;
    }

    int c(long l)
    {
        return 1 + (-1 + d(l)) % 30;
    }

    long c(int i, int j)
    {
        return 0x9a7ec800L * (long)(j - 1);
    }

    boolean e(int i)
    {
        return (i & 3) == 3;
    }

    int f(int i)
    {
        return i == 13 ? 6 : 30;
    }

    long f(long l, int i)
    {
        int j = c(l, a(l));
        int k = h(l);
        if (j > 365 && !e(i))
        {
            j--;
        }
        return a(i, 1, j) + (long)k;
    }
}
