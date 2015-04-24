// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.format:
//            DateTimeParser, DateTimePrinter, DateTimeParserBucket, FormatUtils, 
//            DateTimeFormatterBuilder

static class c
    implements DateTimeParser, DateTimePrinter
{

    private final DateTimeFieldType a;
    private final int b;
    private final boolean c;

    private int a(long l, Chronology chronology)
    {
        int i;
        int j;
        try
        {
            i = a.a(chronology).a(l);
        }
        catch (RuntimeException runtimeexception)
        {
            return -1;
        }
        if (i < 0)
        {
            i = -i;
        }
        j = i % 100;
        return j;
    }

    private int a(ReadablePartial readablepartial)
    {
        if (!readablepartial.b(a))
        {
            break MISSING_BLOCK_LABEL_41;
        }
        int i = readablepartial.a(a);
        if (i < 0)
        {
            i = -i;
        }
        int j = i % 100;
        return j;
        RuntimeException runtimeexception;
        runtimeexception;
        return -1;
    }

    public int a()
    {
        return 2;
    }

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        int j = s.length() - i;
        if (c) goto _L2; else goto _L1
_L1:
        if (Math.min(2, j) < 2)
        {
            return ~i;
        }
          goto _L3
_L2:
        int k;
        boolean flag;
        boolean flag1;
        k = 0;
        flag = false;
        flag1 = false;
        int l = j;
label0:
        do
        {
label1:
            {
                if (k < l)
                {
                    char c4 = s.charAt(i + k);
                    if (k == 0 && (c4 == '-' || c4 == '+'))
                    {
                        boolean flag2;
                        if (c4 == '-')
                        {
                            flag2 = true;
                        } else
                        {
                            flag2 = false;
                        }
                        if (flag2)
                        {
                            k++;
                            flag = flag2;
                            flag1 = true;
                        } else
                        {
                            i++;
                            int k4 = l - 1;
                            flag1 = true;
                            l = k4;
                            flag = flag2;
                        }
                        continue;
                    }
                    if (c4 >= '0' && c4 <= '9')
                    {
                        break label1;
                    }
                }
                if (k == 0)
                {
                    return ~i;
                }
                break label0;
            }
            k++;
        } while (true);
        if (!flag1 && k == 2) goto _L3; else goto _L4
_L4:
        if (k < 9) goto _L6; else goto _L5
_L5:
        int l1;
        int i2;
        l1 = i + k;
        i2 = Integer.parseInt(s.substring(i, l1));
_L7:
        datetimeparserbucket.a(a, i2);
        return l1;
_L6:
        int i1;
        int j1;
        char c1;
        int k1;
        char c2;
        int i3;
        char c3;
        int j3;
        int k3;
        int l3;
        int i4;
        byte byte0;
        int j4;
        if (flag)
        {
            i1 = i + 1;
        } else
        {
            i1 = i;
        }
        j1 = i1 + 1;
        try
        {
            c1 = s.charAt(i1);
        }
        catch (StringIndexOutOfBoundsException stringindexoutofboundsexception)
        {
            return ~i;
        }
        k1 = c1 - 48;
        l1 = i + k;
        i2 = k1;
        int l2;
        for (int j2 = j1; j2 < l1; j2 = l2)
        {
            int k2 = (i2 << 3) + (i2 << 1);
            l2 = j2 + 1;
            i2 = -48 + (k2 + s.charAt(j2));
        }

        if (flag)
        {
            i2 = -i2;
        }
        if (true) goto _L7; else goto _L3
_L3:
        c2 = s.charAt(i);
        if (c2 < '0' || c2 > '9')
        {
            return ~i;
        }
        i3 = c2 - 48;
        c3 = s.charAt(i + 1);
        if (c3 < '0' || c3 > '9')
        {
            return ~i;
        }
        j3 = -48 + (c3 + ((i3 << 3) + (i3 << 1)));
        k3 = b;
        if (datetimeparserbucket.e() != null)
        {
            k3 = datetimeparserbucket.e().intValue();
        }
        l3 = k3 - 50;
        if (l3 >= 0)
        {
            i4 = l3 % 100;
        } else
        {
            i4 = 99 + (l3 + 1) % 100;
        }
        byte0 = 0;
        if (j3 < i4)
        {
            byte0 = 100;
        }
        j4 = j3 + ((byte0 + l3) - i4);
        datetimeparserbucket.a(a, j4);
        return i + 2;
    }

    public void a(StringBuffer stringbuffer, long l, Chronology chronology, int i, DateTimeZone datetimezone, Locale locale)
    {
        int j = a(l, chronology);
        if (j < 0)
        {
            stringbuffer.append('\uFFFD');
            stringbuffer.append('\uFFFD');
            return;
        } else
        {
            FormatUtils.a(stringbuffer, j, 2);
            return;
        }
    }

    public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
    {
        int i = a(readablepartial);
        if (i < 0)
        {
            stringbuffer.append('\uFFFD');
            stringbuffer.append('\uFFFD');
            return;
        } else
        {
            FormatUtils.a(stringbuffer, i, 2);
            return;
        }
    }

    public int b()
    {
        return !c ? 2 : 4;
    }

    (DateTimeFieldType datetimefieldtype, int i, boolean flag)
    {
        a = datetimefieldtype;
        b = i;
        c = flag;
    }
}
