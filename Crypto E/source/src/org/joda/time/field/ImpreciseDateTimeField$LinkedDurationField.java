// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DurationFieldType;

// Referenced classes of package org.joda.time.field:
//            BaseDurationField, ImpreciseDateTimeField

final class a extends BaseDurationField
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

    (ImpreciseDateTimeField imprecisedatetimefield, DurationFieldType durationfieldtype)
    {
        a = imprecisedatetimefield;
        super(durationfieldtype);
    }
}
