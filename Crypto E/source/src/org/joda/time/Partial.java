// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.joda.time.base.AbstractPartial;
import org.joda.time.field.AbstractPartialFieldProperty;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

// Referenced classes of package org.joda.time:
//            ReadablePartial, Chronology, DateTimeUtils, DateTimeFieldType, 
//            DateTimeField

public final class Partial extends AbstractPartial
    implements Serializable, ReadablePartial
{
    public static class Property extends AbstractPartialFieldProperty
        implements Serializable
    {

        private final Partial a;
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


    private final Chronology a;
    private final DateTimeFieldType b[];
    private final int c[];
    private transient DateTimeFormatter d[];

    public Partial()
    {
        this((Chronology)null);
    }

    public Partial(Chronology chronology)
    {
        a = DateTimeUtils.a(chronology).b();
        b = new DateTimeFieldType[0];
        c = new int[0];
    }

    public int a()
    {
        return b.length;
    }

    public int a(int i)
    {
        return c[i];
    }

    protected DateTimeField a(int i, Chronology chronology)
    {
        return b[i].a(chronology);
    }

    public DateTimeFieldType b(int i)
    {
        return b[i];
    }

    public DateTimeFormatter b()
    {
        DateTimeFormatter adatetimeformatter[] = d;
        if (adatetimeformatter == null)
        {
            if (a() == 0)
            {
                return null;
            }
            adatetimeformatter = new DateTimeFormatter[2];
            try
            {
                ArrayList arraylist = new ArrayList(Arrays.asList(b));
                adatetimeformatter[0] = ISODateTimeFormat.a(arraylist, true, false);
                if (arraylist.size() == 0)
                {
                    adatetimeformatter[1] = adatetimeformatter[0];
                }
            }
            catch (IllegalArgumentException illegalargumentexception) { }
            d = adatetimeformatter;
        }
        return adatetimeformatter[0];
    }

    public Chronology c()
    {
        return a;
    }

    public String d()
    {
        int i = a();
        StringBuilder stringbuilder = new StringBuilder(i * 20);
        stringbuilder.append('[');
        for (int j = 0; j < i; j++)
        {
            if (j > 0)
            {
                stringbuilder.append(',').append(' ');
            }
            stringbuilder.append(b[j].x());
            stringbuilder.append('=');
            stringbuilder.append(c[j]);
        }

        stringbuilder.append(']');
        return stringbuilder.toString();
    }

    public String toString()
    {
        DateTimeFormatter adatetimeformatter[] = d;
        if (adatetimeformatter == null)
        {
            b();
            adatetimeformatter = d;
            if (adatetimeformatter == null)
            {
                return d();
            }
        }
        DateTimeFormatter datetimeformatter = adatetimeformatter[1];
        if (datetimeformatter == null)
        {
            return d();
        } else
        {
            return datetimeformatter.a(this);
        }
    }
}
