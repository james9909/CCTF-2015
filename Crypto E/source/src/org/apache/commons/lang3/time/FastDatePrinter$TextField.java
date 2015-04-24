// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.util.Calendar;

// Referenced classes of package org.apache.commons.lang3.time:
//            FastDatePrinter

static class mValues
    implements mValues
{

    private final int mField;
    private final String mValues[];

    public void appendTo(StringBuffer stringbuffer, Calendar calendar)
    {
        stringbuffer.append(mValues[calendar.get(mField)]);
    }

    public int estimateLength()
    {
        int i = 0;
        int j = mValues.length;
        do
        {
            int k = j - 1;
            if (k >= 0)
            {
                int l = mValues[k].length();
                if (l <= i)
                {
                    l = i;
                }
                i = l;
                j = k;
            } else
            {
                return i;
            }
        } while (true);
    }

    (int i, String as[])
    {
        mField = i;
        mValues = as;
    }
}
