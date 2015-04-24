// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.i18n;

import java.util.Locale;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

// Referenced classes of package com.snapchat.android.i18n:
//            LocalePatterns

public class LocaleDateTimeFormat
{

    public LocaleDateTimeFormat()
    {
    }

    private static String a(int i)
    {
        if (i >= 20)
        {
            i %= 10;
        }
        switch (i)
        {
        default:
            return "th";

        case 1: // '\001'
            return "st";

        case 2: // '\002'
            return "nd";

        case 3: // '\003'
            return "rd";
        }
    }

    public static String a(DateTime datetime, Locale locale)
    {
        return a(datetime, locale, false);
    }

    private static String a(DateTime datetime, Locale locale, boolean flag)
    {
        if (locale == null)
        {
            locale = Locale.US;
        }
        if (locale.equals(Locale.US))
        {
            return a(datetime, flag);
        }
        LocalePatterns localepatterns;
        String s;
        String s1;
        try
        {
            localepatterns = LocalePatterns.valueOf(locale.toString());
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return a(datetime, flag);
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        s = localepatterns.b();
_L3:
        return DateTimeFormat.a(s).a(datetime);
_L2:
        s1 = localepatterns.a();
        s = s1;
          goto _L3
    }

    private static String a(DateTime datetime, boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(datetime.b().a(Locale.US));
        stringbuilder.append(" ");
        stringbuilder.append(datetime.h());
        stringbuilder.append(a(datetime.h()));
        if (flag)
        {
            stringbuilder.append(", ");
            stringbuilder.append(datetime.f());
        }
        return stringbuilder.toString();
    }

    public static String b(DateTime datetime, Locale locale)
    {
        return a(datetime, locale, true);
    }
}
