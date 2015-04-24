// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import org.joda.time.base.BasePartial;
import org.joda.time.field.AbstractPartialFieldProperty;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

// Referenced classes of package org.joda.time:
//            ReadablePartial, DateTimeFieldType, Chronology, DateTimeField

public final class TimeOfDay extends BasePartial
    implements Serializable, ReadablePartial
{
    public static class Property extends AbstractPartialFieldProperty
        implements Serializable
    {

        private final TimeOfDay a;
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


    public static final TimeOfDay a = new TimeOfDay(0, 0, 0, 0);
    private static final DateTimeFieldType b[];

    public TimeOfDay()
    {
    }

    public TimeOfDay(int i, int j, int k, int l)
    {
        this(i, j, k, l, null);
    }

    public TimeOfDay(int i, int j, int k, int l, Chronology chronology)
    {
        super(new int[] {
            i, j, k, l
        }, chronology);
    }

    public int a()
    {
        return 4;
    }

    protected DateTimeField a(int i, Chronology chronology)
    {
        switch (i)
        {
        default:
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Invalid index: ").append(i).toString());

        case 0: // '\0'
            return chronology.m();

        case 1: // '\001'
            return chronology.j();

        case 2: // '\002'
            return chronology.g();

        case 3: // '\003'
            return chronology.d();
        }
    }

    public DateTimeFieldType b(int i)
    {
        return b[i];
    }

    public String toString()
    {
        return ISODateTimeFormat.e().a(this);
    }

    static 
    {
        DateTimeFieldType adatetimefieldtype[] = new DateTimeFieldType[4];
        adatetimefieldtype[0] = DateTimeFieldType.g();
        adatetimefieldtype[1] = DateTimeFieldType.e();
        adatetimefieldtype[2] = DateTimeFieldType.c();
        adatetimefieldtype[3] = DateTimeFieldType.a();
        b = adatetimefieldtype;
    }
}
