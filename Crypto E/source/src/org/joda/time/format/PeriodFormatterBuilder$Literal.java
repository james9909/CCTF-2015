// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Locale;
import org.joda.time.ReadablePeriod;

// Referenced classes of package org.joda.time.format:
//            PeriodParser, PeriodPrinter, PeriodFormatterBuilder

static class b
    implements PeriodParser, PeriodPrinter
{

    static final b a = new <init>("");
    private final String b;

    public int a(ReadablePeriod readableperiod, int i, Locale locale)
    {
        return 0;
    }

    public int a(ReadablePeriod readableperiod, Locale locale)
    {
        return b.length();
    }

    public void a(StringBuffer stringbuffer, ReadablePeriod readableperiod, Locale locale)
    {
        stringbuffer.append(b);
    }


    _cls9(String s)
    {
        b = s;
    }
}
