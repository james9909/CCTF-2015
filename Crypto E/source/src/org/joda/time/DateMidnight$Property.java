// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import org.joda.time.field.AbstractReadableInstantFieldProperty;

// Referenced classes of package org.joda.time:
//            DateMidnight, DateTimeField, Chronology

public static final class InstantFieldProperty extends AbstractReadableInstantFieldProperty
{

    private DateMidnight a;
    private DateTimeField b;

    public DateTimeField a()
    {
        return b;
    }

    protected long b()
    {
        return a.x_();
    }

    protected Chronology c()
    {
        return a.d();
    }
}
