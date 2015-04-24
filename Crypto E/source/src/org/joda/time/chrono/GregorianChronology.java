// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.HashMap;
import java.util.Map;
import org.joda.time.Chronology;
import org.joda.time.DateTimeZone;

// Referenced classes of package org.joda.time.chrono:
//            BasicGJChronology, ZonedChronology

public final class GregorianChronology extends BasicGJChronology
{

    private static final GregorianChronology a;
    private static final Map b = new HashMap();

    private GregorianChronology(Chronology chronology, Object obj, int i)
    {
        super(chronology, obj, i);
    }

    public static GregorianChronology Z()
    {
        return a;
    }

    public static GregorianChronology a(DateTimeZone datetimezone, int i)
    {
        if (datetimezone == null)
        {
            datetimezone = DateTimeZone.a();
        }
        Map map = b;
        map;
        JVM INSTR monitorenter ;
        GregorianChronology agregorianchronology[] = (GregorianChronology[])b.get(datetimezone);
        if (agregorianchronology != null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        agregorianchronology = new GregorianChronology[7];
        b.put(datetimezone, agregorianchronology);
        GregorianChronology agregorianchronology1[];
        int j;
        agregorianchronology1 = agregorianchronology;
        j = i - 1;
        GregorianChronology gregorianchronology = agregorianchronology1[j];
        if (gregorianchronology != null) goto _L2; else goto _L1
_L1:
        if (datetimezone != DateTimeZone.a)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        gregorianchronology = new GregorianChronology(null, null, i);
_L3:
        agregorianchronology1[i - 1] = gregorianchronology;
_L2:
        map;
        JVM INSTR monitorexit ;
        return gregorianchronology;
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception;
        arrayindexoutofboundsexception;
        throw new IllegalArgumentException((new StringBuilder()).append("Invalid min days in first week: ").append(i).toString());
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        gregorianchronology = new GregorianChronology(ZonedChronology.a(a(DateTimeZone.a, i), datetimezone), null, i);
          goto _L3
    }

    public static GregorianChronology b(DateTimeZone datetimezone)
    {
        return a(datetimezone, 4);
    }

    int Q()
    {
        return 0xee943c92;
    }

    int R()
    {
        return 0x116bd2d1;
    }

    long T()
    {
        return 0x758f0dfc0L;
    }

    long U()
    {
        return 0x3ac786fe0L;
    }

    long V()
    {
        return 0x9cbebd50L;
    }

    long W()
    {
        return 0x1c4536cce9c0L;
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
        }
    }

    public Chronology b()
    {
        return a;
    }

    boolean e(int i)
    {
        return (i & 3) == 0 && (i % 100 != 0 || i % 400 == 0);
    }

    long g(int i)
    {
        int j = i / 100;
        if (i >= 0) goto _L2; else goto _L1
_L1:
        int k = -1 + (((i + 3 >> 2) - j) + (j + 3 >> 2));
_L4:
        return 0x5265c00L * (365L * (long)i + (long)(k - 0xafaa7));
_L2:
        k = ((i >> 2) - j) + (j >> 2);
        if (e(i))
        {
            k--;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static 
    {
        a = b(DateTimeZone.a);
    }
}
