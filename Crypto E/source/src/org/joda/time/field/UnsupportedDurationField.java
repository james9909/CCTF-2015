// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import java.io.Serializable;
import java.util.HashMap;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;

public final class UnsupportedDurationField extends DurationField
    implements Serializable
{

    private static HashMap a;
    private final DurationFieldType b;

    private UnsupportedDurationField(DurationFieldType durationfieldtype)
    {
        b = durationfieldtype;
    }

    public static UnsupportedDurationField a(DurationFieldType durationfieldtype)
    {
        org/joda/time/field/UnsupportedDurationField;
        JVM INSTR monitorenter ;
        if (a != null) goto _L2; else goto _L1
_L1:
        a = new HashMap(7);
        UnsupportedDurationField unsupporteddurationfield = null;
_L4:
        if (unsupporteddurationfield != null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        unsupporteddurationfield = new UnsupportedDurationField(durationfieldtype);
        a.put(durationfieldtype, unsupporteddurationfield);
        org/joda/time/field/UnsupportedDurationField;
        JVM INSTR monitorexit ;
        return unsupporteddurationfield;
_L2:
        unsupporteddurationfield = (UnsupportedDurationField)a.get(durationfieldtype);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private UnsupportedOperationException f()
    {
        return new UnsupportedOperationException((new StringBuilder()).append(b).append(" field is unsupported").toString());
    }

    public int a(DurationField durationfield)
    {
        return 0;
    }

    public long a(long l, int i)
    {
        throw f();
    }

    public long a(long l, long l1)
    {
        throw f();
    }

    public final DurationFieldType a()
    {
        return b;
    }

    public int b(long l, long l1)
    {
        throw f();
    }

    public boolean b()
    {
        return false;
    }

    public long c(long l, long l1)
    {
        throw f();
    }

    public boolean c()
    {
        return true;
    }

    public int compareTo(Object obj)
    {
        return a((DurationField)obj);
    }

    public long d()
    {
        return 0L;
    }

    public String e()
    {
        return b.m();
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj instanceof UnsupportedDurationField)
            {
                UnsupportedDurationField unsupporteddurationfield = (UnsupportedDurationField)obj;
                if (unsupporteddurationfield.e() == null)
                {
                    if (e() != null)
                    {
                        return false;
                    }
                } else
                {
                    return unsupporteddurationfield.e().equals(e());
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return e().hashCode();
    }

    public String toString()
    {
        return (new StringBuilder()).append("UnsupportedDurationField[").append(e()).append(']').toString();
    }
}
