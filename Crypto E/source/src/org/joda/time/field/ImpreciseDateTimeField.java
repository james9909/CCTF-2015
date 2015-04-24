// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;

// Referenced classes of package org.joda.time.field:
//            BaseDateTimeField, FieldUtils, BaseDurationField

public abstract class ImpreciseDateTimeField extends BaseDateTimeField
{
    final class LinkedDurationField extends BaseDurationField
    {

        final ImpreciseDateTimeField a;

        public long a(long l, int i)
        {
            return a.a(l, i);
        }

        public long a(long l, long l1)
        {
            return a.a(l, l1);
        }

        public int b(long l, long l1)
        {
            return a.b(l, l1);
        }

        public long c(long l, long l1)
        {
            return a.c(l, l1);
        }

        public boolean c()
        {
            return false;
        }

        public long d()
        {
            return a.b;
        }

        LinkedDurationField(DurationFieldType durationfieldtype)
        {
            a = ImpreciseDateTimeField.this;
            super(durationfieldtype);
        }
    }


    private final DurationField a;
    final long b;

    public ImpreciseDateTimeField(DateTimeFieldType datetimefieldtype, long l)
    {
        super(datetimefieldtype);
        b = l;
        a = new LinkedDurationField(datetimefieldtype.y());
    }

    public abstract long a(long l, int i);

    public abstract long a(long l, long l1);

    public int b(long l, long l1)
    {
        return FieldUtils.a(c(l, l1));
    }

    public long c(long l, long l1)
    {
        long l2;
        if (l < l1)
        {
            l2 = -c(l1, l);
        } else
        {
            l2 = (l - l1) / b;
            if (a(l1, l2) < l)
            {
                do
                {
                    l2++;
                } while (a(l1, l2) <= l);
                return l2 - 1L;
            }
            if (a(l1, l2) > l)
            {
                do
                {
                    l2--;
                } while (a(l1, l2) > l);
                return l2;
            }
        }
        return l2;
    }

    public final DurationField e()
    {
        return a;
    }
}
