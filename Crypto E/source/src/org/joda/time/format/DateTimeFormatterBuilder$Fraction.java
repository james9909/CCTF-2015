// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.io.IOException;
import java.io.Writer;
import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.ReadablePartial;
import org.joda.time.field.MillisDurationField;
import org.joda.time.field.PreciseDateTimeField;

// Referenced classes of package org.joda.time.format:
//            DateTimeParser, DateTimePrinter, DateTimeParserBucket, DateTimeFormatterBuilder

static class b
    implements DateTimeParser, DateTimePrinter
{

    protected int a;
    protected int b;
    private final DateTimeFieldType c;

    private long[] a(long l, DateTimeField datetimefield)
    {
        long l1;
        int i;
        l1 = datetimefield.e().d();
        i = b;
_L23:
        i;
        JVM INSTR tableswitch 1 18: default 104
    //                   1 147
    //                   2 155
    //                   3 163
    //                   4 171
    //                   5 179
    //                   6 187
    //                   7 195
    //                   8 203
    //                   9 211
    //                   10 219
    //                   11 227
    //                   12 235
    //                   13 243
    //                   14 251
    //                   15 259
    //                   16 267
    //                   17 275
    //                   18 283;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19
_L1:
        long l2 = 1L;
_L21:
        if ((l1 * l2) / l2 == l1)
        {
            long al[] = new long[2];
            al[0] = (l2 * l) / l1;
            al[1] = i;
            return al;
        }
        break; /* Loop/switch isn't completed */
_L2:
        l2 = 10L;
        continue; /* Loop/switch isn't completed */
_L3:
        l2 = 100L;
        continue; /* Loop/switch isn't completed */
_L4:
        l2 = 1000L;
        continue; /* Loop/switch isn't completed */
_L5:
        l2 = 10000L;
        continue; /* Loop/switch isn't completed */
_L6:
        l2 = 0x186a0L;
        continue; /* Loop/switch isn't completed */
_L7:
        l2 = 0xf4240L;
        continue; /* Loop/switch isn't completed */
_L8:
        l2 = 0x989680L;
        continue; /* Loop/switch isn't completed */
_L9:
        l2 = 0x5f5e100L;
        continue; /* Loop/switch isn't completed */
_L10:
        l2 = 0x3b9aca00L;
        continue; /* Loop/switch isn't completed */
_L11:
        l2 = 0x2540be400L;
        continue; /* Loop/switch isn't completed */
_L12:
        l2 = 0x174876e800L;
        continue; /* Loop/switch isn't completed */
_L13:
        l2 = 0xe8d4a51000L;
        continue; /* Loop/switch isn't completed */
_L14:
        l2 = 0x9184e72a000L;
        continue; /* Loop/switch isn't completed */
_L15:
        l2 = 0x5af3107a4000L;
        continue; /* Loop/switch isn't completed */
_L16:
        l2 = 0x38d7ea4c68000L;
        continue; /* Loop/switch isn't completed */
_L17:
        l2 = 0x2386f26fc10000L;
        continue; /* Loop/switch isn't completed */
_L18:
        l2 = 0x16345785d8a0000L;
        continue; /* Loop/switch isn't completed */
_L19:
        l2 = 0xde0b6b3a7640000L;
        if (true) goto _L21; else goto _L20
_L20:
        i--;
        if (true) goto _L23; else goto _L22
_L22:
    }

    public int a()
    {
        return b;
    }

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        DateTimeField datetimefield = c.a(datetimeparserbucket.a());
        int j = Math.min(b, s.length() - i);
        long l = 0L;
        long l1 = 10L * datetimefield.e().d();
        int k = 0;
        long l2;
label0:
        do
        {
            char c1;
label1:
            {
                if (k < j)
                {
                    c1 = s.charAt(i + k);
                    if (c1 >= '0' && c1 <= '9')
                    {
                        break label1;
                    }
                }
                l2 = l / 10L;
                if (k == 0)
                {
                    return ~i;
                }
                break label0;
            }
            k++;
            l1 /= 10L;
            l += l1 * (long)(c1 - 48);
        } while (true);
        if (l2 > 0x7fffffffL)
        {
            return ~i;
        } else
        {
            datetimeparserbucket.a(new PreciseDateTimeField(DateTimeFieldType.a(), MillisDurationField.a, datetimefield.e()), (int)l2);
            return k + i;
        }
    }

    public void a(StringBuffer stringbuffer, long l, Chronology chronology, int i, DateTimeZone datetimezone, Locale locale)
    {
        try
        {
            a(stringbuffer, null, l, chronology);
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    protected void a(StringBuffer stringbuffer, Writer writer, long l, Chronology chronology)
    {
        DateTimeField datetimefield;
        int i;
        datetimefield = c.a(chronology);
        i = a;
        long l1 = datetimefield.j(l);
        if (l1 != 0L) goto _L2; else goto _L1
_L1:
        RuntimeException runtimeexception;
        if (stringbuffer != null)
        {
            while (--i >= 0) 
            {
                stringbuffer.append('0');
            }
        } else
        {
            while (--i >= 0) 
            {
                writer.write(48);
            }
        }
          goto _L3
        runtimeexception;
        if (stringbuffer == null) goto _L5; else goto _L4
_L4:
        DateTimeFormatterBuilder.a(stringbuffer, i);
_L3:
        return;
_L5:
        DateTimeFormatterBuilder.a(writer, i);
        return;
_L2:
        long al[] = a(l1, datetimefield);
        long l2 = al[0];
        int j = (int)al[1];
        String s;
        int k;
        if ((0x7fffffffL & l2) == l2)
        {
            s = Integer.toString((int)l2);
        } else
        {
            s = Long.toString(l2);
        }
        k = s.length();
        while (k < j) 
        {
            if (stringbuffer != null)
            {
                stringbuffer.append('0');
            } else
            {
                writer.write(48);
            }
            i--;
            j--;
        }
        if (i < j)
        {
            do
            {
                if (i >= j || k <= 1 || s.charAt(k - 1) != '0')
                {
                    if (k >= s.length())
                    {
                        break;
                    }
                    if (stringbuffer != null)
                    {
                        int j1 = 0;
                        while (j1 < k) 
                        {
                            stringbuffer.append(s.charAt(j1));
                            j1++;
                        }
                    } else
                    {
                        int i1 = 0;
                        while (i1 < k) 
                        {
                            writer.write(s.charAt(i1));
                            i1++;
                        }
                    }
                    continue; /* Loop/switch isn't completed */
                }
                j--;
                k--;
            } while (true);
        }
        if (stringbuffer != null)
        {
            stringbuffer.append(s);
            return;
        }
        writer.write(s);
        return;
        if (true) goto _L3; else goto _L6
_L6:
    }

    public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
    {
        long l = readablepartial.c().b(readablepartial, 0L);
        try
        {
            a(stringbuffer, null, l, readablepartial.c());
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public int b()
    {
        return b;
    }

    protected (DateTimeFieldType datetimefieldtype, int i, int j)
    {
        c = datetimefieldtype;
        if (j > 18)
        {
            j = 18;
        }
        a = i;
        b = j;
    }
}
