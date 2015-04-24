// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import java.io.Serializable;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;

public class DelegatedDurationField extends DurationField
    implements Serializable
{

    private final DurationField a;
    private final DurationFieldType b;

    public int a(DurationField durationfield)
    {
        return a.compareTo(durationfield);
    }

    public long a(long l, int i)
    {
        return a.a(l, i);
    }

    public long a(long l, long l1)
    {
        return a.a(l, l1);
    }

    public DurationFieldType a()
    {
        return b;
    }

    public int b(long l, long l1)
    {
        return a.b(l, l1);
    }

    public boolean b()
    {
        return a.b();
    }

    public long c(long l, long l1)
    {
        return a.c(l, l1);
    }

    public boolean c()
    {
        return a.c();
    }

    public int compareTo(Object obj)
    {
        return a((DurationField)obj);
    }

    public long d()
    {
        return a.d();
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof DelegatedDurationField)
        {
            return a.equals(((DelegatedDurationField)obj).a);
        } else
        {
            return false;
        }
    }

    public int hashCode()
    {
        return a.hashCode() ^ b.hashCode();
    }

    public String toString()
    {
        if (b == null)
        {
            return a.toString();
        } else
        {
            return (new StringBuilder()).append("DurationField[").append(b).append(']').toString();
        }
    }
}
