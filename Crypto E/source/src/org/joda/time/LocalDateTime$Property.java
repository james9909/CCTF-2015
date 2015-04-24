// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import org.joda.time.field.AbstractReadableInstantFieldProperty;

// Referenced classes of package org.joda.time:
//            LocalDateTime, DateTimeField, Chronology

public static final class nstantFieldProperty extends AbstractReadableInstantFieldProperty
{

    private transient LocalDateTime a;
    private transient DateTimeField b;

    public DateTimeField a()
    {
        return b;
    }

    protected long b()
    {
        return a.b();
    }

    protected Chronology c()
    {
        return a.c();
    }
}
