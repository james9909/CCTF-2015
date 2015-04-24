// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;

// Referenced classes of package org.joda.time.chrono:
//            BasicChronology, BasicSingleEraDateTimeField, LimitChronology, ZonedChronology, 
//            BasicMonthOfYearDateTimeField

public final class IslamicChronology extends BasicChronology
{
    public static class LeapYearPatternType
        implements Serializable
    {

        final byte a;
        final int b;

        boolean a(int i)
        {
            return (1 << i % 30 & b) > 0;
        }

        public boolean equals(Object obj)
        {
            boolean flag = obj instanceof LeapYearPatternType;
            boolean flag1 = false;
            if (flag)
            {
                byte byte0 = a;
                byte byte1 = ((LeapYearPatternType)obj).a;
                flag1 = false;
                if (byte0 == byte1)
                {
                    flag1 = true;
                }
            }
            return flag1;
        }

        public int hashCode()
        {
            return a;
        }

        LeapYearPatternType(int i, int j)
        {
            a = (byte)i;
            b = j;
        }
    }


    public static final LeapYearPatternType a = new LeapYearPatternType(0, 0x2524a4a4);
    public static final LeapYearPatternType b = new LeapYearPatternType(1, 0x252524a4);
    public static final LeapYearPatternType c = new LeapYearPatternType(2, 0x29292524);
    public static final LeapYearPatternType d = new LeapYearPatternType(3, 0x9292925);
    private static final DateTimeField e = new BasicSingleEraDateTimeField("AH");
    private static final Map f = new HashMap();
    private static final IslamicChronology g;
    private final LeapYearPatternType h;

    IslamicChronology(Chronology chronology, Object obj, LeapYearPatternType leapyearpatterntype)
    {
        super(chronology, obj, 4);
        h = leapyearpatterntype;
    }

    public static IslamicChronology a(DateTimeZone datetimezone, LeapYearPatternType leapyearpatterntype)
    {
        if (datetimezone == null)
        {
            datetimezone = DateTimeZone.a();
        }
        Map map = f;
        map;
        JVM INSTR monitorenter ;
        IslamicChronology aislamicchronology[] = (IslamicChronology[])f.get(datetimezone);
        if (aislamicchronology != null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        aislamicchronology = new IslamicChronology[4];
        f.put(datetimezone, aislamicchronology);
        IslamicChronology aislamicchronology1[] = aislamicchronology;
        IslamicChronology islamicchronology = aislamicchronology1[leapyearpatterntype.a];
        if (islamicchronology != null) goto _L2; else goto _L1
_L1:
        if (datetimezone != DateTimeZone.a)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        IslamicChronology islamicchronology1 = new IslamicChronology(null, null, leapyearpatterntype);
        islamicchronology = new IslamicChronology(LimitChronology.a(islamicchronology1, new DateTime(1, 1, 1, 0, 0, 0, 0, islamicchronology1), null), null, leapyearpatterntype);
_L3:
        aislamicchronology1[leapyearpatterntype.a] = islamicchronology;
_L2:
        map;
        JVM INSTR monitorexit ;
        return islamicchronology;
        islamicchronology = new IslamicChronology(ZonedChronology.a(a(DateTimeZone.a, leapyearpatterntype), datetimezone), null, leapyearpatterntype);
          goto _L3
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static IslamicChronology b(DateTimeZone datetimezone)
    {
        return a(datetimezone, b);
    }

    int O()
    {
        return 355;
    }

    int P()
    {
        return 30;
    }

    int Q()
    {
        return 1;
    }

    int R()
    {
        return 0x116bb3ae;
    }

    long T()
    {
        return 0x720ee9f20L;
    }

    long U()
    {
        return 0x390774f90L;
    }

    long V()
    {
        return 0x9813e400L;
    }

    long W()
    {
        return 0x13562a0cd800L;
    }

    public LeapYearPatternType Z()
    {
        return h;
    }

    int a(int i)
    {
        return !e(i) ? 354 : 355;
    }

    int a(long l)
    {
        long l1 = l + 0x26ac5419b000L;
        long l2 = l1 / 0xd5dbf68400L;
        long l3 = l1 % 0xd5dbf68400L;
        int i = (int)(1L + 30L * l2);
        long l4;
        if (e(i))
        {
            l4 = 0x724319400L;
        } else
        {
            l4 = 0x71f0b3800L;
        }
        while (l3 >= l4) 
        {
            l3 -= l4;
            i++;
            if (e(i))
            {
                l4 = 0x724319400L;
            } else
            {
                l4 = 0x71f0b3800L;
            }
        }
        return i;
    }

    int a(long l, int i)
    {
        int j = (int)((l - d(i)) / 0x5265c00L);
        if (j == 354)
        {
            return 12;
        } else
        {
            return 1 + (j * 2) / 59;
        }
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

    public Chronology a(DateTimeZone datetimezone)
    {
        if (datetimezone == null)
        {
            datetimezone = DateTimeZone.a();
        }
        if (datetimezone == a())
        {
            return this;
        } else
        {
            return b(datetimezone);
        }
    }

    protected void a(AssembledChronology.Fields fields)
    {
        if (L() == null)
        {
            super.a(fields);
            fields.I = e;
            fields.D = new BasicMonthOfYearDateTimeField(this, 12);
            fields.i = fields.D.e();
        }
    }

    int b(int i, int j)
    {
        while (j == 12 && e(i) || (j - 1) % 2 == 0) 
        {
            return 30;
        }
        return 29;
    }

    public Chronology b()
    {
        return g;
    }

    int c(long l)
    {
        int i = -1 + d(l);
        if (i == 354)
        {
            return 30;
        } else
        {
            return 1 + i % 59 % 30;
        }
    }

    long c(int i, int j)
    {
        int k = j - 1;
        if (k % 2 == 1)
        {
            return 0x9a7ec800L + 0x12fd73400L * (long)(k / 2);
        } else
        {
            return 0x12fd73400L * (long)(k / 2);
        }
    }

    boolean e(int i)
    {
        return h.a(i);
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj instanceof IslamicChronology)
        {
            IslamicChronology islamicchronology = (IslamicChronology)obj;
            boolean flag;
            if (Z().a == islamicchronology.Z().a && super.equals(obj))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            return flag;
        } else
        {
            return false;
        }
    }

    int f(int i)
    {
        while (i == 12 || (i - 1) % 2 == 0) 
        {
            return 30;
        }
        return 29;
    }

    long f(long l, int i)
    {
        int j = c(l, a(l));
        int k = h(l);
        if (j > 354 && !e(i))
        {
            j--;
        }
        return a(i, 1, j) + (long)k;
    }

    long g(int i)
    {
        if (i > 0x116bb3ae)
        {
            throw new ArithmeticException((new StringBuilder()).append("Year is too large: ").append(i).append(" > ").append(0x116bb3ae).toString());
        }
        if (i < 0xee9452e7)
        {
            throw new ArithmeticException((new StringBuilder()).append("Year is too small: ").append(i).append(" < ").append(0xee9452e7).toString());
        }
        int j = i - 1;
        long l = 0xffffd953abe65000L + 0xd5dbf68400L * (long)(j / 30);
        int k = 1 + j % 30;
        long l1 = l;
        int i1 = 1;
        while (i1 < k) 
        {
            long l2;
            if (e(i1))
            {
                l2 = 0x724319400L;
            } else
            {
                l2 = 0x71f0b3800L;
            }
            l1 += l2;
            i1++;
        }
        return l1;
    }

    public int hashCode()
    {
        return 13 * super.hashCode() + Z().hashCode();
    }

    static 
    {
        g = b(DateTimeZone.a);
    }
}
