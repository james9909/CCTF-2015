// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.HashMap;
import java.util.Map;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeZone;
import org.joda.time.field.DelegatedDateTimeField;
import org.joda.time.field.DividedDateTimeField;
import org.joda.time.field.OffsetDateTimeField;
import org.joda.time.field.RemainderDateTimeField;
import org.joda.time.field.SkipUndoDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            AssembledChronology, BasicSingleEraDateTimeField, GJChronology, LimitChronology

public final class BuddhistChronology extends AssembledChronology
{

    private static final DateTimeField a = new BasicSingleEraDateTimeField("BE");
    private static final Map b = new HashMap();
    private static final BuddhistChronology c;

    private BuddhistChronology(Chronology chronology, Object obj)
    {
        super(chronology, obj);
    }

    public static BuddhistChronology b(DateTimeZone datetimezone)
    {
        org/joda/time/chrono/BuddhistChronology;
        JVM INSTR monitorenter ;
        if (datetimezone != null)
        {
            break MISSING_BLOCK_LABEL_11;
        }
        datetimezone = DateTimeZone.a();
        Map map = b;
        map;
        JVM INSTR monitorenter ;
        BuddhistChronology buddhistchronology = (BuddhistChronology)b.get(datetimezone);
        if (buddhistchronology != null)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        BuddhistChronology buddhistchronology2;
        BuddhistChronology buddhistchronology1 = new BuddhistChronology(GJChronology.a(datetimezone, null), null);
        buddhistchronology2 = new BuddhistChronology(LimitChronology.a(buddhistchronology1, new DateTime(1, 1, 1, 0, 0, 0, 0, buddhistchronology1), null), "");
        b.put(datetimezone, buddhistchronology2);
        buddhistchronology = buddhistchronology2;
        map;
        JVM INSTR monitorexit ;
        org/joda/time/chrono/BuddhistChronology;
        JVM INSTR monitorexit ;
        return buddhistchronology;
        Exception exception1;
        exception1;
        map;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        org/joda/time/chrono/BuddhistChronology;
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
        if (M() == null)
        {
            fields.E = new OffsetDateTimeField(new SkipUndoDateTimeField(this, fields.E), 543);
            DateTimeField _tmp = fields.F;
            fields.F = new DelegatedDateTimeField(fields.E, DateTimeFieldType.t());
            fields.B = new OffsetDateTimeField(new SkipUndoDateTimeField(this, fields.B), 543);
            fields.H = new DividedDateTimeField(new OffsetDateTimeField(fields.F, 99), DateTimeFieldType.v(), 100);
            fields.G = new OffsetDateTimeField(new RemainderDateTimeField((DividedDateTimeField)fields.H), DateTimeFieldType.u(), 1);
            fields.C = new OffsetDateTimeField(new RemainderDateTimeField(fields.B, DateTimeFieldType.q(), 100), DateTimeFieldType.q(), 1);
            fields.I = a;
        }
    }

    public Chronology b()
    {
        return c;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj instanceof BuddhistChronology)
        {
            BuddhistChronology buddhistchronology = (BuddhistChronology)obj;
            return a().equals(buddhistchronology.a());
        } else
        {
            return false;
        }
    }

    public int hashCode()
    {
        return 11 * "Buddhist".hashCode() + a().hashCode();
    }

    public String toString()
    {
        String s = "BuddhistChronology";
        DateTimeZone datetimezone = a();
        if (datetimezone != null)
        {
            s = (new StringBuilder()).append(s).append('[').append(datetimezone.c()).append(']').toString();
        }
        return s;
    }

    static 
    {
        c = b(DateTimeZone.a);
    }
}
