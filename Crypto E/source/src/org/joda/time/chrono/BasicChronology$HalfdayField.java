// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.util.Locale;
import org.joda.time.DateTimeFieldType;
import org.joda.time.field.PreciseDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            BasicChronology, GJLocaleSymbols

static class  extends PreciseDateTimeField
{

    public int a(Locale locale)
    {
        return GJLocaleSymbols.a(locale).d();
    }

    public long a(long l, String s, Locale locale)
    {
        return b(l, GJLocaleSymbols.a(locale).d(s));
    }

    public String a(int i, Locale locale)
    {
        return GJLocaleSymbols.a(locale).f(i);
    }

    ()
    {
        super(DateTimeFieldType.k(), BasicChronology.X(), BasicChronology.Y());
    }
}
