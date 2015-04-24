// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.format:
//            DateTimeFormatter, DateTimeFormatterBuilder, DateTimeParser, DateTimePrinter, 
//            DateTimeParserBucket

public class DateTimeFormat
{
    static class StyleFormatter
        implements DateTimeParser, DateTimePrinter
    {

        private static final Map a = new HashMap();
        private final int b;
        private final int c;
        private final int d;

        private DateTimeFormatter b(Locale locale)
        {
            String s;
            if (locale == null)
            {
                locale = Locale.getDefault();
            }
            s = (new StringBuilder()).append(Integer.toString(d + (b << 4) + (c << 8))).append(locale.toString()).toString();
            Map map = a;
            map;
            JVM INSTR monitorenter ;
            DateTimeFormatter datetimeformatter = (DateTimeFormatter)a.get(s);
            if (datetimeformatter != null)
            {
                break MISSING_BLOCK_LABEL_98;
            }
            datetimeformatter = DateTimeFormat.a(a(locale));
            a.put(s, datetimeformatter);
            map;
            JVM INSTR monitorexit ;
            return datetimeformatter;
            Exception exception;
            exception;
            map;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public int a()
        {
            return 40;
        }

        public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
        {
            return b(datetimeparserbucket.b()).b().a(datetimeparserbucket, s, i);
        }

        String a(Locale locale)
        {
            int i;
            DateFormat dateformat;
            i = d;
            dateformat = null;
            i;
            JVM INSTR tableswitch 0 2: default 36
        //                       0 70
        //                       1 82
        //                       2 94;
               goto _L1 _L2 _L3 _L4
_L1:
            break; /* Loop/switch isn't completed */
_L4:
            break MISSING_BLOCK_LABEL_94;
_L5:
            if (!(dateformat instanceof SimpleDateFormat))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("No datetime pattern for locale: ").append(locale).toString());
            } else
            {
                return ((SimpleDateFormat)dateformat).toPattern();
            }
_L2:
            dateformat = DateFormat.getDateInstance(b, locale);
              goto _L5
_L3:
            dateformat = DateFormat.getTimeInstance(c, locale);
              goto _L5
            dateformat = DateFormat.getDateTimeInstance(b, c, locale);
              goto _L5
        }

        public void a(StringBuffer stringbuffer, long l, Chronology chronology, int i, DateTimeZone datetimezone, Locale locale)
        {
            b(locale).a().a(stringbuffer, l, chronology, i, datetimezone, locale);
        }

        public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
        {
            b(locale).a().a(stringbuffer, readablepartial, locale);
        }

        public int b()
        {
            return 40;
        }

    }


    private static final Map a = new LinkedHashMap(7) {

        protected boolean removeEldestEntry(java.util.Map.Entry entry)
        {
            return size() > 500;
        }

    };
    private static final DateTimeFormatter b[] = new DateTimeFormatter[25];

    protected DateTimeFormat()
    {
    }

    private static String a(String s, int ai[])
    {
        StringBuilder stringbuilder;
        int i;
        int j;
        char c1;
        stringbuilder = new StringBuilder();
        i = ai[0];
        j = s.length();
        c1 = s.charAt(i);
        if ((c1 < 'A' || c1 > 'Z') && (c1 < 'a' || c1 > 'z')) goto _L2; else goto _L1
_L1:
        stringbuilder.append(c1);
        for (; i + 1 < j && s.charAt(i + 1) == c1; i++)
        {
            stringbuilder.append(c1);
        }

          goto _L3
_L2:
        boolean flag;
        stringbuilder.append('\'');
        flag = false;
_L7:
        if (i >= j) goto _L3; else goto _L4
_L4:
        char c2 = s.charAt(i);
        if (c2 != '\'') goto _L6; else goto _L5
_L5:
        if (i + 1 < j && s.charAt(i + 1) == '\'')
        {
            i++;
            stringbuilder.append(c2);
        } else
        if (!flag)
        {
            flag = true;
        } else
        {
            flag = false;
        }
_L8:
        i++;
          goto _L7
_L6:
        if (flag || (c2 < 'A' || c2 > 'Z') && (c2 < 'a' || c2 > 'z'))
        {
            break MISSING_BLOCK_LABEL_221;
        }
        i--;
_L3:
        ai[0] = i;
        return stringbuilder.toString();
        stringbuilder.append(c2);
          goto _L8
    }

    public static DateTimeFormatter a(String s)
    {
        return c(s);
    }

    private static void a(DateTimeFormatterBuilder datetimeformatterbuilder, String s)
    {
        int i;
        int ai[];
        int j;
        i = s.length();
        ai = new int[1];
        j = 0;
_L23:
        String s1;
        int k;
        int l;
        char c1;
label0:
        {
            if (j < i)
            {
                ai[0] = j;
                s1 = a(s, ai);
                k = ai[0];
                l = s1.length();
                if (l != 0)
                {
                    break label0;
                }
            }
            return;
        }
        c1 = s1.charAt(0);
        c1;
        JVM INSTR lookupswitch 22: default 244
    //                   39: 778
    //                   67: 286
    //                   68: 687
    //                   69: 665
    //                   71: 272
    //                   72: 593
    //                   75: 613
    //                   77: 527
    //                   83: 643
    //                   89: 298
    //                   90: 730
    //                   97: 575
    //                   100: 565
    //                   101: 655
    //                   104: 583
    //                   107: 603
    //                   109: 623
    //                   115: 633
    //                   119: 697
    //                   120: 298
    //                   121: 298
    //                   122: 707;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L11 _L11 _L21
_L2:
        break MISSING_BLOCK_LABEL_778;
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Illegal pattern component: ").append(s1).toString());
_L6:
        datetimeformatterbuilder.i();
_L24:
        j = k + 1;
        if (true) goto _L23; else goto _L22
_L22:
        datetimeformatterbuilder.g(l, l);
          goto _L24
_L11:
        if (l == 2)
        {
            boolean flag = true;
            if (k + 1 < i)
            {
                ai[0] = 1 + ai[0];
                if (b(a(s, ai)))
                {
                    flag = false;
                }
                ai[0] = -1 + ai[0];
            }
            switch (c1)
            {
            default:
                datetimeformatterbuilder.a(-30 + (new DateTime()).f(), flag);
                break;

            case 120: // 'x'
                datetimeformatterbuilder.b(-30 + (new DateTime()).g(), flag);
                break;
            }
        } else
        {
            int i1 = 9;
            if (k + 1 < i)
            {
                ai[0] = 1 + ai[0];
                if (b(a(s, ai)))
                {
                    i1 = l;
                }
                ai[0] = -1 + ai[0];
            }
            switch (c1)
            {
            case 89: // 'Y'
                datetimeformatterbuilder.f(l, i1);
                break;

            case 120: // 'x'
                datetimeformatterbuilder.d(l, i1);
                break;

            case 121: // 'y'
                datetimeformatterbuilder.e(l, i1);
                break;
            }
        }
        if (true) goto _L24; else goto _L25
_L25:
_L9:
        if (l >= 3)
        {
            if (l >= 4)
            {
                datetimeformatterbuilder.g();
            } else
            {
                datetimeformatterbuilder.h();
            }
        } else
        {
            datetimeformatterbuilder.l(l);
        }
          goto _L24
_L14:
        datetimeformatterbuilder.i(l);
          goto _L24
_L13:
        datetimeformatterbuilder.d();
          goto _L24
_L16:
        datetimeformatterbuilder.g(l);
          goto _L24
_L7:
        datetimeformatterbuilder.d(l);
          goto _L24
_L17:
        datetimeformatterbuilder.e(l);
          goto _L24
_L8:
        datetimeformatterbuilder.f(l);
          goto _L24
_L18:
        datetimeformatterbuilder.c(l);
          goto _L24
_L19:
        datetimeformatterbuilder.b(l);
          goto _L24
_L10:
        datetimeformatterbuilder.a(l, l);
          goto _L24
_L15:
        datetimeformatterbuilder.h(l);
          goto _L24
_L5:
        if (l >= 4)
        {
            datetimeformatterbuilder.e();
        } else
        {
            datetimeformatterbuilder.f();
        }
          goto _L24
_L4:
        datetimeformatterbuilder.j(l);
          goto _L24
_L20:
        datetimeformatterbuilder.k(l);
          goto _L24
_L21:
        if (l >= 4)
        {
            datetimeformatterbuilder.j();
        } else
        {
            datetimeformatterbuilder.a(null);
        }
          goto _L24
_L12:
        if (l == 1)
        {
            datetimeformatterbuilder.a(null, "Z", false, 2, 2);
        } else
        if (l == 2)
        {
            datetimeformatterbuilder.a(null, "Z", true, 2, 2);
        } else
        {
            datetimeformatterbuilder.k();
        }
          goto _L24
        String s2 = s1.substring(1);
        if (s2.length() == 1)
        {
            datetimeformatterbuilder.a(s2.charAt(0));
        } else
        {
            datetimeformatterbuilder.a(new String(s2));
        }
          goto _L24
    }

    private static boolean b(String s)
    {
        boolean flag;
        int i;
        flag = true;
        i = s.length();
        if (i <= 0) goto _L2; else goto _L1
_L1:
        s.charAt(0);
        JVM INSTR lookupswitch 19: default 180
    //                   67: 182
    //                   68: 182
    //                   70: 182
    //                   72: 182
    //                   75: 182
    //                   77: 184
    //                   83: 182
    //                   87: 182
    //                   89: 182
    //                   99: 182
    //                   100: 182
    //                   101: 182
    //                   104: 182
    //                   107: 182
    //                   109: 182
    //                   115: 182
    //                   119: 182
    //                   120: 182
    //                   121: 182;
           goto _L2 _L3 _L3 _L3 _L3 _L3 _L4 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3
_L2:
        flag = false;
_L3:
        return flag;
_L4:
        if (i <= 2)
        {
            return flag;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    private static DateTimeFormatter c(String s)
    {
        if (s == null || s.length() == 0)
        {
            throw new IllegalArgumentException("Invalid pattern specification");
        }
        Map map = a;
        map;
        JVM INSTR monitorenter ;
        DateTimeFormatter datetimeformatter = (DateTimeFormatter)a.get(s);
        if (datetimeformatter != null)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        DateTimeFormatterBuilder datetimeformatterbuilder = new DateTimeFormatterBuilder();
        a(datetimeformatterbuilder, s);
        datetimeformatter = datetimeformatterbuilder.a();
        a.put(s, datetimeformatter);
        map;
        JVM INSTR monitorexit ;
        return datetimeformatter;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
