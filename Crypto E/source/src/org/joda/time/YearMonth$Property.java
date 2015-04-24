// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import org.joda.time.field.AbstractPartialFieldProperty;

// Referenced classes of package org.joda.time:
//            YearMonth, DateTimeField, ReadablePartial

public static class alFieldProperty extends AbstractPartialFieldProperty
    implements Serializable
{

    private final YearMonth a;
    private final int b;

    public DateTimeField a()
    {
        return a.c(b);
    }

    protected ReadablePartial b()
    {
        return a;
    }

    public int c()
    {
        return a.a(b);
    }
}
