// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import org.joda.time.Chronology;

// Referenced classes of package org.joda.time.chrono:
//            BasicChronology

abstract class BasicGJChronology extends BasicChronology
{

    private static final int a[] = {
        31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 
        30, 31
    };
    private static final int b[] = {
        31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 
        30, 31
    };
    private static final long c[];
    private static final long d[];

    BasicGJChronology(Chronology chronology, Object obj, int i)
    {
        super(chronology, obj, i);
    }

    int a(long l, int i)
    {
        int j = (int)(l - d(i) >> 10);
        if (!e(i)) goto _L2; else goto _L1
_L1:
        if (j >= 0xea515a) goto _L4; else goto _L3
_L3:
        if (j >= 0x7528ad) goto _L6; else goto _L5
_L5:
        if (j >= 0x27e949) goto _L8; else goto _L7
_L7:
        return 1;
_L8:
        return j >= 0x4d3f64 ? 3 : 2;
_L6:
        if (j < 0x9bc85f)
        {
            return 4;
        }
        return j >= 0xc3b1a8 ? 6 : 5;
_L4:
        if (j < 0x160c39e)
        {
            if (j < 0x1123aa3)
            {
                return 7;
            }
            return j >= 0x13a23ec ? 9 : 8;
        }
        if (j < 0x188ace7)
        {
            return 10;
        }
        return j >= 0x1af4c99 ? 12 : 11;
_L2:
        if (j < 0xe907c3)
        {
            if (j < 0x73df16)
            {
                if (j >= 0x27e949)
                {
                    return j >= 0x4bf5cd ? 3 : 2;
                }
            } else
            {
                if (j < 0x9a7ec8)
                {
                    return 4;
                }
                return j >= 0xc26811 ? 6 : 5;
            }
        } else
        {
            if (j < 0x15f7a07)
            {
                if (j < 0x110f10c)
                {
                    return 7;
                }
                return j >= 0x138da55 ? 9 : 8;
            }
            if (j < 0x1876350)
            {
                return 10;
            }
            return j >= 0x1ae0302 ? 12 : 11;
        }
        if (true) goto _L7; else goto _L9
_L9:
    }

    long a(long l, long l1)
    {
        int i;
        int j;
        long l2;
        long l3;
        i = a(l);
        j = a(l1);
        l2 = l - d(i);
        l3 = l1 - d(j);
        if (l3 < 0x12fd73400L) goto _L2; else goto _L1
_L1:
        if (!e(j)) goto _L4; else goto _L3
_L3:
        if (e(i)) goto _L2; else goto _L5
_L5:
        long l4;
        long l5;
        long l6 = l3 - 0x5265c00L;
        l4 = l2;
        l5 = l6;
_L7:
        int k = i - j;
        if (l4 < l5)
        {
            k--;
        }
        return (long)k;
_L4:
        if (l2 >= 0x12fd73400L && e(i))
        {
            l4 = l2 - 0x5265c00L;
            l5 = l3;
            continue; /* Loop/switch isn't completed */
        }
_L2:
        l4 = l2;
        l5 = l3;
        if (true) goto _L7; else goto _L6
_L6:
    }

    int b(int i, int j)
    {
        if (e(i))
        {
            return b[j - 1];
        } else
        {
            return a[j - 1];
        }
    }

    long c(int i, int j)
    {
        if (e(i))
        {
            return d[j - 1];
        } else
        {
            return c[j - 1];
        }
    }

    int e(long l, int i)
    {
        int j = 28;
        if (i > j || i < 1)
        {
            j = i(l);
        }
        return j;
    }

    int f(int i)
    {
        return b[i - 1];
    }

    long f(long l, int i)
    {
        int j;
        int k;
        int i1;
        j = a(l);
        k = c(l, j);
        i1 = h(l);
        if (k <= 59) goto _L2; else goto _L1
_L1:
        if (!e(j)) goto _L4; else goto _L3
_L3:
        if (!e(i))
        {
            k--;
        }
_L2:
        return a(i, 1, k) + (long)i1;
_L4:
        if (e(i))
        {
            k++;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    static 
    {
        long l = 0L;
        c = new long[12];
        d = new long[12];
        int i = 0;
        long l1 = l;
        for (; i < 11; i++)
        {
            l1 += 0x5265c00L * (long)a[i];
            c[i + 1] = l1;
            l += 0x5265c00L * (long)b[i];
            d[i + 1] = l;
        }

    }
}
