// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.joda.time.ReadablePeriod;

// Referenced classes of package org.joda.time.format:
//            PeriodParser, PeriodPrinter, PeriodFormatterBuilder

static class b
    implements PeriodParser, PeriodPrinter
{

    private final PeriodPrinter a[];
    private final PeriodParser b[];

    private void a(List list, List list1, List list2)
    {
        int i = list.size();
        int j = 0;
        while (j < i) 
        {
            Object obj = list.get(j);
            Object obj1;
            if (obj instanceof PeriodPrinter)
            {
                if (obj instanceof b)
                {
                    a(list1, ((Object []) (((a)obj).a)));
                } else
                {
                    list1.add(obj);
                }
            }
            obj1 = list.get(j + 1);
            if (obj1 instanceof PeriodParser)
            {
                if (obj1 instanceof a)
                {
                    a(list2, ((Object []) (((a)obj1).b)));
                } else
                {
                    list2.add(obj1);
                }
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

    public int a(ReadablePeriod readableperiod, int i, Locale locale)
    {
        int j = 0;
        PeriodPrinter aperiodprinter[] = a;
        for (int k = aperiodprinter.length; j < i && --k >= 0; j += aperiodprinter[k].a(readableperiod, 0x7fffffff, locale)) { }
        return j;
    }

    public int a(ReadablePeriod readableperiod, Locale locale)
    {
        int i = 0;
        PeriodPrinter aperiodprinter[] = a;
        for (int j = aperiodprinter.length; --j >= 0;)
        {
            i += aperiodprinter[j].a(readableperiod, locale);
        }

        return i;
    }

    public void a(StringBuffer stringbuffer, ReadablePeriod readableperiod, Locale locale)
    {
        PeriodPrinter aperiodprinter[] = a;
        int i = aperiodprinter.length;
        for (int j = 0; j < i; j++)
        {
            aperiodprinter[j].a(stringbuffer, readableperiod, locale);
        }

    }

    (List list)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        a(list, arraylist, arraylist1);
        if (arraylist.size() <= 0)
        {
            a = null;
        } else
        {
            a = (PeriodPrinter[])arraylist.toArray(new PeriodPrinter[arraylist.size()]);
        }
        if (arraylist1.size() <= 0)
        {
            b = null;
            return;
        } else
        {
            b = (PeriodParser[])arraylist1.toArray(new PeriodParser[arraylist1.size()]);
            return;
        }
    }
}
