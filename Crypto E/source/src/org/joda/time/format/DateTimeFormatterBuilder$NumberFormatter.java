// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import org.joda.time.DateTimeFieldType;

// Referenced classes of package org.joda.time.format:
//            DateTimeParser, DateTimePrinter, DateTimeParserBucket, DateTimeFormatterBuilder

static abstract class c
    implements DateTimeParser, DateTimePrinter
{

    protected final DateTimeFieldType a;
    protected final int b;
    protected final boolean c;

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        boolean flag;
        int k;
        int l;
        int i1;
        int j = Math.min(b, s.length() - i);
        flag = false;
        k = j;
        l = i;
        i1 = 0;
_L10:
        if (i1 >= k) goto _L2; else goto _L1
_L1:
        char c2 = s.charAt(l + i1);
        if (i1 != 0 || c2 != '-' && c2 != '+' || !c) goto _L4; else goto _L3
_L3:
        boolean flag1;
        char c3;
        if (c2 == '-')
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i1 + 1 >= k) goto _L2; else goto _L5
_L5:
        c3 = s.charAt(1 + (l + i1));
        if (c3 < '0') goto _L2; else goto _L6
_L6:
        if (c3 <= '9') goto _L8; else goto _L7
_L7:
        flag1 = flag;
_L12:
        if (i1 == 0)
        {
            return ~l;
        }
          goto _L9
_L8:
        if (flag)
        {
            i1++;
        } else
        {
            l++;
        }
        k = Math.min(k + 1, s.length() - l);
          goto _L10
_L4:
        if (c2 < '0') goto _L2; else goto _L11
_L11:
label0:
        {
            if (c2 <= '9')
            {
                break label0;
            }
            flag1 = flag;
        }
          goto _L12
        i1++;
          goto _L10
_L9:
        if (i1 < 9) goto _L14; else goto _L13
_L13:
        int i2;
        int j2;
        int i3 = l + i1;
        j2 = Integer.parseInt(s.substring(l, i3));
        i2 = i3;
_L15:
        datetimeparserbucket.a(a, j2);
        return i2;
_L14:
        int j1;
        int k1;
        char c1;
        int l1;
        if (flag1)
        {
            j1 = l + 1;
        } else
        {
            j1 = l;
        }
        k1 = j1 + 1;
        try
        {
            c1 = s.charAt(j1);
        }
        catch (StringIndexOutOfBoundsException stringindexoutofboundsexception)
        {
            return ~l;
        }
        l1 = c1 - 48;
        i2 = l + i1;
        j2 = l1;
        int l2;
        for (; k1 < i2; k1 = l2)
        {
            int k2 = (j2 << 3) + (j2 << 1);
            l2 = k1 + 1;
            j2 = -48 + (k2 + s.charAt(k1));
        }

        if (flag1)
        {
            j2 = -j2;
        }
        if (true) goto _L15; else goto _L2
_L2:
        flag1 = flag;
          goto _L12
    }

    public int b()
    {
        return b;
    }

    (DateTimeFieldType datetimefieldtype, int i, boolean flag)
    {
        a = datetimefieldtype;
        b = i;
        c = flag;
    }
}
