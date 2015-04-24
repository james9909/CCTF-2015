// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;


// Referenced classes of package org.joda.time.format:
//            PeriodFormatterBuilder, PeriodFormatter

public class ISOPeriodFormat
{

    private static PeriodFormatter a;

    protected ISOPeriodFormat()
    {
    }

    public static PeriodFormatter a()
    {
        if (a == null)
        {
            a = (new PeriodFormatterBuilder()).a("P").c().b("Y").d().b("M").e().b("W").f().b("D").c("T").g().b("H").h().b("M").i().b("S").a();
        }
        return a;
    }
}
