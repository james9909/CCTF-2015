// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Locale;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.ReadablePartial;

public final class UnsupportedDateTimeField extends DateTimeField
    implements Serializable
{

    private static HashMap a;
    private final DateTimeFieldType b;
    private final DurationField c;

    private UnsupportedDateTimeField(DateTimeFieldType datetimefieldtype, DurationField durationfield)
    {
        if (datetimefieldtype == null || durationfield == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            b = datetimefieldtype;
            c = durationfield;
            return;
        }
    }

    public static UnsupportedDateTimeField a(DateTimeFieldType datetimefieldtype, DurationField durationfield)
    {
        org/joda/time/field/UnsupportedDateTimeField;
        JVM INSTR monitorenter ;
        if (a != null) goto _L2; else goto _L1
_L1:
        a = new HashMap(7);
        UnsupportedDateTimeField unsupporteddatetimefield = null;
_L4:
        if (unsupporteddatetimefield != null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        unsupporteddatetimefield = new UnsupportedDateTimeField(datetimefieldtype, durationfield);
        a.put(datetimefieldtype, unsupporteddatetimefield);
        org/joda/time/field/UnsupportedDateTimeField;
        JVM INSTR monitorexit ;
        return unsupporteddatetimefield;
_L2:
        unsupporteddatetimefield = (UnsupportedDateTimeField)a.get(datetimefieldtype);
        if (unsupporteddatetimefield == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        DurationField durationfield1 = unsupporteddatetimefield.e();
        if (durationfield1 != durationfield)
        {
            unsupporteddatetimefield = null;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private UnsupportedOperationException j()
    {
        return new UnsupportedOperationException((new StringBuilder()).append(b).append(" field is unsupported").toString());
    }

    public int a(long l)
    {
        throw j();
    }

    public int a(Locale locale)
    {
        throw j();
    }

    public int a(ReadablePartial readablepartial)
    {
        throw j();
    }

    public int a(ReadablePartial readablepartial, int ai[])
    {
        throw j();
    }

    public long a(long l, int k)
    {
        return e().a(l, k);
    }

    public long a(long l, long l1)
    {
        return e().a(l, l1);
    }

    public long a(long l, String s, Locale locale)
    {
        throw j();
    }

    public String a(int k, Locale locale)
    {
        throw j();
    }

    public String a(long l, Locale locale)
    {
        throw j();
    }

    public String a(ReadablePartial readablepartial, Locale locale)
    {
        throw j();
    }

    public DateTimeFieldType a()
    {
        return b;
    }

    public int b(long l, long l1)
    {
        return e().b(l, l1);
    }

    public int b(ReadablePartial readablepartial)
    {
        throw j();
    }

    public int b(ReadablePartial readablepartial, int ai[])
    {
        throw j();
    }

    public long b(long l, int k)
    {
        throw j();
    }

    public String b()
    {
        return b.x();
    }

    public String b(int k, Locale locale)
    {
        throw j();
    }

    public String b(long l, Locale locale)
    {
        throw j();
    }

    public String b(ReadablePartial readablepartial, Locale locale)
    {
        throw j();
    }

    public boolean b(long l)
    {
        throw j();
    }

    public int c(long l)
    {
        throw j();
    }

    public long c(long l, long l1)
    {
        return e().c(l, l1);
    }

    public boolean c()
    {
        return false;
    }

    public int d(long l)
    {
        throw j();
    }

    public boolean d()
    {
        return false;
    }

    public long e(long l)
    {
        throw j();
    }

    public DurationField e()
    {
        return c;
    }

    public long f(long l)
    {
        throw j();
    }

    public DurationField f()
    {
        return null;
    }

    public long g(long l)
    {
        throw j();
    }

    public DurationField g()
    {
        return null;
    }

    public int h()
    {
        throw j();
    }

    public long h(long l)
    {
        throw j();
    }

    public int i()
    {
        throw j();
    }

    public long i(long l)
    {
        throw j();
    }

    public long j(long l)
    {
        throw j();
    }

    public String toString()
    {
        return "UnsupportedDateTimeField";
    }
}
