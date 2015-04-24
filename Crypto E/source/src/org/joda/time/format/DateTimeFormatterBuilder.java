// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.MutableDateTime;
import org.joda.time.ReadablePartial;
import org.joda.time.field.MillisDurationField;
import org.joda.time.field.PreciseDateTimeField;

// Referenced classes of package org.joda.time.format:
//            DateTimePrinter, DateTimeParser, DateTimeFormatter, DateTimeParserBucket, 
//            FormatUtils

public class DateTimeFormatterBuilder
{
    static class CharacterLiteral
        implements DateTimeParser, DateTimePrinter
    {

        private final char a;

        public int a()
        {
            return 1;
        }

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i1)
        {
            if (i1 >= s.length())
            {
                return ~i1;
            }
            char c1 = s.charAt(i1);
            char c2 = a;
            if (c1 != c2)
            {
                char c3 = Character.toUpperCase(c1);
                char c4 = Character.toUpperCase(c2);
                if (c3 != c4 && Character.toLowerCase(c3) != Character.toLowerCase(c4))
                {
                    return ~i1;
                }
            }
            return i1 + 1;
        }

        public void a(StringBuffer stringbuffer, long l1, Chronology chronology, int i1, DateTimeZone datetimezone, Locale locale)
        {
            stringbuffer.append(a);
        }

        public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
        {
            stringbuffer.append(a);
        }

        public int b()
        {
            return 1;
        }

        CharacterLiteral(char c1)
        {
            a = c1;
        }
    }

    static class Composite
        implements DateTimeParser, DateTimePrinter
    {

        private final DateTimePrinter a[];
        private final DateTimeParser b[];
        private final int c;
        private final int d;

        private void a(List list, List list1, List list2)
        {
            int i1 = list.size();
            int j1 = 0;
            while (j1 < i1) 
            {
                Object obj = list.get(j1);
                Object obj1;
                if (obj instanceof Composite)
                {
                    a(list1, ((Object []) (((Composite)obj).a)));
                } else
                {
                    list1.add(obj);
                }
                obj1 = list.get(j1 + 1);
                if (obj1 instanceof Composite)
                {
                    a(list2, ((Object []) (((Composite)obj1).b)));
                } else
                {
                    list2.add(obj1);
                }
                j1 += 2;
            }
        }

        private void a(List list, Object aobj[])
        {
            if (aobj != null)
            {
                for (int i1 = 0; i1 < aobj.length; i1++)
                {
                    list.add(aobj[i1]);
                }

            }
        }

        public int a()
        {
            return c;
        }

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i1)
        {
            DateTimeParser adatetimeparser[] = b;
            if (adatetimeparser == null)
            {
                throw new UnsupportedOperationException();
            }
            int j1 = adatetimeparser.length;
            for (int k1 = 0; k1 < j1 && i1 >= 0; k1++)
            {
                i1 = adatetimeparser[k1].a(datetimeparserbucket, s, i1);
            }

            return i1;
        }

        public void a(StringBuffer stringbuffer, long l1, Chronology chronology, int i1, DateTimeZone datetimezone, Locale locale)
        {
            DateTimePrinter adatetimeprinter[] = a;
            if (adatetimeprinter == null)
            {
                throw new UnsupportedOperationException();
            }
            Locale locale1;
            int j1;
            if (locale == null)
            {
                locale1 = Locale.getDefault();
            } else
            {
                locale1 = locale;
            }
            j1 = adatetimeprinter.length;
            for (int k1 = 0; k1 < j1; k1++)
            {
                adatetimeprinter[k1].a(stringbuffer, l1, chronology, i1, datetimezone, locale1);
            }

        }

        public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
        {
            DateTimePrinter adatetimeprinter[] = a;
            if (adatetimeprinter == null)
            {
                throw new UnsupportedOperationException();
            }
            if (locale == null)
            {
                locale = Locale.getDefault();
            }
            int i1 = adatetimeprinter.length;
            for (int j1 = 0; j1 < i1; j1++)
            {
                adatetimeprinter[j1].a(stringbuffer, readablepartial, locale);
            }

        }

        public int b()
        {
            return d;
        }

        boolean c()
        {
            return a != null;
        }

        boolean d()
        {
            return b != null;
        }

        Composite(List list)
        {
            int i1 = 0;
            super();
            ArrayList arraylist = new ArrayList();
            ArrayList arraylist1 = new ArrayList();
            a(list, arraylist, arraylist1);
            if (arraylist.contains(null) || arraylist.isEmpty())
            {
                a = null;
                c = 0;
            } else
            {
                int l1 = arraylist.size();
                a = new DateTimePrinter[l1];
                int i2 = 0;
                int j2 = 0;
                for (; i2 < l1; i2++)
                {
                    DateTimePrinter datetimeprinter = (DateTimePrinter)arraylist.get(i2);
                    j2 += datetimeprinter.a();
                    a[i2] = datetimeprinter;
                }

                c = j2;
            }
            if (arraylist1.contains(null) || arraylist1.isEmpty())
            {
                b = null;
                d = 0;
                return;
            }
            int j1 = arraylist1.size();
            b = new DateTimeParser[j1];
            int k1 = 0;
            for (; i1 < j1; i1++)
            {
                DateTimeParser datetimeparser = (DateTimeParser)arraylist1.get(i1);
                k1 += datetimeparser.b();
                b[i1] = datetimeparser;
            }

            d = k1;
        }
    }

    static class FixedNumber extends PaddedNumber
    {

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i1)
        {
            int j1 = super.a(datetimeparserbucket, s, i1);
            int k1;
            if (j1 >= 0)
            {
                if (j1 != (k1 = i1 + b))
                {
                    if (c)
                    {
                        char c1 = s.charAt(i1);
                        if (c1 == '-' || c1 == '+')
                        {
                            k1++;
                        }
                    }
                    if (j1 > k1)
                    {
                        return -1 ^ k1 + 1;
                    }
                    if (j1 < k1)
                    {
                        return ~j1;
                    }
                }
            }
            return j1;
        }

        protected FixedNumber(DateTimeFieldType datetimefieldtype, int i1, boolean flag)
        {
            super(datetimefieldtype, i1, flag, i1);
        }
    }

    static class Fraction
        implements DateTimeParser, DateTimePrinter
    {

        protected int a;
        protected int b;
        private final DateTimeFieldType c;

        private long[] a(long l1, DateTimeField datetimefield)
        {
            long l2;
            int i1;
            l2 = datetimefield.e().d();
            i1 = b;
_L23:
            i1;
            JVM INSTR tableswitch 1 18: default 104
        //                       1 147
        //                       2 155
        //                       3 163
        //                       4 171
        //                       5 179
        //                       6 187
        //                       7 195
        //                       8 203
        //                       9 211
        //                       10 219
        //                       11 227
        //                       12 235
        //                       13 243
        //                       14 251
        //                       15 259
        //                       16 267
        //                       17 275
        //                       18 283;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19
_L1:
            long l3 = 1L;
_L21:
            if ((l2 * l3) / l3 == l2)
            {
                long al[] = new long[2];
                al[0] = (l3 * l1) / l2;
                al[1] = i1;
                return al;
            }
            break; /* Loop/switch isn't completed */
_L2:
            l3 = 10L;
            continue; /* Loop/switch isn't completed */
_L3:
            l3 = 100L;
            continue; /* Loop/switch isn't completed */
_L4:
            l3 = 1000L;
            continue; /* Loop/switch isn't completed */
_L5:
            l3 = 10000L;
            continue; /* Loop/switch isn't completed */
_L6:
            l3 = 0x186a0L;
            continue; /* Loop/switch isn't completed */
_L7:
            l3 = 0xf4240L;
            continue; /* Loop/switch isn't completed */
_L8:
            l3 = 0x989680L;
            continue; /* Loop/switch isn't completed */
_L9:
            l3 = 0x5f5e100L;
            continue; /* Loop/switch isn't completed */
_L10:
            l3 = 0x3b9aca00L;
            continue; /* Loop/switch isn't completed */
_L11:
            l3 = 0x2540be400L;
            continue; /* Loop/switch isn't completed */
_L12:
            l3 = 0x174876e800L;
            continue; /* Loop/switch isn't completed */
_L13:
            l3 = 0xe8d4a51000L;
            continue; /* Loop/switch isn't completed */
_L14:
            l3 = 0x9184e72a000L;
            continue; /* Loop/switch isn't completed */
_L15:
            l3 = 0x5af3107a4000L;
            continue; /* Loop/switch isn't completed */
_L16:
            l3 = 0x38d7ea4c68000L;
            continue; /* Loop/switch isn't completed */
_L17:
            l3 = 0x2386f26fc10000L;
            continue; /* Loop/switch isn't completed */
_L18:
            l3 = 0x16345785d8a0000L;
            continue; /* Loop/switch isn't completed */
_L19:
            l3 = 0xde0b6b3a7640000L;
            if (true) goto _L21; else goto _L20
_L20:
            i1--;
            if (true) goto _L23; else goto _L22
_L22:
        }

        public int a()
        {
            return b;
        }

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i1)
        {
            DateTimeField datetimefield = c.a(datetimeparserbucket.a());
            int j1 = Math.min(b, s.length() - i1);
            long l1 = 0L;
            long l2 = 10L * datetimefield.e().d();
            int k1 = 0;
            long l3;
label0:
            do
            {
                char c1;
label1:
                {
                    if (k1 < j1)
                    {
                        c1 = s.charAt(i1 + k1);
                        if (c1 >= '0' && c1 <= '9')
                        {
                            break label1;
                        }
                    }
                    l3 = l1 / 10L;
                    if (k1 == 0)
                    {
                        return ~i1;
                    }
                    break label0;
                }
                k1++;
                l2 /= 10L;
                l1 += l2 * (long)(c1 - 48);
            } while (true);
            if (l3 > 0x7fffffffL)
            {
                return ~i1;
            } else
            {
                datetimeparserbucket.a(new PreciseDateTimeField(DateTimeFieldType.a(), MillisDurationField.a, datetimefield.e()), (int)l3);
                return k1 + i1;
            }
        }

        public void a(StringBuffer stringbuffer, long l1, Chronology chronology, int i1, DateTimeZone datetimezone, Locale locale)
        {
            try
            {
                a(stringbuffer, null, l1, chronology);
                return;
            }
            catch (IOException ioexception)
            {
                return;
            }
        }

        protected void a(StringBuffer stringbuffer, Writer writer, long l1, Chronology chronology)
        {
            DateTimeField datetimefield;
            int i1;
            datetimefield = c.a(chronology);
            i1 = a;
            long l2 = datetimefield.j(l1);
            if (l2 != 0L) goto _L2; else goto _L1
_L1:
            RuntimeException runtimeexception;
            if (stringbuffer != null)
            {
                while (--i1 >= 0) 
                {
                    stringbuffer.append('0');
                }
            } else
            {
                while (--i1 >= 0) 
                {
                    writer.write(48);
                }
            }
              goto _L3
            runtimeexception;
            if (stringbuffer == null) goto _L5; else goto _L4
_L4:
            DateTimeFormatterBuilder.a(stringbuffer, i1);
_L3:
            return;
_L5:
            DateTimeFormatterBuilder.a(writer, i1);
            return;
_L2:
            long al[] = a(l2, datetimefield);
            long l3 = al[0];
            int j1 = (int)al[1];
            String s;
            int k1;
            if ((0x7fffffffL & l3) == l3)
            {
                s = Integer.toString((int)l3);
            } else
            {
                s = Long.toString(l3);
            }
            k1 = s.length();
            while (k1 < j1) 
            {
                if (stringbuffer != null)
                {
                    stringbuffer.append('0');
                } else
                {
                    writer.write(48);
                }
                i1--;
                j1--;
            }
            if (i1 < j1)
            {
                do
                {
                    if (i1 >= j1 || k1 <= 1 || s.charAt(k1 - 1) != '0')
                    {
                        if (k1 >= s.length())
                        {
                            break;
                        }
                        if (stringbuffer != null)
                        {
                            int j2 = 0;
                            while (j2 < k1) 
                            {
                                stringbuffer.append(s.charAt(j2));
                                j2++;
                            }
                        } else
                        {
                            int i2 = 0;
                            while (i2 < k1) 
                            {
                                writer.write(s.charAt(i2));
                                i2++;
                            }
                        }
                        continue; /* Loop/switch isn't completed */
                    }
                    j1--;
                    k1--;
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
            long l1 = readablepartial.c().b(readablepartial, 0L);
            try
            {
                a(stringbuffer, null, l1, readablepartial.c());
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

        protected Fraction(DateTimeFieldType datetimefieldtype, int i1, int j1)
        {
            c = datetimefieldtype;
            if (j1 > 18)
            {
                j1 = 18;
            }
            a = i1;
            b = j1;
        }
    }

    static class MatchingParser
        implements DateTimeParser
    {

        private final DateTimeParser a[];
        private final int b;

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i1)
        {
            DateTimeParser adatetimeparser[];
            int j1;
            Object obj;
            Object obj1;
            int k1;
            int l1;
            int i2;
            adatetimeparser = a;
            j1 = adatetimeparser.length;
            obj = datetimeparserbucket.f();
            obj1 = null;
            k1 = 0;
            l1 = i1;
            i2 = i1;
_L3:
            DateTimeParser datetimeparser;
            if (k1 >= j1)
            {
                break MISSING_BLOCK_LABEL_227;
            }
            datetimeparser = adatetimeparser[k1];
            if (datetimeparser != null) goto _L2; else goto _L1
_L1:
            boolean flag;
            if (i2 <= i1)
            {
                return i1;
            }
            flag = true;
_L5:
            int j2;
            Object obj2;
            int k2;
            if (i2 > i1 || i2 == i1 && flag)
            {
                if (obj1 != null)
                {
                    datetimeparserbucket.a(obj1);
                }
                return i2;
            } else
            {
                return ~l1;
            }
_L2:
label0:
            {
                j2 = datetimeparser.a(datetimeparserbucket, s, i1);
                if (j2 >= i1)
                {
                    if (j2 <= i2)
                    {
                        break label0;
                    }
                    if (j2 >= s.length() || k1 + 1 >= j1 || adatetimeparser[k1 + 1] == null)
                    {
                        return j2;
                    }
                    obj2 = datetimeparserbucket.f();
                    k2 = j2;
                } else
                {
                    if (j2 >= 0)
                    {
                        break label0;
                    }
                    int l2 = ~j2;
                    if (l2 <= l1)
                    {
                        break label0;
                    }
                    l1 = l2;
                    obj2 = obj1;
                    k2 = i2;
                }
            }
_L4:
            datetimeparserbucket.a(obj);
            k1++;
            i2 = k2;
            obj1 = obj2;
              goto _L3
            obj2 = obj1;
            k2 = i2;
              goto _L4
            flag = false;
              goto _L5
        }

        public int b()
        {
            return b;
        }

        MatchingParser(DateTimeParser adatetimeparser[])
        {
            int i1;
            int j1;
            a = adatetimeparser;
            i1 = 0;
            j1 = adatetimeparser.length;
_L2:
            int k1;
            int l1;
            k1 = j1 - 1;
            if (k1 < 0)
            {
                break; /* Loop/switch isn't completed */
            }
            DateTimeParser datetimeparser = adatetimeparser[k1];
            if (datetimeparser == null)
            {
                break MISSING_BLOCK_LABEL_65;
            }
            l1 = datetimeparser.b();
            if (l1 <= i1)
            {
                break MISSING_BLOCK_LABEL_65;
            }
_L3:
            i1 = l1;
            j1 = k1;
            if (true) goto _L2; else goto _L1
_L1:
            b = i1;
            return;
            l1 = i1;
              goto _L3
        }
    }

    static abstract class NumberFormatter
        implements DateTimeParser, DateTimePrinter
    {

        protected final DateTimeFieldType a;
        protected final int b;
        protected final boolean c;

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i1)
        {
            boolean flag;
            int k1;
            int l1;
            int i2;
            int j1 = Math.min(b, s.length() - i1);
            flag = false;
            k1 = j1;
            l1 = i1;
            i2 = 0;
_L10:
            if (i2 >= k1) goto _L2; else goto _L1
_L1:
            char c2 = s.charAt(l1 + i2);
            if (i2 != 0 || c2 != '-' && c2 != '+' || !c) goto _L4; else goto _L3
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
            if (i2 + 1 >= k1) goto _L2; else goto _L5
_L5:
            c3 = s.charAt(1 + (l1 + i2));
            if (c3 < '0') goto _L2; else goto _L6
_L6:
            if (c3 <= '9') goto _L8; else goto _L7
_L7:
            flag1 = flag;
_L12:
            if (i2 == 0)
            {
                return ~l1;
            }
              goto _L9
_L8:
            if (flag)
            {
                i2++;
            } else
            {
                l1++;
            }
            k1 = Math.min(k1 + 1, s.length() - l1);
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
            i2++;
              goto _L10
_L9:
            if (i2 < 9) goto _L14; else goto _L13
_L13:
            int i3;
            int j3;
            int i4 = l1 + i2;
            j3 = Integer.parseInt(s.substring(l1, i4));
            i3 = i4;
_L15:
            datetimeparserbucket.a(a, j3);
            return i3;
_L14:
            int j2;
            int k2;
            char c1;
            int l2;
            if (flag1)
            {
                j2 = l1 + 1;
            } else
            {
                j2 = l1;
            }
            k2 = j2 + 1;
            try
            {
                c1 = s.charAt(j2);
            }
            catch (StringIndexOutOfBoundsException stringindexoutofboundsexception)
            {
                return ~l1;
            }
            l2 = c1 - 48;
            i3 = l1 + i2;
            j3 = l2;
            int l3;
            for (; k2 < i3; k2 = l3)
            {
                int k3 = (j3 << 3) + (j3 << 1);
                l3 = k2 + 1;
                j3 = -48 + (k3 + s.charAt(k2));
            }

            if (flag1)
            {
                j3 = -j3;
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

        NumberFormatter(DateTimeFieldType datetimefieldtype, int i1, boolean flag)
        {
            a = datetimefieldtype;
            b = i1;
            c = flag;
        }
    }

    static class PaddedNumber extends NumberFormatter
    {

        protected final int d;

        public int a()
        {
            return b;
        }

        public void a(StringBuffer stringbuffer, long l1, Chronology chronology, int i1, DateTimeZone datetimezone, Locale locale)
        {
            try
            {
                FormatUtils.a(stringbuffer, a.a(chronology).a(l1), d);
                return;
            }
            catch (RuntimeException runtimeexception)
            {
                DateTimeFormatterBuilder.a(stringbuffer, d);
            }
        }

        public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
        {
            if (readablepartial.b(a))
            {
                try
                {
                    FormatUtils.a(stringbuffer, readablepartial.a(a), d);
                    return;
                }
                catch (RuntimeException runtimeexception)
                {
                    DateTimeFormatterBuilder.a(stringbuffer, d);
                }
                return;
            } else
            {
                DateTimeFormatterBuilder.a(stringbuffer, d);
                return;
            }
        }

        protected PaddedNumber(DateTimeFieldType datetimefieldtype, int i1, boolean flag, int j1)
        {
            super(datetimefieldtype, i1, flag);
            d = j1;
        }
    }

    static class StringLiteral
        implements DateTimeParser, DateTimePrinter
    {

        private final String a;

        public int a()
        {
            return a.length();
        }

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i1)
        {
            if (s.regionMatches(true, i1, a, 0, a.length()))
            {
                return i1 + a.length();
            } else
            {
                return ~i1;
            }
        }

        public void a(StringBuffer stringbuffer, long l1, Chronology chronology, int i1, DateTimeZone datetimezone, Locale locale)
        {
            stringbuffer.append(a);
        }

        public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
        {
            stringbuffer.append(a);
        }

        public int b()
        {
            return a.length();
        }

        StringLiteral(String s)
        {
            a = s;
        }
    }

    static class TextField
        implements DateTimeParser, DateTimePrinter
    {

        private static Map a = new HashMap();
        private final DateTimeFieldType b;
        private final boolean c;

        private String a(long l1, Chronology chronology, Locale locale)
        {
            DateTimeField datetimefield = b.a(chronology);
            if (c)
            {
                return datetimefield.b(l1, locale);
            } else
            {
                return datetimefield.a(l1, locale);
            }
        }

        private String a(ReadablePartial readablepartial, Locale locale)
        {
            if (readablepartial.b(b))
            {
                DateTimeField datetimefield = b.a(readablepartial.c());
                if (c)
                {
                    return datetimefield.b(readablepartial, locale);
                } else
                {
                    return datetimefield.a(readablepartial, locale);
                }
            } else
            {
                return "\uFFFD";
            }
        }

        public int a()
        {
            return !c ? 20 : 6;
        }

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i1)
        {
            Locale locale = datetimeparserbucket.b();
            Map map = a;
            map;
            JVM INSTR monitorenter ;
            Map map1 = (Map)a.get(locale);
            if (map1 != null) goto _L2; else goto _L1
_L1:
            HashMap hashmap;
            hashmap = new HashMap();
            a.put(locale, hashmap);
            Object obj = hashmap;
_L10:
            Object aobj[] = (Object[])((Map) (obj)).get(b);
            if (aobj != null) goto _L4; else goto _L3
_L3:
            Object obj1;
            org.joda.time.MutableDateTime.Property property;
            int j1;
            int k1;
            obj1 = new HashSet(32);
            property = (new MutableDateTime(0L, DateTimeZone.a)).a(b);
            j1 = property.g();
            k1 = property.h();
            int j2;
            if (k1 - j1 <= 32)
            {
                break MISSING_BLOCK_LABEL_147;
            }
            j2 = ~i1;
            map;
            JVM INSTR monitorexit ;
            return j2;
            int l1 = property.c(locale);
_L6:
            if (j1 > k1)
            {
                break; /* Loop/switch isn't completed */
            }
            property.a(j1);
            ((Set) (obj1)).add(property.b(locale));
            ((Set) (obj1)).add(property.b(locale).toLowerCase(locale));
            ((Set) (obj1)).add(property.b(locale).toUpperCase(locale));
            ((Set) (obj1)).add(property.a(locale));
            ((Set) (obj1)).add(property.a(locale).toLowerCase(locale));
            ((Set) (obj1)).add(property.a(locale).toUpperCase(locale));
            j1++;
            if (true) goto _L6; else goto _L5
_L5:
            if (!"en".equals(locale.getLanguage()) || b != DateTimeFieldType.w())
            {
                break MISSING_BLOCK_LABEL_353;
            }
            ((Set) (obj1)).add("BCE");
            ((Set) (obj1)).add("bce");
            ((Set) (obj1)).add("CE");
            ((Set) (obj1)).add("ce");
            l1 = 3;
            Object aobj1[] = new Object[2];
            aobj1[0] = obj1;
            aobj1[1] = Integer.valueOf(l1);
            ((Map) (obj)).put(b, ((Object) (aobj1)));
_L7:
            map;
            JVM INSTR monitorexit ;
            int i2 = Math.min(s.length(), l1 + i1);
_L8:
            if (i2 <= i1)
            {
                break MISSING_BLOCK_LABEL_484;
            }
            String s1 = s.substring(i1, i2);
            if (((Set) (obj1)).contains(s1))
            {
                datetimeparserbucket.a(b, s1, locale);
                return i2;
            }
            break MISSING_BLOCK_LABEL_478;
_L4:
            obj1 = (Set)aobj[0];
            l1 = ((Integer)aobj[1]).intValue();
              goto _L7
            Exception exception;
            exception;
            map;
            JVM INSTR monitorexit ;
            throw exception;
            i2--;
              goto _L8
            return ~i1;
_L2:
            obj = map1;
            if (true) goto _L10; else goto _L9
_L9:
        }

        public void a(StringBuffer stringbuffer, long l1, Chronology chronology, int i1, DateTimeZone datetimezone, Locale locale)
        {
            try
            {
                stringbuffer.append(a(l1, chronology, locale));
                return;
            }
            catch (RuntimeException runtimeexception)
            {
                stringbuffer.append('\uFFFD');
            }
        }

        public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
        {
            try
            {
                stringbuffer.append(a(readablepartial, locale));
                return;
            }
            catch (RuntimeException runtimeexception)
            {
                stringbuffer.append('\uFFFD');
            }
        }

        public int b()
        {
            return a();
        }


        TextField(DateTimeFieldType datetimefieldtype, boolean flag)
        {
            b = datetimefieldtype;
            c = flag;
        }
    }

    static final class TimeZoneId extends Enum
        implements DateTimeParser, DateTimePrinter
    {

        public static final TimeZoneId a;
        static final Set b;
        static final int c;
        private static final TimeZoneId d[];

        public static TimeZoneId valueOf(String s)
        {
            return (TimeZoneId)Enum.valueOf(org/joda/time/format/DateTimeFormatterBuilder$TimeZoneId, s);
        }

        public static final TimeZoneId[] values()
        {
            return (TimeZoneId[])d.clone();
        }

        public int a()
        {
            return c;
        }

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i1)
        {
            String s1 = s.substring(i1);
            String s2 = null;
            Iterator iterator = b.iterator();
            while (iterator.hasNext()) 
            {
                String s3 = (String)iterator.next();
                if (!s1.startsWith(s3) || s2 != null && s3.length() <= s2.length())
                {
                    s3 = s2;
                }
                s2 = s3;
            }
            if (s2 != null)
            {
                datetimeparserbucket.a(DateTimeZone.a(s2));
                return i1 + s2.length();
            } else
            {
                return ~i1;
            }
        }

        public void a(StringBuffer stringbuffer, long l1, Chronology chronology, int i1, DateTimeZone datetimezone, Locale locale)
        {
            String s;
            if (datetimezone != null)
            {
                s = datetimezone.c();
            } else
            {
                s = "";
            }
            stringbuffer.append(s);
        }

        public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
        {
        }

        public int b()
        {
            return c;
        }

        static 
        {
            a = new TimeZoneId("INSTANCE", 0);
            TimeZoneId atimezoneid[] = new TimeZoneId[1];
            atimezoneid[0] = a;
            d = atimezoneid;
            b = DateTimeZone.b();
            Iterator iterator = b.iterator();
            int i1;
            for (i1 = 0; iterator.hasNext(); i1 = Math.max(i1, ((String)iterator.next()).length())) { }
            c = i1;
        }

        private TimeZoneId(String s, int i1)
        {
            super(s, i1);
        }
    }

    static class TimeZoneName
        implements DateTimeParser, DateTimePrinter
    {

        private final Map a;
        private final int b;

        private String a(long l1, DateTimeZone datetimezone, Locale locale)
        {
            if (datetimezone == null)
            {
                return "";
            }
            switch (b)
            {
            default:
                return "";

            case 0: // '\0'
                return datetimezone.b(l1, locale);

            case 1: // '\001'
                return datetimezone.a(l1, locale);
            }
        }

        public int a()
        {
            return b != 1 ? 20 : 4;
        }

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i1)
        {
            Map map = a;
            Map map1;
            String s1;
            String s2;
            Iterator iterator;
            if (map != null)
            {
                map1 = map;
            } else
            {
                map1 = DateTimeUtils.b();
            }
            s1 = s.substring(i1);
            s2 = null;
            iterator = map1.keySet().iterator();
            while (iterator.hasNext()) 
            {
                String s3 = (String)iterator.next();
                if (!s1.startsWith(s3) || s2 != null && s3.length() <= s2.length())
                {
                    s3 = s2;
                }
                s2 = s3;
            }
            if (s2 != null)
            {
                datetimeparserbucket.a((DateTimeZone)map1.get(s2));
                return i1 + s2.length();
            } else
            {
                return ~i1;
            }
        }

        public void a(StringBuffer stringbuffer, long l1, Chronology chronology, int i1, DateTimeZone datetimezone, Locale locale)
        {
            stringbuffer.append(a(l1 - (long)i1, datetimezone, locale));
        }

        public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
        {
        }

        public int b()
        {
            return b != 1 ? 20 : 4;
        }

        TimeZoneName(int i1, Map map)
        {
            b = i1;
            a = map;
        }
    }

    static class TimeZoneOffset
        implements DateTimeParser, DateTimePrinter
    {

        private final String a;
        private final String b;
        private final boolean c;
        private final int d;
        private final int e;

        private int a(String s, int i1, int j1)
        {
            int k1 = Math.min(s.length() - i1, j1);
            int l1 = 0;
            do
            {
label0:
                {
                    if (k1 > 0)
                    {
                        char c1 = s.charAt(i1 + l1);
                        if (c1 >= '0' && c1 <= '9')
                        {
                            break label0;
                        }
                    }
                    return l1;
                }
                l1++;
                k1--;
            } while (true);
        }

        public int a()
        {
            int i1 = 1 + d << 1;
            if (c)
            {
                i1 += -1 + d;
            }
            if (a != null && a.length() > i1)
            {
                i1 = a.length();
            }
            return i1;
        }

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i1)
        {
            int j1 = s.length() - i1;
            if (b == null) goto _L2; else goto _L1
_L1:
            if (b.length() != 0) goto _L4; else goto _L3
_L3:
            if (j1 <= 0) goto _L6; else goto _L5
_L5:
            char c3 = s.charAt(i1);
            if (c3 != '-' && c3 != '+') goto _L6; else goto _L2
_L2:
            if (j1 <= 1)
            {
                return ~i1;
            }
            break; /* Loop/switch isn't completed */
_L6:
            datetimeparserbucket.a(Integer.valueOf(0));
            return i1;
_L4:
            if (s.regionMatches(true, i1, b, 0, b.length()))
            {
                datetimeparserbucket.a(Integer.valueOf(0));
                return i1 + b.length();
            }
            if (true) goto _L2; else goto _L7
_L7:
            boolean flag;
            int j2;
            int k2;
            int l2;
            char c1 = s.charAt(i1);
            int k1;
            int l1;
            if (c1 == '-')
            {
                flag = true;
            } else
            if (c1 == '+')
            {
                flag = false;
            } else
            {
                return ~i1;
            }
            k1 = j1 - 1;
            l1 = i1 + 1;
            if (a(s, l1, 2) < 2)
            {
                return ~l1;
            }
            int i2 = FormatUtils.a(s, l1);
            if (i2 > 23)
            {
                return ~l1;
            }
            j2 = i2 * 0x36ee80;
            k2 = k1 - 2;
            l2 = l1 + 2;
            if (k2 > 0) goto _L9; else goto _L8
_L8:
            int i3;
            int j3;
            i3 = j2;
            j3 = l2;
_L15:
            char c2;
            boolean flag1;
            int k3;
            int l3;
            int i4;
            int j4;
            int k4;
            int l4;
            int i5;
            int j5;
            int k5;
            int l5;
            int i6;
            int j6;
            int i7;
            if (flag)
            {
                k3 = -i3;
            } else
            {
                k3 = i3;
            }
            datetimeparserbucket.a(Integer.valueOf(k3));
            return j3;
_L9:
            c2 = s.charAt(l2);
            if (c2 != ':') goto _L11; else goto _L10
_L10:
            k2--;
            l2++;
            flag1 = true;
_L13:
            l3 = a(s, l2, 2);
            if (l3 == 0 && !flag1)
            {
                i3 = j2;
                j3 = l2;
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
            i3 = j2;
            j3 = l2;
            continue; /* Loop/switch isn't completed */
            if (l3 < 2)
            {
                return ~l2;
            }
            i4 = FormatUtils.a(s, l2);
            if (i4 > 59)
            {
                return ~l2;
            }
            j4 = j2 + i4 * 60000;
            k4 = k2 - 2;
            l4 = l2 + 2;
            if (k4 <= 0)
            {
                i3 = j4;
                j3 = l4;
                continue; /* Loop/switch isn't completed */
            }
            if (flag1)
            {
                if (s.charAt(l4) != ':')
                {
                    i3 = j4;
                    j3 = l4;
                    continue; /* Loop/switch isn't completed */
                }
                k4--;
                l4++;
            }
            i5 = a(s, l4, 2);
            if (i5 == 0 && !flag1)
            {
                i3 = j4;
                j3 = l4;
                continue; /* Loop/switch isn't completed */
            }
            if (i5 < 2)
            {
                return ~l4;
            }
            j5 = FormatUtils.a(s, l4);
            if (j5 > 59)
            {
                return ~l4;
            }
            k5 = j4 + j5 * 1000;
            l5 = k4 - 2;
            i6 = l4 + 2;
            if (l5 <= 0)
            {
                i3 = k5;
                j3 = i6;
                continue; /* Loop/switch isn't completed */
            }
            if (flag1)
            {
                if (s.charAt(i6) != '.' && s.charAt(i6) != ',')
                {
                    i3 = k5;
                    j3 = i6;
                    continue; /* Loop/switch isn't completed */
                }
                l5 - 1;
                i6++;
            }
            j6 = a(s, i6, 3);
            if (j6 == 0 && !flag1)
            {
                i3 = k5;
                j3 = i6;
            } else
            {
                if (j6 < 1)
                {
                    return ~i6;
                }
                int k6 = i6 + 1;
                int l6 = k5 + 100 * (-48 + s.charAt(i6));
                if (j6 > 1)
                {
                    j3 = k6 + 1;
                    i3 = l6 + 10 * (-48 + s.charAt(k6));
                    if (j6 > 2)
                    {
                        i7 = j3 + 1;
                        i3 += -48 + s.charAt(j3);
                        j3 = i7;
                    }
                } else
                {
                    i3 = l6;
                    j3 = k6;
                }
            }
            if (true) goto _L15; else goto _L14
_L14:
        }

        public void a(StringBuffer stringbuffer, long l1, Chronology chronology, int i1, DateTimeZone datetimezone, Locale locale)
        {
            if (datetimezone != null)
            {
                if (i1 == 0 && a != null)
                {
                    stringbuffer.append(a);
                    return;
                }
                int j1;
                if (i1 >= 0)
                {
                    stringbuffer.append('+');
                } else
                {
                    stringbuffer.append('-');
                    i1 = -i1;
                }
                j1 = i1 / 0x36ee80;
                FormatUtils.a(stringbuffer, j1, 2);
                if (e != 1)
                {
                    int k1 = i1 - j1 * 0x36ee80;
                    if (k1 != 0 || d > 1)
                    {
                        int i2 = k1 / 60000;
                        if (c)
                        {
                            stringbuffer.append(':');
                        }
                        FormatUtils.a(stringbuffer, i2, 2);
                        if (e != 2)
                        {
                            int j2 = k1 - i2 * 60000;
                            if (j2 != 0 || d > 2)
                            {
                                int k2 = j2 / 1000;
                                if (c)
                                {
                                    stringbuffer.append(':');
                                }
                                FormatUtils.a(stringbuffer, k2, 2);
                                if (e != 3)
                                {
                                    int l2 = j2 - k2 * 1000;
                                    if (l2 != 0 || d > 3)
                                    {
                                        if (c)
                                        {
                                            stringbuffer.append('.');
                                        }
                                        FormatUtils.a(stringbuffer, l2, 3);
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

        TimeZoneOffset(String s, String s1, boolean flag, int i1, int j1)
        {
            int k1 = 4;
            super();
            a = s;
            b = s1;
            c = flag;
            if (i1 <= 0 || j1 < i1)
            {
                throw new IllegalArgumentException();
            }
            if (i1 > k1)
            {
                j1 = k1;
            } else
            {
                k1 = i1;
            }
            d = k1;
            e = j1;
        }
    }

    static class TwoDigitYear
        implements DateTimeParser, DateTimePrinter
    {

        private final DateTimeFieldType a;
        private final int b;
        private final boolean c;

        private int a(long l1, Chronology chronology)
        {
            int i1;
            int j1;
            try
            {
                i1 = a.a(chronology).a(l1);
            }
            catch (RuntimeException runtimeexception)
            {
                return -1;
            }
            if (i1 < 0)
            {
                i1 = -i1;
            }
            j1 = i1 % 100;
            return j1;
        }

        private int a(ReadablePartial readablepartial)
        {
            if (!readablepartial.b(a))
            {
                break MISSING_BLOCK_LABEL_41;
            }
            int i1 = readablepartial.a(a);
            if (i1 < 0)
            {
                i1 = -i1;
            }
            int j1 = i1 % 100;
            return j1;
            RuntimeException runtimeexception;
            runtimeexception;
            return -1;
        }

        public int a()
        {
            return 2;
        }

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i1)
        {
            int j1 = s.length() - i1;
            if (c) goto _L2; else goto _L1
_L1:
            if (Math.min(2, j1) < 2)
            {
                return ~i1;
            }
              goto _L3
_L2:
            int k1;
            boolean flag;
            boolean flag1;
            k1 = 0;
            flag = false;
            flag1 = false;
            int l1 = j1;
label0:
            do
            {
label1:
                {
                    if (k1 < l1)
                    {
                        char c4 = s.charAt(i1 + k1);
                        if (k1 == 0 && (c4 == '-' || c4 == '+'))
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
                                k1++;
                                flag = flag2;
                                flag1 = true;
                            } else
                            {
                                i1++;
                                int k5 = l1 - 1;
                                flag1 = true;
                                l1 = k5;
                                flag = flag2;
                            }
                            continue;
                        }
                        if (c4 >= '0' && c4 <= '9')
                        {
                            break label1;
                        }
                    }
                    if (k1 == 0)
                    {
                        return ~i1;
                    }
                    break label0;
                }
                k1++;
            } while (true);
            if (!flag1 && k1 == 2) goto _L3; else goto _L4
_L4:
            if (k1 < 9) goto _L6; else goto _L5
_L5:
            int l2;
            int i3;
            l2 = i1 + k1;
            i3 = Integer.parseInt(s.substring(i1, l2));
_L7:
            datetimeparserbucket.a(a, i3);
            return l2;
_L6:
            int i2;
            int j2;
            char c1;
            int k2;
            char c2;
            int i4;
            char c3;
            int j4;
            int k4;
            int l4;
            int i5;
            byte byte0;
            int j5;
            if (flag)
            {
                i2 = i1 + 1;
            } else
            {
                i2 = i1;
            }
            j2 = i2 + 1;
            try
            {
                c1 = s.charAt(i2);
            }
            catch (StringIndexOutOfBoundsException stringindexoutofboundsexception)
            {
                return ~i1;
            }
            k2 = c1 - 48;
            l2 = i1 + k1;
            i3 = k2;
            int l3;
            for (int j3 = j2; j3 < l2; j3 = l3)
            {
                int k3 = (i3 << 3) + (i3 << 1);
                l3 = j3 + 1;
                i3 = -48 + (k3 + s.charAt(j3));
            }

            if (flag)
            {
                i3 = -i3;
            }
            if (true) goto _L7; else goto _L3
_L3:
            c2 = s.charAt(i1);
            if (c2 < '0' || c2 > '9')
            {
                return ~i1;
            }
            i4 = c2 - 48;
            c3 = s.charAt(i1 + 1);
            if (c3 < '0' || c3 > '9')
            {
                return ~i1;
            }
            j4 = -48 + (c3 + ((i4 << 3) + (i4 << 1)));
            k4 = b;
            if (datetimeparserbucket.e() != null)
            {
                k4 = datetimeparserbucket.e().intValue();
            }
            l4 = k4 - 50;
            if (l4 >= 0)
            {
                i5 = l4 % 100;
            } else
            {
                i5 = 99 + (l4 + 1) % 100;
            }
            byte0 = 0;
            if (j4 < i5)
            {
                byte0 = 100;
            }
            j5 = j4 + ((byte0 + l4) - i5);
            datetimeparserbucket.a(a, j5);
            return i1 + 2;
        }

        public void a(StringBuffer stringbuffer, long l1, Chronology chronology, int i1, DateTimeZone datetimezone, Locale locale)
        {
            int j1 = a(l1, chronology);
            if (j1 < 0)
            {
                stringbuffer.append('\uFFFD');
                stringbuffer.append('\uFFFD');
                return;
            } else
            {
                FormatUtils.a(stringbuffer, j1, 2);
                return;
            }
        }

        public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
        {
            int i1 = a(readablepartial);
            if (i1 < 0)
            {
                stringbuffer.append('\uFFFD');
                stringbuffer.append('\uFFFD');
                return;
            } else
            {
                FormatUtils.a(stringbuffer, i1, 2);
                return;
            }
        }

        public int b()
        {
            return !c ? 2 : 4;
        }

        TwoDigitYear(DateTimeFieldType datetimefieldtype, int i1, boolean flag)
        {
            a = datetimefieldtype;
            b = i1;
            c = flag;
        }
    }

    static class UnpaddedNumber extends NumberFormatter
    {

        public int a()
        {
            return b;
        }

        public void a(StringBuffer stringbuffer, long l1, Chronology chronology, int i1, DateTimeZone datetimezone, Locale locale)
        {
            try
            {
                FormatUtils.a(stringbuffer, a.a(chronology).a(l1));
                return;
            }
            catch (RuntimeException runtimeexception)
            {
                stringbuffer.append('\uFFFD');
            }
        }

        public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
        {
            if (readablepartial.b(a))
            {
                try
                {
                    FormatUtils.a(stringbuffer, readablepartial.a(a));
                    return;
                }
                catch (RuntimeException runtimeexception)
                {
                    stringbuffer.append('\uFFFD');
                }
                return;
            } else
            {
                stringbuffer.append('\uFFFD');
                return;
            }
        }

        protected UnpaddedNumber(DateTimeFieldType datetimefieldtype, int i1, boolean flag)
        {
            super(datetimefieldtype, i1, flag);
        }
    }


    private ArrayList a;
    private Object b;

    public DateTimeFormatterBuilder()
    {
        a = new ArrayList();
    }

    private DateTimeFormatterBuilder a(Object obj)
    {
        b = null;
        a.add(obj);
        a.add(obj);
        return this;
    }

    private DateTimeFormatterBuilder a(DateTimePrinter datetimeprinter, DateTimeParser datetimeparser)
    {
        b = null;
        a.add(datetimeprinter);
        a.add(datetimeparser);
        return this;
    }

    static void a(Writer writer, int i1)
    {
        while (--i1 >= 0) 
        {
            writer.write(65533);
        }
    }

    static void a(StringBuffer stringbuffer, int i1)
    {
        while (--i1 >= 0) 
        {
            stringbuffer.append('\uFFFD');
        }
    }

    private void a(DateTimePrinter datetimeprinter)
    {
        if (datetimeprinter == null)
        {
            throw new IllegalArgumentException("No printer supplied");
        } else
        {
            return;
        }
    }

    private boolean b(Object obj)
    {
        if (obj instanceof DateTimePrinter)
        {
            if (obj instanceof Composite)
            {
                return ((Composite)obj).c();
            } else
            {
                return true;
            }
        } else
        {
            return false;
        }
    }

    private void c(DateTimeParser datetimeparser)
    {
        if (datetimeparser == null)
        {
            throw new IllegalArgumentException("No parser supplied");
        } else
        {
            return;
        }
    }

    private boolean c(Object obj)
    {
        if (obj instanceof DateTimeParser)
        {
            if (obj instanceof Composite)
            {
                return ((Composite)obj).d();
            } else
            {
                return true;
            }
        } else
        {
            return false;
        }
    }

    private boolean d(Object obj)
    {
        return b(obj) || c(obj);
    }

    private Object l()
    {
        Object obj = b;
        if (obj == null)
        {
            if (a.size() == 2)
            {
                Object obj1 = a.get(0);
                Object obj2 = a.get(1);
                if (obj1 != null)
                {
                    if (obj1 == obj2 || obj2 == null)
                    {
                        obj = obj1;
                    }
                } else
                {
                    obj = obj2;
                }
            }
            if (obj == null)
            {
                obj = new Composite(a);
            }
            b = obj;
        }
        return obj;
    }

    public DateTimeFormatter a()
    {
        Object obj = l();
        DateTimePrinter datetimeprinter;
        DateTimeParser datetimeparser;
        if (b(obj))
        {
            datetimeprinter = (DateTimePrinter)obj;
        } else
        {
            datetimeprinter = null;
        }
        if (c(obj))
        {
            datetimeparser = (DateTimeParser)obj;
        } else
        {
            datetimeparser = null;
        }
        if (datetimeprinter != null || datetimeparser != null)
        {
            return new DateTimeFormatter(datetimeprinter, datetimeparser);
        } else
        {
            throw new UnsupportedOperationException("Both printing and parsing not supported");
        }
    }

    public DateTimeFormatterBuilder a(char c1)
    {
        return a(new CharacterLiteral(c1));
    }

    public DateTimeFormatterBuilder a(int i1)
    {
        return a(DateTimeFieldType.a(), i1, 3);
    }

    public DateTimeFormatterBuilder a(int i1, int j1)
    {
        return c(DateTimeFieldType.d(), i1, j1);
    }

    public DateTimeFormatterBuilder a(int i1, boolean flag)
    {
        return a(new TwoDigitYear(DateTimeFieldType.s(), i1, flag));
    }

    public DateTimeFormatterBuilder a(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Literal must not be null");
        }
        switch (s.length())
        {
        default:
            this = a(new StringLiteral(s));
            // fall through

        case 0: // '\0'
            return this;

        case 1: // '\001'
            return a(new CharacterLiteral(s.charAt(0)));
        }
    }

    public DateTimeFormatterBuilder a(String s, String s1, boolean flag, int i1, int j1)
    {
        return a(new TimeZoneOffset(s, s1, flag, i1, j1));
    }

    public DateTimeFormatterBuilder a(String s, boolean flag, int i1, int j1)
    {
        return a(new TimeZoneOffset(s, s, flag, i1, j1));
    }

    public DateTimeFormatterBuilder a(Map map)
    {
        TimeZoneName timezonename = new TimeZoneName(1, map);
        return a(((DateTimePrinter) (timezonename)), ((DateTimeParser) (timezonename)));
    }

    public DateTimeFormatterBuilder a(DateTimeFieldType datetimefieldtype)
    {
        if (datetimefieldtype == null)
        {
            throw new IllegalArgumentException("Field type must not be null");
        } else
        {
            return a(new TextField(datetimefieldtype, false));
        }
    }

    public DateTimeFormatterBuilder a(DateTimeFieldType datetimefieldtype, int i1)
    {
        if (datetimefieldtype == null)
        {
            throw new IllegalArgumentException("Field type must not be null");
        }
        if (i1 <= 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Illegal number of digits: ").append(i1).toString());
        } else
        {
            return a(new FixedNumber(datetimefieldtype, i1, false));
        }
    }

    public DateTimeFormatterBuilder a(DateTimeFieldType datetimefieldtype, int i1, int j1)
    {
        if (datetimefieldtype == null)
        {
            throw new IllegalArgumentException("Field type must not be null");
        }
        if (j1 < i1)
        {
            j1 = i1;
        }
        if (i1 < 0 || j1 <= 0)
        {
            throw new IllegalArgumentException();
        }
        if (i1 <= 1)
        {
            return a(new UnpaddedNumber(datetimefieldtype, j1, false));
        } else
        {
            return a(new PaddedNumber(datetimefieldtype, j1, false, i1));
        }
    }

    public DateTimeFormatterBuilder a(DateTimeFormatter datetimeformatter)
    {
        if (datetimeformatter == null)
        {
            throw new IllegalArgumentException("No formatter supplied");
        } else
        {
            return a(datetimeformatter.a(), datetimeformatter.b());
        }
    }

    public DateTimeFormatterBuilder a(DateTimeParser datetimeparser)
    {
        c(datetimeparser);
        return a(((DateTimePrinter) (null)), datetimeparser);
    }

    public DateTimeFormatterBuilder a(DateTimePrinter datetimeprinter, DateTimeParser adatetimeparser[])
    {
        int i1 = 0;
        if (datetimeprinter != null)
        {
            a(datetimeprinter);
        }
        if (adatetimeparser == null)
        {
            throw new IllegalArgumentException("No parsers supplied");
        }
        int j1 = adatetimeparser.length;
        if (j1 == 1)
        {
            if (adatetimeparser[0] == null)
            {
                throw new IllegalArgumentException("No parser supplied");
            } else
            {
                return a(datetimeprinter, adatetimeparser[0]);
            }
        }
        DateTimeParser adatetimeparser1[] = new DateTimeParser[j1];
        for (; i1 < j1 - 1; i1++)
        {
            DateTimeParser datetimeparser = adatetimeparser[i1];
            adatetimeparser1[i1] = datetimeparser;
            if (datetimeparser == null)
            {
                throw new IllegalArgumentException("Incomplete parser array");
            }
        }

        adatetimeparser1[i1] = adatetimeparser[i1];
        return a(datetimeprinter, ((DateTimeParser) (new MatchingParser(adatetimeparser1))));
    }

    public DateTimeFormatterBuilder b(int i1)
    {
        return a(DateTimeFieldType.c(), i1, 2);
    }

    public DateTimeFormatterBuilder b(int i1, int j1)
    {
        return c(DateTimeFieldType.f(), i1, j1);
    }

    public DateTimeFormatterBuilder b(int i1, boolean flag)
    {
        return a(new TwoDigitYear(DateTimeFieldType.p(), i1, flag));
    }

    public DateTimeFormatterBuilder b(DateTimeFieldType datetimefieldtype)
    {
        if (datetimefieldtype == null)
        {
            throw new IllegalArgumentException("Field type must not be null");
        } else
        {
            return a(new TextField(datetimefieldtype, true));
        }
    }

    public DateTimeFormatterBuilder b(DateTimeFieldType datetimefieldtype, int i1, int j1)
    {
        if (datetimefieldtype == null)
        {
            throw new IllegalArgumentException("Field type must not be null");
        }
        if (j1 < i1)
        {
            j1 = i1;
        }
        if (i1 < 0 || j1 <= 0)
        {
            throw new IllegalArgumentException();
        }
        if (i1 <= 1)
        {
            return a(new UnpaddedNumber(datetimefieldtype, j1, true));
        } else
        {
            return a(new PaddedNumber(datetimefieldtype, j1, true, i1));
        }
    }

    public DateTimeFormatterBuilder b(DateTimeParser datetimeparser)
    {
        c(datetimeparser);
        return a(((DateTimePrinter) (null)), new MatchingParser(new DateTimeParser[] {
            datetimeparser, null
        }));
    }

    public DateTimeParser b()
    {
        Object obj = l();
        if (c(obj))
        {
            return (DateTimeParser)obj;
        } else
        {
            throw new UnsupportedOperationException("Parsing is not supported");
        }
    }

    public DateTimeFormatterBuilder c(int i1)
    {
        return a(DateTimeFieldType.e(), i1, 2);
    }

    public DateTimeFormatterBuilder c(int i1, int j1)
    {
        return c(DateTimeFieldType.g(), i1, j1);
    }

    public DateTimeFormatterBuilder c(DateTimeFieldType datetimefieldtype, int i1, int j1)
    {
        if (datetimefieldtype == null)
        {
            throw new IllegalArgumentException("Field type must not be null");
        }
        if (j1 < i1)
        {
            j1 = i1;
        }
        if (i1 < 0 || j1 <= 0)
        {
            throw new IllegalArgumentException();
        } else
        {
            return a(new Fraction(datetimefieldtype, i1, j1));
        }
    }

    public boolean c()
    {
        return d(l());
    }

    public DateTimeFormatterBuilder d()
    {
        return a(DateTimeFieldType.k());
    }

    public DateTimeFormatterBuilder d(int i1)
    {
        return a(DateTimeFieldType.g(), i1, 2);
    }

    public DateTimeFormatterBuilder d(int i1, int j1)
    {
        return b(DateTimeFieldType.p(), i1, j1);
    }

    public DateTimeFormatterBuilder e()
    {
        return a(DateTimeFieldType.l());
    }

    public DateTimeFormatterBuilder e(int i1)
    {
        return a(DateTimeFieldType.h(), i1, 2);
    }

    public DateTimeFormatterBuilder e(int i1, int j1)
    {
        return b(DateTimeFieldType.s(), i1, j1);
    }

    public DateTimeFormatterBuilder f()
    {
        return b(DateTimeFieldType.l());
    }

    public DateTimeFormatterBuilder f(int i1)
    {
        return a(DateTimeFieldType.i(), i1, 2);
    }

    public DateTimeFormatterBuilder f(int i1, int j1)
    {
        return a(DateTimeFieldType.t(), i1, j1);
    }

    public DateTimeFormatterBuilder g()
    {
        return a(DateTimeFieldType.r());
    }

    public DateTimeFormatterBuilder g(int i1)
    {
        return a(DateTimeFieldType.j(), i1, 2);
    }

    public DateTimeFormatterBuilder g(int i1, int j1)
    {
        return b(DateTimeFieldType.v(), i1, j1);
    }

    public DateTimeFormatterBuilder h()
    {
        return b(DateTimeFieldType.r());
    }

    public DateTimeFormatterBuilder h(int i1)
    {
        return a(DateTimeFieldType.l(), i1, 1);
    }

    public DateTimeFormatterBuilder i()
    {
        return a(DateTimeFieldType.w());
    }

    public DateTimeFormatterBuilder i(int i1)
    {
        return a(DateTimeFieldType.m(), i1, 2);
    }

    public DateTimeFormatterBuilder j()
    {
        return a(new TimeZoneName(0, null), ((DateTimeParser) (null)));
    }

    public DateTimeFormatterBuilder j(int i1)
    {
        return a(DateTimeFieldType.n(), i1, 3);
    }

    public DateTimeFormatterBuilder k()
    {
        return a(TimeZoneId.a, TimeZoneId.a);
    }

    public DateTimeFormatterBuilder k(int i1)
    {
        return a(DateTimeFieldType.o(), i1, 2);
    }

    public DateTimeFormatterBuilder l(int i1)
    {
        return a(DateTimeFieldType.r(), i1, 2);
    }
}
