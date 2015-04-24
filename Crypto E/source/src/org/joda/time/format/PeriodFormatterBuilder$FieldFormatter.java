// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Locale;
import org.joda.time.DurationFieldType;
import org.joda.time.PeriodType;
import org.joda.time.ReadablePeriod;

// Referenced classes of package org.joda.time.format:
//            PeriodParser, PeriodPrinter, FormatUtils, PeriodFormatterBuilder

static class h
    implements PeriodParser, PeriodPrinter
{

    private final int a;
    private final int b;
    private final int c;
    private final boolean d;
    private final int e;
    private final x.a f[];
    private final x g;
    private final x h;

    int a()
    {
        return e;
    }

    public int a(ReadablePeriod readableperiod, int i, Locale locale)
    {
        while (i <= 0 || b != 4 && a(readableperiod) == 0x7fffffffffffffffL) 
        {
            return 0;
        }
        return 1;
    }

    public int a(ReadablePeriod readableperiod, Locale locale)
    {
        long l = a(readableperiod);
        int i;
        if (l == 0x7fffffffffffffffL)
        {
            i = 0;
        } else
        {
            i = Math.max(FormatUtils.a(l), a);
            if (e >= 8)
            {
                int j;
                int k;
                if (l < 0L)
                {
                    k = Math.max(i, 5);
                } else
                {
                    k = Math.max(i, 4);
                }
                i = k + 1;
                if (e == 9 && Math.abs(l) % 1000L == 0L)
                {
                    i -= 4;
                }
                l /= 1000L;
            }
            j = (int)l;
            if (g != null)
            {
                i += g.a(j);
            }
            if (h != null)
            {
                return i + h.a(j);
            }
        }
        return i;
    }

    long a(ReadablePeriod readableperiod)
    {
        PeriodType periodtype;
        if (b == 4)
        {
            periodtype = null;
        } else
        {
            periodtype = readableperiod.b();
        }
        if (periodtype == null || a(periodtype, e)) goto _L2; else goto _L1
_L1:
        return 0x7fffffffffffffffL;
_L2:
        e;
        JVM INSTR tableswitch 0 9: default 100
    //                   0 104
    //                   1 163
    //                   2 178
    //                   3 193
    //                   4 208
    //                   5 223
    //                   6 238
    //                   7 253
    //                   8 268
    //                   9 268;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L12
_L3:
        return 0x7fffffffffffffffL;
_L4:
        long l = readableperiod.a(DurationFieldType.j());
_L17:
        if (l != 0L) goto _L14; else goto _L13
_L13:
        b;
        JVM INSTR tableswitch 1 5: default 160
    //                   1 366
    //                   2 304
    //                   3 160
    //                   4 160
    //                   5 26;
           goto _L14 _L15 _L16 _L14 _L14 _L1
_L15:
        continue; /* Loop/switch isn't completed */
_L14:
        return l;
_L5:
        l = readableperiod.a(DurationFieldType.i());
          goto _L17
_L6:
        l = readableperiod.a(DurationFieldType.g());
          goto _L17
_L7:
        l = readableperiod.a(DurationFieldType.f());
          goto _L17
_L8:
        l = readableperiod.a(DurationFieldType.d());
          goto _L17
_L9:
        l = readableperiod.a(DurationFieldType.c());
          goto _L17
_L10:
        l = readableperiod.a(DurationFieldType.b());
          goto _L17
_L11:
        l = readableperiod.a(DurationFieldType.a());
          goto _L17
_L12:
        int i = readableperiod.a(DurationFieldType.b());
        int j = readableperiod.a(DurationFieldType.a());
        l = 1000L * (long)i + (long)j;
          goto _L17
_L16:
        if (!b(readableperiod) || f[e] != this) goto _L1; else goto _L18
_L18:
        int i1 = 1 + e;
_L21:
        if (i1 > 9) goto _L14; else goto _L19
_L19:
        if (a(periodtype, i1) && f[i1] != null) goto _L1; else goto _L20
_L20:
        i1++;
          goto _L21
        if (!b(readableperiod) || f[e] != this) goto _L1; else goto _L22
_L22:
        int k = -1 + Math.min(e, 8);
_L25:
        if (k < 0 || k > 9) goto _L14; else goto _L23
_L23:
        if (a(periodtype, k) && f[k] != null) goto _L1; else goto _L24
_L24:
        k--;
          goto _L25
    }

    public void a(StringBuffer stringbuffer, ReadablePeriod readableperiod, Locale locale)
    {
        long l = a(readableperiod);
        if (l != 0x7fffffffffffffffL)
        {
            int i = (int)l;
            if (e >= 8)
            {
                i = (int)(l / 1000L);
            }
            if (g != null)
            {
                g.a(stringbuffer, i);
            }
            int j = stringbuffer.length();
            int k = a;
            if (k <= 1)
            {
                FormatUtils.a(stringbuffer, i);
            } else
            {
                FormatUtils.a(stringbuffer, i, k);
            }
            if (e >= 8)
            {
                int i1 = (int)(Math.abs(l) % 1000L);
                if (e == 8 || i1 > 0)
                {
                    if (l < 0L && l > -1000L)
                    {
                        stringbuffer.insert(j, '-');
                    }
                    stringbuffer.append('.');
                    FormatUtils.a(stringbuffer, i1, 3);
                }
            }
            if (h != null)
            {
                h.a(stringbuffer, i);
                return;
            }
        }
    }

    boolean a(PeriodType periodtype, int i)
    {
        i;
        JVM INSTR tableswitch 0 9: default 56
    //                   0 58
    //                   1 66
    //                   2 74
    //                   3 82
    //                   4 90
    //                   5 98
    //                   6 106
    //                   7 114
    //                   8 122
    //                   9 122;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L10
_L1:
        return false;
_L2:
        return periodtype.a(DurationFieldType.j());
_L3:
        return periodtype.a(DurationFieldType.i());
_L4:
        return periodtype.a(DurationFieldType.g());
_L5:
        return periodtype.a(DurationFieldType.f());
_L6:
        return periodtype.a(DurationFieldType.d());
_L7:
        return periodtype.a(DurationFieldType.c());
_L8:
        return periodtype.a(DurationFieldType.b());
_L9:
        return periodtype.a(DurationFieldType.a());
_L10:
        if (periodtype.a(DurationFieldType.b()) || periodtype.a(DurationFieldType.a()))
        {
            return true;
        }
        if (true) goto _L1; else goto _L11
_L11:
    }

    boolean b(ReadablePeriod readableperiod)
    {
        int i = readableperiod.c();
        for (int j = 0; j < i; j++)
        {
            if (readableperiod.c(j) != 0)
            {
                return false;
            }
        }

        return true;
    }

    x(int i, int j, int k, boolean flag, int l, x ax[], x x, 
            x x1)
    {
        a = i;
        b = j;
        c = k;
        d = flag;
        e = l;
        f = ax;
        g = x;
        h = x1;
    }

    x(x x, x x1)
    {
        a = x.a;
        b = x.b;
        c = x.c;
        d = x.d;
        e = x.e;
        f = x.f;
        g = x.g;
        if (x.h != null)
        {
            x1 = new <init>(x.h, x1);
        }
        h = x1;
    }
}
