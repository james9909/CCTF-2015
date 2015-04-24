// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.Chronology;
import org.joda.time.DateTimeField;

// Referenced classes of package org.joda.time.field:
//            DelegatedDateTimeField, FieldUtils

public final class SkipUndoDateTimeField extends DelegatedDateTimeField
{

    private final Chronology a;
    private final int b;
    private transient int c;

    public SkipUndoDateTimeField(Chronology chronology, DateTimeField datetimefield)
    {
        this(chronology, datetimefield, 0);
    }

    public SkipUndoDateTimeField(Chronology chronology, DateTimeField datetimefield, int i)
    {
        super(datetimefield);
        a = chronology;
        int j = super.h();
        if (j < i)
        {
            c = j + 1;
        } else
        if (j == i + 1)
        {
            c = i;
        } else
        {
            c = j;
        }
        b = i;
    }

    public int a(long l)
    {
        int i = super.a(l);
        if (i < b)
        {
            i++;
        }
        return i;
    }

    public long b(long l, int i)
    {
        FieldUtils.a(this, i, c, i());
        if (i <= b)
        {
            i--;
        }
        return super.b(l, i);
    }

    public int h()
    {
        return c;
    }
}
