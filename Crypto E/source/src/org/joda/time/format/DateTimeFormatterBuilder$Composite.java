// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.format:
//            DateTimeParser, DateTimePrinter, DateTimeFormatterBuilder, DateTimeParserBucket

static class d
    implements DateTimeParser, DateTimePrinter
{

    private final DateTimePrinter a[];
    private final DateTimeParser b[];
    private final int c;
    private final int d;

    private void a(List list, List list1, List list2)
    {
        int i = list.size();
        int j = 0;
        while (j < i) 
        {
            Object obj = list.get(j);
            Object obj1;
            if (obj instanceof d)
            {
                a(list1, ((Object []) (((a)obj).a)));
            } else
            {
                list1.add(obj);
            }
            obj1 = list.get(j + 1);
            if (obj1 instanceof a)
            {
                a(list2, ((Object []) (((a)obj1).b)));
            } else
            {
                list2.add(obj1);
            }
            j += 2;
        }
    }

    private void a(List list, Object aobj[])
    {
        if (aobj != null)
        {
            for (int i = 0; i < aobj.length; i++)
            {
                list.add(aobj[i]);
            }

        }
    }

    public int a()
    {
        return c;
    }

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        DateTimeParser adatetimeparser[] = b;
        if (adatetimeparser == null)
        {
            throw new UnsupportedOperationException();
        }
        int j = adatetimeparser.length;
        for (int k = 0; k < j && i >= 0; k++)
        {
            i = adatetimeparser[k].a(datetimeparserbucket, s, i);
        }

        return i;
    }

    public void a(StringBuffer stringbuffer, long l, Chronology chronology, int i, DateTimeZone datetimezone, Locale locale)
    {
        DateTimePrinter adatetimeprinter[] = a;
        if (adatetimeprinter == null)
        {
            throw new UnsupportedOperationException();
        }
        Locale locale1;
        int j;
        if (locale == null)
        {
            locale1 = Locale.getDefault();
        } else
        {
            locale1 = locale;
        }
        j = adatetimeprinter.length;
        for (int k = 0; k < j; k++)
        {
            adatetimeprinter[k].a(stringbuffer, l, chronology, i, datetimezone, locale1);
        }

    }

    public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
    {
        DateTimePrinter adatetimeprinter[] = a;
        if (adatetimeprinter == null)
        {
            throw new UnsupportedOperationException();
        }
        if (locale == null)
        {
            locale = Locale.getDefault();
        }
        int i = adatetimeprinter.length;
        for (int j = 0; j < i; j++)
        {
            adatetimeprinter[j].a(stringbuffer, readablepartial, locale);
        }

    }

    public int b()
    {
        return d;
    }

    boolean c()
    {
        return a != null;
    }

    boolean d()
    {
        return b != null;
    }

    (List list)
    {
        int i = 0;
        super();
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        a(list, arraylist, arraylist1);
        if (arraylist.contains(null) || arraylist.isEmpty())
        {
            a = null;
            c = 0;
        } else
        {
            int l = arraylist.size();
            a = new DateTimePrinter[l];
            int i1 = 0;
            int j1 = 0;
            for (; i1 < l; i1++)
            {
                DateTimePrinter datetimeprinter = (DateTimePrinter)arraylist.get(i1);
                j1 += datetimeprinter.a();
                a[i1] = datetimeprinter;
            }

            c = j1;
        }
        if (arraylist1.contains(null) || arraylist1.isEmpty())
        {
            b = null;
            d = 0;
            return;
        }
        int j = arraylist1.size();
        b = new DateTimeParser[j];
        int k = 0;
        for (; i < j; i++)
        {
            DateTimeParser datetimeparser = (DateTimeParser)arraylist1.get(i);
            k += datetimeparser.b();
            b[i] = datetimeparser;
        }

        d = k;
    }
}
