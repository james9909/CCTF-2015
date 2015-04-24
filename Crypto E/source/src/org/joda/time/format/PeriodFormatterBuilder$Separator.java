// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import java.util.TreeSet;
import org.joda.time.ReadablePeriod;

// Referenced classes of package org.joda.time.format:
//            PeriodParser, PeriodPrinter, PeriodFormatterBuilder

static class e
    implements PeriodParser, PeriodPrinter
{

    private final String a;
    private final String b;
    private final String c[];
    private final boolean d;
    private final boolean e;
    private final PeriodPrinter f;
    private volatile PeriodPrinter g;
    private final PeriodParser h;
    private volatile PeriodParser i;

    static PeriodParser a(e e1)
    {
        return e1.i;
    }

    static PeriodPrinter b(i j)
    {
        return j.g;
    }

    public int a(ReadablePeriod readableperiod, int j, Locale locale)
    {
        int k = f.a(readableperiod, j, locale);
        if (k < j)
        {
            k += g.a(readableperiod, j, locale);
        }
        return k;
    }

    public int a(ReadablePeriod readableperiod, Locale locale)
    {
        PeriodPrinter periodprinter;
        PeriodPrinter periodprinter1;
        int j;
        periodprinter = f;
        periodprinter1 = g;
        j = periodprinter.a(readableperiod, locale) + periodprinter1.a(readableperiod, locale);
        if (!d) goto _L2; else goto _L1
_L1:
        if (periodprinter.a(readableperiod, 1, locale) <= 0) goto _L4; else goto _L3
_L3:
        if (!e) goto _L6; else goto _L5
_L5:
        int k = periodprinter1.a(readableperiod, 2, locale);
        int l;
        if (k > 0)
        {
            String s;
            if (k > 1)
            {
                s = a;
            } else
            {
                s = b;
            }
            l = j + s.length();
        } else
        {
            l = j;
        }
        j = l;
_L4:
        return j;
_L6:
        return j + a.length();
_L2:
        if (e && periodprinter1.a(readableperiod, 1, locale) > 0)
        {
            return j + a.length();
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    a a(PeriodPrinter periodprinter, PeriodParser periodparser)
    {
        g = periodprinter;
        i = periodparser;
        return this;
    }

    public void a(StringBuffer stringbuffer, ReadablePeriod readableperiod, Locale locale)
    {
        PeriodPrinter periodprinter;
        PeriodPrinter periodprinter1;
        periodprinter = f;
        periodprinter1 = g;
        periodprinter.a(stringbuffer, readableperiod, locale);
        if (!d) goto _L2; else goto _L1
_L1:
        if (periodprinter.a(readableperiod, 1, locale) > 0)
        {
            if (e)
            {
                int j = periodprinter1.a(readableperiod, 2, locale);
                if (j > 0)
                {
                    String s;
                    if (j > 1)
                    {
                        s = a;
                    } else
                    {
                        s = b;
                    }
                    stringbuffer.append(s);
                }
            } else
            {
                stringbuffer.append(a);
            }
        }
_L4:
        periodprinter1.a(stringbuffer, readableperiod, locale);
        return;
_L2:
        if (e && periodprinter1.a(readableperiod, 1, locale) > 0)
        {
            stringbuffer.append(a);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    (String s, String s1, String as[], PeriodPrinter periodprinter, PeriodParser periodparser, boolean flag, boolean flag1)
    {
        a = s;
        b = s1;
        if ((s1 == null || s.equals(s1)) && (as == null || as.length == 0))
        {
            c = (new String[] {
                s
            });
        } else
        {
            TreeSet treeset = new TreeSet(String.CASE_INSENSITIVE_ORDER);
            treeset.add(s);
            treeset.add(s1);
            if (as != null)
            {
                for (int j = as.length; --j >= 0;)
                {
                    treeset.add(as[j]);
                }

            }
            ArrayList arraylist = new ArrayList(treeset);
            Collections.reverse(arraylist);
            c = (String[])arraylist.toArray(new String[arraylist.size()]);
        }
        f = periodprinter;
        h = periodparser;
        d = flag;
        e = flag1;
    }
}
