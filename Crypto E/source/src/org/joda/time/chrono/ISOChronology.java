// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeZone;
import org.joda.time.field.DividedDateTimeField;
import org.joda.time.field.RemainderDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            AssembledChronology, GregorianChronology, ZonedChronology, ISOYearOfEraDateTimeField

public final class ISOChronology extends AssembledChronology
{
    static final class Stub
        implements Serializable
    {
    }


    private static final ISOChronology a;
    private static final ISOChronology b[] = new ISOChronology[64];
    private static final Map c;

    private ISOChronology(Chronology chronology)
    {
        super(chronology, null);
    }

    public static ISOChronology N()
    {
        return a;
    }

    public static ISOChronology O()
    {
        return b(DateTimeZone.a());
    }

    public static ISOChronology b(DateTimeZone datetimezone)
    {
        int i;
        if (datetimezone == null)
        {
            datetimezone = DateTimeZone.a();
        }
        i = 0x3f & System.identityHashCode(datetimezone);
        ISOChronology isochronology = b[i];
        if (isochronology != null && isochronology.a() == datetimezone)
        {
            return isochronology;
        }
        Map map = c;
        map;
        JVM INSTR monitorenter ;
        ISOChronology isochronology1 = (ISOChronology)c.get(datetimezone);
        if (isochronology1 != null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        isochronology1 = new ISOChronology(ZonedChronology.a(a, datetimezone));
        c.put(datetimezone, isochronology1);
        map;
        JVM INSTR monitorexit ;
        b[i] = isochronology1;
        return isochronology1;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
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
        if (L().a() == DateTimeZone.a)
        {
            fields.H = new DividedDateTimeField(ISOYearOfEraDateTimeField.a, DateTimeFieldType.v(), 100);
            fields.G = new RemainderDateTimeField((DividedDateTimeField)fields.H, DateTimeFieldType.u());
            fields.C = new RemainderDateTimeField((DividedDateTimeField)fields.H, DateTimeFieldType.q());
            fields.k = fields.H.e();
        }
    }

    public Chronology b()
    {
        return a;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj instanceof ISOChronology)
        {
            ISOChronology isochronology = (ISOChronology)obj;
            return a().equals(isochronology.a());
        } else
        {
            return false;
        }
    }

    public int hashCode()
    {
        return 11 * "ISO".hashCode() + a().hashCode();
    }

    public String toString()
    {
        String s = "ISOChronology";
        DateTimeZone datetimezone = a();
        if (datetimezone != null)
        {
            s = (new StringBuilder()).append(s).append('[').append(datetimezone.c()).append(']').toString();
        }
        return s;
    }

    static 
    {
        c = new HashMap();
        a = new ISOChronology(GregorianChronology.Z());
        c.put(DateTimeZone.a, a);
    }
}
