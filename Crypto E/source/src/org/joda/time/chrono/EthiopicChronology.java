// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.HashMap;
import java.util.Map;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;
import org.joda.time.field.SkipDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            BasicFixedMonthChronology, BasicSingleEraDateTimeField, LimitChronology, ZonedChronology, 
//            BasicMonthOfYearDateTimeField

public final class EthiopicChronology extends BasicFixedMonthChronology
{

    private static final DateTimeField a = new BasicSingleEraDateTimeField("EE");
    private static final Map b = new HashMap();
    private static final EthiopicChronology c;

    EthiopicChronology(Chronology chronology, Object obj, int i)
    {
        super(chronology, obj, i);
    }

    public static EthiopicChronology a(DateTimeZone datetimezone, int i)
    {
        if (datetimezone == null)
        {
            datetimezone = DateTimeZone.a();
        }
        Map map = b;
        map;
        JVM INSTR monitorenter ;
        EthiopicChronology aethiopicchronology[] = (EthiopicChronology[])b.get(datetimezone);
        if (aethiopicchronology != null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        aethiopicchronology = new EthiopicChronology[7];
        b.put(datetimezone, aethiopicchronology);
        EthiopicChronology aethiopicchronology1[];
        int j;
        aethiopicchronology1 = aethiopicchronology;
        j = i - 1;
        EthiopicChronology ethiopicchronology = aethiopicchronology1[j];
        if (ethiopicchronology != null) goto _L2; else goto _L1
_L1:
        if (datetimezone != DateTimeZone.a)
        {
            break MISSING_BLOCK_LABEL_172;
        }
        EthiopicChronology ethiopicchronology1 = new EthiopicChronology(null, null, i);
        ethiopicchronology = new EthiopicChronology(LimitChronology.a(ethiopicchronology1, new DateTime(1, 1, 1, 0, 0, 0, 0, ethiopicchronology1), null), null, i);
_L3:
        aethiopicchronology1[i - 1] = ethiopicchronology;
_L2:
        map;
        JVM INSTR monitorexit ;
        return ethiopicchronology;
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception;
        arrayindexoutofboundsexception;
        throw new IllegalArgumentException((new StringBuilder()).append("Invalid min days in first week: ").append(i).toString());
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        ethiopicchronology = new EthiopicChronology(ZonedChronology.a(a(DateTimeZone.a, i), datetimezone), null, i);
          goto _L3
    }

    public static EthiopicChronology b(DateTimeZone datetimezone)
    {
        return a(datetimezone, 4);
    }

    int Q()
    {
        return 0xee9452e7;
    }

    int R()
    {
        return 0x116bbb58;
    }

    long W()
    {
        return 0x1c2919515f00L;
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
            fields.I = a;
            fields.D = new BasicMonthOfYearDateTimeField(this, 13);
            fields.i = fields.D.e();
        }
    }

    public Chronology b()
    {
        return c;
    }

    long g(int i)
    {
        int j = i - 1963;
        if (j > 0) goto _L2; else goto _L1
_L1:
        int k = j + 3 >> 2;
_L4:
        return 0x516e8ec00L + 0x5265c00L * (365L * (long)j + (long)k);
_L2:
        k = j >> 2;
        if (!e(i))
        {
            k++;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static 
    {
        c = b(DateTimeZone.a);
    }
}
