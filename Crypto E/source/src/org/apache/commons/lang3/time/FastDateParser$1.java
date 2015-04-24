// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.util.Calendar;

// Referenced classes of package org.apache.commons.lang3.time:
//            FastDateParser

static final class mberStrategy extends mberStrategy
{

    void setCalendar(FastDateParser fastdateparser, Calendar calendar, String s)
    {
        int i = Integer.parseInt(s);
        if (i < 100)
        {
            i = FastDateParser.access$300(fastdateparser, i);
        }
        calendar.set(1, i);
    }

    mberStrategy(int i)
    {
        super(i);
    }
}
