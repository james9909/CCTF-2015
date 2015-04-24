// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.Locale;

// Referenced classes of package org.joda.time.chrono:
//            BasicMonthOfYearDateTimeField, GJLocaleSymbols, BasicChronology

final class GJMonthOfYearDateTimeField extends BasicMonthOfYearDateTimeField
{

    GJMonthOfYearDateTimeField(BasicChronology basicchronology)
    {
        super(basicchronology, 2);
    }

    protected int a(String s, Locale locale)
    {
        return GJLocaleSymbols.a(locale).b(s);
    }

    public int a(Locale locale)
    {
        return GJLocaleSymbols.a(locale).b();
    }

    public String a(int i, Locale locale)
    {
        return GJLocaleSymbols.a(locale).b(i);
    }

    public String b(int i, Locale locale)
    {
        return GJLocaleSymbols.a(locale).c(i);
    }
}
