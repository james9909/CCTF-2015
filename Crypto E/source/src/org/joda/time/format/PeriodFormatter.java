// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Locale;
import org.joda.time.PeriodType;
import org.joda.time.ReadablePeriod;

// Referenced classes of package org.joda.time.format:
//            PeriodPrinter, PeriodParser

public class PeriodFormatter
{

    private final PeriodPrinter a;
    private final PeriodParser b;
    private final Locale c;
    private final PeriodType d;

    public PeriodFormatter(PeriodPrinter periodprinter, PeriodParser periodparser)
    {
        a = periodprinter;
        b = periodparser;
        c = null;
        d = null;
    }

    private PeriodFormatter(PeriodPrinter periodprinter, PeriodParser periodparser, Locale locale, PeriodType periodtype)
    {
        a = periodprinter;
        b = periodparser;
        c = locale;
        d = periodtype;
    }

    private void b(ReadablePeriod readableperiod)
    {
        if (readableperiod == null)
        {
            throw new IllegalArgumentException("Period must not be null");
        } else
        {
            return;
        }
    }

    private void c()
    {
        if (a == null)
        {
            throw new UnsupportedOperationException("Printing not supported");
        } else
        {
            return;
        }
    }

    public String a(ReadablePeriod readableperiod)
    {
        c();
        b(readableperiod);
        PeriodPrinter periodprinter = a();
        StringBuffer stringbuffer = new StringBuffer(periodprinter.a(readableperiod, c));
        periodprinter.a(stringbuffer, readableperiod, c);
        return stringbuffer.toString();
    }

    public PeriodFormatter a(PeriodType periodtype)
    {
        if (periodtype == d)
        {
            return this;
        } else
        {
            return new PeriodFormatter(a, b, c, periodtype);
        }
    }

    public PeriodPrinter a()
    {
        return a;
    }

    public PeriodParser b()
    {
        return b;
    }
}
