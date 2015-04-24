// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.text.DateFormatSymbols;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.SortedMap;
import java.util.TimeZone;
import java.util.TreeMap;

// Referenced classes of package org.apache.commons.lang3.time:
//            FastDateParser

static class validTimeZoneChars extends validTimeZoneChars
{

    private static final int ID = 0;
    private static final int LONG_DST = 3;
    private static final int LONG_STD = 1;
    private static final int SHORT_DST = 4;
    private static final int SHORT_STD = 2;
    private final SortedMap tzNames;
    private final String validTimeZoneChars;

    boolean addRegex(FastDateParser fastdateparser, StringBuilder stringbuilder)
    {
        stringbuilder.append(validTimeZoneChars);
        return true;
    }

    void setCalendar(FastDateParser fastdateparser, Calendar calendar, String s)
    {
        if (s.charAt(0) != '+' && s.charAt(0) != '-') goto _L2; else goto _L1
_L1:
        TimeZone timezone = TimeZone.getTimeZone((new StringBuilder()).append("GMT").append(s).toString());
_L4:
        calendar.setTimeZone(timezone);
        return;
_L2:
        if (!s.startsWith("GMT"))
        {
            break; /* Loop/switch isn't completed */
        }
        timezone = TimeZone.getTimeZone(s);
        if (true) goto _L4; else goto _L3
_L3:
        timezone = (TimeZone)tzNames.get(s);
        if (timezone == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" is not a supported timezone name").toString());
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    (Locale locale)
    {
        super(null);
        tzNames = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        String as[][] = DateFormatSymbols.getInstance(locale).getZoneStrings();
        int i = as.length;
        int j = 0;
        while (j < i) 
        {
            String as1[] = as[j];
            if (!as1[0].startsWith("GMT"))
            {
                TimeZone timezone = TimeZone.getTimeZone(as1[0]);
                if (!tzNames.containsKey(as1[1]))
                {
                    tzNames.put(as1[1], timezone);
                }
                if (!tzNames.containsKey(as1[2]))
                {
                    tzNames.put(as1[2], timezone);
                }
                if (timezone.useDaylightTime())
                {
                    if (!tzNames.containsKey(as1[3]))
                    {
                        tzNames.put(as1[3], timezone);
                    }
                    if (!tzNames.containsKey(as1[4]))
                    {
                        tzNames.put(as1[4], timezone);
                    }
                }
            }
            j++;
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("(GMT[+\\-]\\d{0,1}\\d{2}|[+\\-]\\d{2}:?\\d{2}|");
        for (Iterator iterator = tzNames.keySet().iterator(); iterator.hasNext(); FastDateParser.access$100(stringbuilder, (String)iterator.next(), false).append('|')) { }
        stringbuilder.setCharAt(-1 + stringbuilder.length(), ')');
        validTimeZoneChars = stringbuilder.toString();
    }
}
