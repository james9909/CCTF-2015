// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import org.joda.time.DateTimeFieldType;

// Referenced classes of package org.joda.time.format:
//            DateTimeFormatterBuilder, DateTimeParserBucket

static class  extends 
{

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        int j = super.a(datetimeparserbucket, s, i);
        int k;
        if (j >= 0)
        {
            if (j != (k = i + b))
            {
                if (this.c)
                {
                    char c = s.charAt(i);
                    if (c == '-' || c == '+')
                    {
                        k++;
                    }
                }
                if (j > k)
                {
                    return -1 ^ k + 1;
                }
                if (j < k)
                {
                    return ~j;
                }
            }
        }
        return j;
    }

    protected (DateTimeFieldType datetimefieldtype, int i, boolean flag)
    {
        super(datetimefieldtype, i, flag, i);
    }
}
