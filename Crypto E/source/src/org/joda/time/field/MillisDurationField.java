// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import java.io.Serializable;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;

// Referenced classes of package org.joda.time.field:
//            FieldUtils

public final class MillisDurationField extends DurationField
    implements Serializable
{

    public static final DurationField a = new MillisDurationField();

    private MillisDurationField()
    {
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

    public long a(long l, int i)
    {
        return FieldUtils.a(l, i);
    }

    public long a(long l, long l1)
    {
        return FieldUtils.a(l, l1);
    }

    public DurationFieldType a()
    {
        return DurationFieldType.a();
    }

    public int b(long l, long l1)
    {
        return FieldUtils.a(FieldUtils.b(l, l1));
    }

    public boolean b()
    {
        return true;
    }

    public long c(long l, long l1)
    {
        return FieldUtils.b(l, l1);
    }

    public final boolean c()
    {
        return true;
    }

    public int compareTo(Object obj)
    {
        return a((DurationField)obj);
    }

    public final long d()
    {
        return 1L;
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof MillisDurationField;
        boolean flag1 = false;
        if (flag)
        {
            int i = d() != ((MillisDurationField)obj).d();
            flag1 = false;
            if (i == 0)
            {
                flag1 = true;
            }
        }
        return flag1;
    }

    public int hashCode()
    {
        return (int)d();
    }

    public String toString()
    {
        return "DurationField[millis]";
    }

}
