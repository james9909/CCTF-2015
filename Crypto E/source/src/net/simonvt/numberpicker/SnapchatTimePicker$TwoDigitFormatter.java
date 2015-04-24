// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;

import java.text.DecimalFormatSymbols;
import java.util.Formatter;
import java.util.Locale;

// Referenced classes of package net.simonvt.numberpicker:
//            SnapchatTimePicker

static class a
    implements a
{

    final StringBuilder a = new StringBuilder();
    char b;
    Formatter c;
    final Object d[] = new Object[1];

    private void a(Locale locale)
    {
        c = c(locale);
        b = b(locale);
    }

    private static char b(Locale locale)
    {
        return (new DecimalFormatSymbols(locale)).getZeroDigit();
    }

    private Formatter c(Locale locale)
    {
        return new Formatter(a, locale);
    }

    public String a(int i)
    {
        Locale locale = Locale.getDefault();
        if (b != b(locale))
        {
            a(locale);
        }
        d[0] = Integer.valueOf(i);
        a.delete(0, a.length());
        c.format("%02d", d);
        return c.toString();
    }

    ()
    {
        a(Locale.getDefault());
    }
}
