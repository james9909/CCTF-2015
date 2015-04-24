// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;


// Referenced classes of package org.joda.time.format:
//            DateTimeParser, DateTimeParserBucket, DateTimeFormatterBuilder

static class b
    implements DateTimeParser
{

    private final DateTimeParser a[];
    private final int b;

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        DateTimeParser adatetimeparser[];
        int j;
        Object obj;
        Object obj1;
        int k;
        int l;
        int i1;
        adatetimeparser = a;
        j = adatetimeparser.length;
        obj = datetimeparserbucket.f();
        obj1 = null;
        k = 0;
        l = i;
        i1 = i;
_L3:
        DateTimeParser datetimeparser;
        if (k >= j)
        {
            break MISSING_BLOCK_LABEL_227;
        }
        datetimeparser = adatetimeparser[k];
        if (datetimeparser != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        if (i1 <= i)
        {
            return i;
        }
        flag = true;
_L5:
        int j1;
        Object obj2;
        int k1;
        if (i1 > i || i1 == i && flag)
        {
            if (obj1 != null)
            {
                datetimeparserbucket.a(obj1);
            }
            return i1;
        } else
        {
            return ~l;
        }
_L2:
label0:
        {
            j1 = datetimeparser.a(datetimeparserbucket, s, i);
            if (j1 >= i)
            {
                if (j1 <= i1)
                {
                    break label0;
                }
                if (j1 >= s.length() || k + 1 >= j || adatetimeparser[k + 1] == null)
                {
                    return j1;
                }
                obj2 = datetimeparserbucket.f();
                k1 = j1;
            } else
            {
                if (j1 >= 0)
                {
                    break label0;
                }
                int l1 = ~j1;
                if (l1 <= l)
                {
                    break label0;
                }
                l = l1;
                obj2 = obj1;
                k1 = i1;
            }
        }
_L4:
        datetimeparserbucket.a(obj);
        k++;
        i1 = k1;
        obj1 = obj2;
          goto _L3
        obj2 = obj1;
        k1 = i1;
          goto _L4
        flag = false;
          goto _L5
    }

    public int b()
    {
        return b;
    }

    (DateTimeParser adatetimeparser[])
    {
        int i;
        int j;
        a = adatetimeparser;
        i = 0;
        j = adatetimeparser.length;
_L2:
        int k;
        int l;
        k = j - 1;
        if (k < 0)
        {
            break; /* Loop/switch isn't completed */
        }
        DateTimeParser datetimeparser = adatetimeparser[k];
        if (datetimeparser == null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        l = datetimeparser.b();
        if (l <= i)
        {
            break MISSING_BLOCK_LABEL_65;
        }
_L3:
        i = l;
        j = k;
        if (true) goto _L2; else goto _L1
_L1:
        b = i;
        return;
        l = i;
          goto _L3
    }
}
