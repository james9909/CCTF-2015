// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.joda.time.base.BasePartial;
import org.joda.time.field.AbstractPartialFieldProperty;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.DateTimeFormatterBuilder;
import org.joda.time.format.ISODateTimeFormat;

// Referenced classes of package org.joda.time:
//            ReadablePartial, DateTimeFieldType, Chronology, DateTimeField

public final class MonthDay extends BasePartial
    implements Serializable, ReadablePartial
{
    public static class Property extends AbstractPartialFieldProperty
        implements Serializable
    {

        private final MonthDay a;
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
    private static final DateTimeFormatter b = (new DateTimeFormatterBuilder()).b(ISODateTimeFormat.a().b()).b(DateTimeFormat.a("--MM-dd").b()).a();

    public MonthDay()
    {
    }

    public int a()
    {
        return 2;
    }

    protected DateTimeField a(int i, Chronology chronology)
    {
        switch (i)
        {
        default:
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Invalid index: ").append(i).toString());

        case 0: // '\0'
            return chronology.C();

        case 1: // '\001'
            return chronology.u();
        }
    }

    public DateTimeFieldType b(int i)
    {
        return a[i];
    }

    public String toString()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(DateTimeFieldType.r());
        arraylist.add(DateTimeFieldType.m());
        return ISODateTimeFormat.a(arraylist, true, true).a(this);
    }

    static 
    {
        DateTimeFieldType adatetimefieldtype[] = new DateTimeFieldType[2];
        adatetimefieldtype[0] = DateTimeFieldType.r();
        adatetimefieldtype[1] = DateTimeFieldType.m();
        a = adatetimefieldtype;
    }
}
