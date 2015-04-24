// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.util.Calendar;

// Referenced classes of package org.apache.commons.lang3.time:
//            FastDatePrinter

static class mRule
    implements mRule
{

    private final ateLength mRule;

    public void appendTo(StringBuffer stringbuffer, int i)
    {
        mRule.dTo(stringbuffer, i);
    }

    public void appendTo(StringBuffer stringbuffer, Calendar calendar)
    {
        int i = calendar.get(10);
        if (i == 0)
        {
            i = 1 + calendar.getLeastMaximum(10);
        }
        mRule.dTo(stringbuffer, i);
    }

    public int estimateLength()
    {
        return mRule.ateLength();
    }

    ( )
    {
        mRule = ;
    }
}
