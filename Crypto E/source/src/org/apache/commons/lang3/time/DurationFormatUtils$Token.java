// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import org.apache.commons.lang3.StringUtils;

// Referenced classes of package org.apache.commons.lang3.time:
//            DurationFormatUtils

static class count
{

    private int count;
    private final Object value;

    static boolean containsTokenWithValue(count acount[], Object obj)
    {
        int i = acount.length;
        int j = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j < i)
                {
                    if (acount[j].getValue() != obj)
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j++;
        } while (true);
    }

    public boolean equals(Object obj)
    {
        getValue getvalue;
        if (obj instanceof getValue)
        {
            getvalue = (getValue)obj;
            break MISSING_BLOCK_LABEL_12;
        }
_L1:
        return false;
        if (value.getClass() == getvalue.value.getClass() && count == getvalue.count)
        {
            if (value instanceof StringBuilder)
            {
                return value.toString().equals(getvalue.value.toString());
            }
            if (value instanceof Number)
            {
                return value.equals(getvalue.value);
            }
            if (value == getvalue.value)
            {
                return true;
            }
        }
          goto _L1
    }

    int getCount()
    {
        return count;
    }

    Object getValue()
    {
        return value;
    }

    public int hashCode()
    {
        return value.hashCode();
    }

    void increment()
    {
        count = 1 + count;
    }

    public String toString()
    {
        return StringUtils.repeat(value.toString(), count);
    }

    (Object obj)
    {
        value = obj;
        count = 1;
    }

    count(Object obj, int i)
    {
        value = obj;
        count = i;
    }
}
