// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import java.io.Serializable;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;

// Referenced classes of package org.joda.time.field:
//            FieldUtils

public abstract class BaseDurationField extends DurationField
    implements Serializable
{

    private final DurationFieldType a;

    public BaseDurationField(DurationFieldType durationfieldtype)
    {
        if (durationfieldtype == null)
        {
            throw new IllegalArgumentException("The type must not be null");
        } else
        {
            a = durationfieldtype;
            return;
        }
    }

    public int a(DurationField durationfield)
    {
        long l = durationfield.d();
        long l1 = d();
        if (l1 == l)
        {
            return 0;
        }
        return l1 >= l ? 1 : -1;
    }

    public final DurationFieldType a()
    {
        return a;
    }

    public int b(long l, long l1)
    {
        return FieldUtils.a(c(l, l1));
    }

    public final boolean b()
    {
        return true;
    }

    public int compareTo(Object obj)
    {
        return a((DurationField)obj);
    }

    public final String e()
    {
        return a.m();
    }

    public String toString()
    {
        return (new StringBuilder()).append("DurationField[").append(e()).append(']').toString();
    }
}
