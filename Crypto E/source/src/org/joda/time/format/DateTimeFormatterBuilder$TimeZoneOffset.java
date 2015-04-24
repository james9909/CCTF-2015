// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.format:
//            DateTimeParser, DateTimePrinter, DateTimeParserBucket, FormatUtils, 
//            DateTimeFormatterBuilder

static class e
    implements DateTimeParser, DateTimePrinter
{

    private final String a;
    private final String b;
    private final boolean c;
    private final int d;
    private final int e;

    private int a(String s, int i, int j)
    {
        int k = Math.min(s.length() - i, j);
        int l = 0;
        do
        {
label0:
            {
                if (k > 0)
                {
                    char c1 = s.charAt(i + l);
                    if (c1 >= '0' && c1 <= '9')
                    {
                        break label0;
                    }
                }
                return l;
            }
            l++;
            k--;
        } while (true);
    }

    public int a()
    {
        int i = 1 + d << 1;
        if (c)
        {
            i += -1 + d;
        }
        if (a != null && a.length() > i)
        {
            i = a.length();
        }
        return i;
    }

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        int j = s.length() - i;
        if (b == null) goto _L2; else goto _L1
_L1:
        if (b.length() != 0) goto _L4; else goto _L3
_L3:
        if (j <= 0) goto _L6; else goto _L5
_L5:
        char c3 = s.charAt(i);
        if (c3 != '-' && c3 != '+') goto _L6; else goto _L2
_L2:
        if (j <= 1)
        {
            return ~i;
        }
        break; /* Loop/switch isn't completed */
_L6:
        datetimeparserbucket.a(Integer.valueOf(0));
        return i;
_L4:
        if (s.regionMatches(true, i, b, 0, b.length()))
        {
            datetimeparserbucket.a(Integer.valueOf(0));
            return i + b.length();
        }
        if (true) goto _L2; else goto _L7
_L7:
        boolean flag;
        int j1;
        int k1;
        int l1;
        char c1 = s.charAt(i);
        int k;
        int l;
        if (c1 == '-')
        {
            flag = true;
        } else
        if (c1 == '+')
        {
            flag = false;
        } else
        {
            return ~i;
        }
        k = j - 1;
        l = i + 1;
        if (a(s, l, 2) < 2)
        {
            return ~l;
        }
        int i1 = FormatUtils.a(s, l);
        if (i1 > 23)
        {
            return ~l;
        }
        j1 = i1 * 0x36ee80;
        k1 = k - 2;
        l1 = l + 2;
        if (k1 > 0) goto _L9; else goto _L8
_L8:
        int i2;
        int j2;
        i2 = j1;
        j2 = l1;
_L15:
        char c2;
        boolean flag1;
        int k2;
        int l2;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        int j4;
        int k4;
        int l4;
        int i5;
        int j5;
        int i6;
        if (flag)
        {
            k2 = -i2;
        } else
        {
            k2 = i2;
        }
        datetimeparserbucket.a(Integer.valueOf(k2));
        return j2;
_L9:
        c2 = s.charAt(l1);
        if (c2 != ':') goto _L11; else goto _L10
_L10:
        k1--;
        l1++;
        flag1 = true;
_L13:
        l2 = a(s, l1, 2);
        if (l2 == 0 && !flag1)
        {
            i2 = j1;
            j2 = l1;
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_329;
_L11:
        if (c2 < '0')
        {
            break; /* Loop/switch isn't completed */
        }
        flag1 = false;
        if (c2 <= '9') goto _L13; else goto _L12
_L12:
        i2 = j1;
        j2 = l1;
        continue; /* Loop/switch isn't completed */
        if (l2 < 2)
        {
            return ~l1;
        }
        i3 = FormatUtils.a(s, l1);
        if (i3 > 59)
        {
            return ~l1;
        }
        j3 = j1 + i3 * 60000;
        k3 = k1 - 2;
        l3 = l1 + 2;
        if (k3 <= 0)
        {
            i2 = j3;
            j2 = l3;
            continue; /* Loop/switch isn't completed */
        }
        if (flag1)
        {
            if (s.charAt(l3) != ':')
            {
                i2 = j3;
                j2 = l3;
                continue; /* Loop/switch isn't completed */
            }
            k3--;
            l3++;
        }
        i4 = a(s, l3, 2);
        if (i4 == 0 && !flag1)
        {
            i2 = j3;
            j2 = l3;
            continue; /* Loop/switch isn't completed */
        }
        if (i4 < 2)
        {
            return ~l3;
        }
        j4 = FormatUtils.a(s, l3);
        if (j4 > 59)
        {
            return ~l3;
        }
        k4 = j3 + j4 * 1000;
        l4 = k3 - 2;
        i5 = l3 + 2;
        if (l4 <= 0)
        {
            i2 = k4;
            j2 = i5;
            continue; /* Loop/switch isn't completed */
        }
        if (flag1)
        {
            if (s.charAt(i5) != '.' && s.charAt(i5) != ',')
            {
                i2 = k4;
                j2 = i5;
                continue; /* Loop/switch isn't completed */
            }
            l4 - 1;
            i5++;
        }
        j5 = a(s, i5, 3);
        if (j5 == 0 && !flag1)
        {
            i2 = k4;
            j2 = i5;
        } else
        {
            if (j5 < 1)
            {
                return ~i5;
            }
            int k5 = i5 + 1;
            int l5 = k4 + 100 * (-48 + s.charAt(i5));
            if (j5 > 1)
            {
                j2 = k5 + 1;
                i2 = l5 + 10 * (-48 + s.charAt(k5));
                if (j5 > 2)
                {
                    i6 = j2 + 1;
                    i2 += -48 + s.charAt(j2);
                    j2 = i6;
                }
            } else
            {
                i2 = l5;
                j2 = k5;
            }
        }
        if (true) goto _L15; else goto _L14
_L14:
    }

    public void a(StringBuffer stringbuffer, long l, Chronology chronology, int i, DateTimeZone datetimezone, Locale locale)
    {
        if (datetimezone != null)
        {
            if (i == 0 && a != null)
            {
                stringbuffer.append(a);
                return;
            }
            int j;
            if (i >= 0)
            {
                stringbuffer.append('+');
            } else
            {
                stringbuffer.append('-');
                i = -i;
            }
            j = i / 0x36ee80;
            FormatUtils.a(stringbuffer, j, 2);
            if (e != 1)
            {
                int k = i - j * 0x36ee80;
                if (k != 0 || d > 1)
                {
                    int i1 = k / 60000;
                    if (c)
                    {
                        stringbuffer.append(':');
                    }
                    FormatUtils.a(stringbuffer, i1, 2);
                    if (e != 2)
                    {
                        int j1 = k - i1 * 60000;
                        if (j1 != 0 || d > 2)
                        {
                            int k1 = j1 / 1000;
                            if (c)
                            {
                                stringbuffer.append(':');
                            }
                            FormatUtils.a(stringbuffer, k1, 2);
                            if (e != 3)
                            {
                                int l1 = j1 - k1 * 1000;
                                if (l1 != 0 || d > 3)
                                {
                                    if (c)
                                    {
                                        stringbuffer.append('.');
                                    }
                                    FormatUtils.a(stringbuffer, l1, 3);
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
    {
    }

    public int b()
    {
        return a();
    }

    (String s, String s1, boolean flag, int i, int j)
    {
        int k = 4;
        super();
        a = s;
        b = s1;
        c = flag;
        if (i <= 0 || j < i)
        {
            throw new IllegalArgumentException();
        }
        if (i > k)
        {
            j = k;
        } else
        {
            k = i;
        }
        d = k;
        e = j;
    }
}
