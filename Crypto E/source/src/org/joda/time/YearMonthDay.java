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

public final class YearMonthDay extends BasePartial
    implements Serializable, ReadablePartial
{
    public static class Property extends AbstractPartialFieldProperty
        implements Serializable
    {

        private final YearMonthDay a;
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


    private static final DateTimeFieldType a[];

    public YearMonthDay()
    {
    }

    public int a()
    {
        return 3;
    }

    protected DateTimeField a(int i, Chronology chronology)
    {
        switch (i)
        {
        default:
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Invalid index: ").append(i).toString());

        case 0: // '\0'
            return chronology.E();

        case 1: // '\001'
            return chronology.C();

        case 2: // '\002'
            return chronology.u();
        }
    }

    public DateTimeFieldType b(int i)
    {
        return a[i];
    }

    public String toString()
    {
        return ISODateTimeFormat.i().a(this);
    }

    static 
    {
        DateTimeFieldType adatetimefieldtype[] = new DateTimeFieldType[3];
        adatetimefieldtype[0] = DateTimeFieldType.s();
        adatetimefieldtype[1] = DateTimeFieldType.r();
        adatetimefieldtype[2] = DateTimeFieldType.m();
        a = adatetimefieldtype;
    }
}
