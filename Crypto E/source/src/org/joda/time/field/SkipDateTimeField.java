// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.IllegalFieldValueException;

// Referenced classes of package org.joda.time.field:
//            DelegatedDateTimeField, FieldUtils

public final class SkipDateTimeField extends DelegatedDateTimeField
{

    private final Chronology a;
    private final int b;
    private transient int c;

    public SkipDateTimeField(Chronology chronology, DateTimeField datetimefield)
    {
        this(chronology, datetimefield, 0);
    }

    public SkipDateTimeField(Chronology chronology, DateTimeField datetimefield, int i)
    {
        super(datetimefield);
        a = chronology;
        int j = super.h();
        if (j < i)
        {
            c = j - 1;
        } else
        if (j == i)
        {
            c = i + 1;
        } else
        {
            c = j;
        }
        b = i;
    }

    public int a(long l)
    {
        int i = super.a(l);
        if (i <= b)
        {
            i--;
        }
        return i;
    }

    public long b(long l, int i)
    {
        FieldUtils.a(this, i, c, i());
        if (i <= b)
        {
            if (i == b)
            {
                throw new IllegalFieldValueException(DateTimeFieldType.s(), Integer.valueOf(i), null, null);
            }
            i++;
        }
        return super.b(l, i);
    }

    public int h()
    {
        return c;
    }
}
