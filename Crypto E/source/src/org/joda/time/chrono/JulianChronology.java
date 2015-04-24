// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.HashMap;
import java.util.Map;
import org.joda.time.Chronology;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeZone;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.field.SkipDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            BasicGJChronology, ZonedChronology

public final class JulianChronology extends BasicGJChronology
{

    private static final JulianChronology a;
    private static final Map b = new HashMap();

    JulianChronology(Chronology chronology, Object obj, int j)
    {
        super(chronology, obj, j);
    }

    public static JulianChronology a(DateTimeZone datetimezone, int j)
    {
        if (datetimezone == null)
        {
            datetimezone = DateTimeZone.a();
        }
        Map map = b;
        map;
        JVM INSTR monitorenter ;
        JulianChronology ajulianchronology[] = (JulianChronology[])b.get(datetimezone);
        if (ajulianchronology != null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        ajulianchronology = new JulianChronology[7];
        b.put(datetimezone, ajulianchronology);
        JulianChronology ajulianchronology1[];
        int k;
        ajulianchronology1 = ajulianchronology;
        k = j - 1;
        JulianChronology julianchronology = ajulianchronology1[k];
        if (julianchronology != null) goto _L2; else goto _L1
_L1:
        if (datetimezone != DateTimeZone.a)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        julianchronology = new JulianChronology(null, null, j);
_L3:
        ajulianchronology1[j - 1] = julianchronology;
_L2:
        map;
        JVM INSTR monitorexit ;
        return julianchronology;
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception;
        arrayindexoutofboundsexception;
        throw new IllegalArgumentException((new StringBuilder()).append("Invalid min days in first week: ").append(j).toString());
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        julianchronology = new JulianChronology(ZonedChronology.a(a(DateTimeZone.a, j), datetimezone), null, j);
          goto _L3
    }

    public static JulianChronology b(DateTimeZone datetimezone)
    {
        return a(datetimezone, 4);
    }

    static int i(int j)
    {
        if (j <= 0)
        {
            if (j == 0)
            {
                throw new IllegalFieldValueException(DateTimeFieldType.s(), Integer.valueOf(j), null, null);
            }
            j++;
        }
        return j;
    }

    int Q()
    {
        return 0xee945402;
    }

    int R()
    {
        return 0x116bbb60;
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
        return 0x9cbf9040L;
    }

    long W()
    {
        return 0x1c453aba2980L;
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
            fields.E = new SkipDateTimeField(this, fields.E);
            fields.B = new SkipDateTimeField(this, fields.B);
        }
    }

    long b(int j, int k, int l)
    {
        return super.b(i(j), k, l);
    }

    public Chronology b()
    {
        return a;
    }

    boolean e(int j)
    {
        return (j & 3) == 0;
    }

    long g(int j)
    {
        int k = j - 1968;
        if (k > 0) goto _L2; else goto _L1
_L1:
        int l = k + 3 >> 2;
_L4:
        return 0x5265c00L * (365L * (long)k + (long)l) - 0xe71960800L;
_L2:
        l = k >> 2;
        if (!e(j))
        {
            l++;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static 
    {
        a = b(DateTimeZone.a);
    }
}
