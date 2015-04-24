// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

// Referenced classes of package org.apache.commons.lang3.time:
//            FastDateParser

static class keyValues extends keyValues
{

    private final int field;
    private final Map keyValues;

    boolean addRegex(FastDateParser fastdateparser, StringBuilder stringbuilder)
    {
        stringbuilder.append('(');
        for (Iterator iterator = keyValues.keySet().iterator(); iterator.hasNext(); FastDateParser.access$100(stringbuilder, (String)iterator.next(), false).append('|')) { }
        stringbuilder.setCharAt(-1 + stringbuilder.length(), ')');
        return true;
    }

    void setCalendar(FastDateParser fastdateparser, Calendar calendar, String s)
    {
        Integer integer = (Integer)keyValues.get(s);
        if (integer == null)
        {
            StringBuilder stringbuilder = new StringBuilder(s);
            stringbuilder.append(" not in (");
            for (Iterator iterator = keyValues.keySet().iterator(); iterator.hasNext(); stringbuilder.append((String)iterator.next()).append(' ')) { }
            stringbuilder.setCharAt(-1 + stringbuilder.length(), ')');
            throw new IllegalArgumentException(stringbuilder.toString());
        } else
        {
            calendar.set(field, integer.intValue());
            return;
        }
    }

    (int i, Calendar calendar, Locale locale)
    {
        super(null);
        field = i;
        keyValues = FastDateParser.access$200(i, calendar, locale);
    }
}
