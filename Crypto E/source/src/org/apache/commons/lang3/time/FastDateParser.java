// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package org.apache.commons.lang3.time:
//            DateParser

public class FastDateParser
    implements Serializable, DateParser
{
    static class CopyQuotedStrategy extends Strategy
    {

        private final String formatField;

        boolean addRegex(FastDateParser fastdateparser, StringBuilder stringbuilder)
        {
            FastDateParser.escapeRegex(stringbuilder, formatField, true);
            return false;
        }

        boolean isNumber()
        {
            char c = formatField.charAt(0);
            if (c == '\'')
            {
                c = formatField.charAt(1);
            }
            return Character.isDigit(c);
        }

        CopyQuotedStrategy(String s)
        {
            formatField = s;
        }
    }

    static class NumberStrategy extends Strategy
    {

        private final int field;

        boolean addRegex(FastDateParser fastdateparser, StringBuilder stringbuilder)
        {
            if (fastdateparser.isNextNumber())
            {
                stringbuilder.append("(\\p{Nd}{").append(fastdateparser.getFieldWidth()).append("}+)");
            } else
            {
                stringbuilder.append("(\\p{Nd}++)");
            }
            return true;
        }

        boolean isNumber()
        {
            return true;
        }

        int modify(int i)
        {
            return i;
        }

        void setCalendar(FastDateParser fastdateparser, Calendar calendar, String s)
        {
            calendar.set(field, modify(Integer.parseInt(s)));
        }

        NumberStrategy(int i)
        {
            field = i;
        }
    }

    static abstract class Strategy
    {

        abstract boolean addRegex(FastDateParser fastdateparser, StringBuilder stringbuilder);

        boolean isNumber()
        {
            return false;
        }

        void setCalendar(FastDateParser fastdateparser, Calendar calendar, String s)
        {
        }

        private Strategy()
        {
        }

    }

    static class TextStrategy extends Strategy
    {

        private final int field;
        private final Map keyValues;

        boolean addRegex(FastDateParser fastdateparser, StringBuilder stringbuilder)
        {
            stringbuilder.append('(');
            for (Iterator iterator = keyValues.keySet().iterator(); iterator.hasNext(); FastDateParser.escapeRegex(stringbuilder, (String)iterator.next(), false).append('|')) { }
            stringbuilder.setCharAt(-1 + stringbuilder.length(), ')');
            return true;
        }

        void setCalendar(FastDateParser fastdateparser, Calendar calendar, String s)
        {
            Integer integer = (Integer)keyValues.get(s);
            if (integer == null)
            {
                StringBuilder stringbuilder = new StringBuilder(s);
                stringbuilder.append(" not in (");
                for (Iterator iterator = keyValues.keySet().iterator(); iterator.hasNext(); stringbuilder.append((String)iterator.next()).append(' ')) { }
                stringbuilder.setCharAt(-1 + stringbuilder.length(), ')');
                throw new IllegalArgumentException(stringbuilder.toString());
            } else
            {
                calendar.set(field, integer.intValue());
                return;
            }
        }

        TextStrategy(int i, Calendar calendar, Locale locale1)
        {
            field = i;
            keyValues = FastDateParser.getDisplayNames(i, calendar, locale1);
        }
    }

    static class TimeZoneStrategy extends Strategy
    {

        private static final int ID = 0;
        private static final int LONG_DST = 3;
        private static final int LONG_STD = 1;
        private static final int SHORT_DST = 4;
        private static final int SHORT_STD = 2;
        private final SortedMap tzNames;
        private final String validTimeZoneChars;

        boolean addRegex(FastDateParser fastdateparser, StringBuilder stringbuilder)
        {
            stringbuilder.append(validTimeZoneChars);
            return true;
        }

        void setCalendar(FastDateParser fastdateparser, Calendar calendar, String s)
        {
            if (s.charAt(0) != '+' && s.charAt(0) != '-') goto _L2; else goto _L1
_L1:
            TimeZone timezone = TimeZone.getTimeZone((new StringBuilder()).append("GMT").append(s).toString());
_L4:
            calendar.setTimeZone(timezone);
            return;
_L2:
            if (!s.startsWith("GMT"))
            {
                break; /* Loop/switch isn't completed */
            }
            timezone = TimeZone.getTimeZone(s);
            if (true) goto _L4; else goto _L3
_L3:
            timezone = (TimeZone)tzNames.get(s);
            if (timezone == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append(s).append(" is not a supported timezone name").toString());
            }
            if (true) goto _L4; else goto _L5
_L5:
        }

        TimeZoneStrategy(Locale locale1)
        {
            tzNames = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            String as[][] = DateFormatSymbols.getInstance(locale1).getZoneStrings();
            int i = as.length;
            int j = 0;
            while (j < i) 
            {
                String as1[] = as[j];
                if (!as1[0].startsWith("GMT"))
                {
                    TimeZone timezone = TimeZone.getTimeZone(as1[0]);
                    if (!tzNames.containsKey(as1[1]))
                    {
                        tzNames.put(as1[1], timezone);
                    }
                    if (!tzNames.containsKey(as1[2]))
                    {
                        tzNames.put(as1[2], timezone);
                    }
                    if (timezone.useDaylightTime())
                    {
                        if (!tzNames.containsKey(as1[3]))
                        {
                            tzNames.put(as1[3], timezone);
                        }
                        if (!tzNames.containsKey(as1[4]))
                        {
                            tzNames.put(as1[4], timezone);
                        }
                    }
                }
                j++;
            }
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("(GMT[+\\-]\\d{0,1}\\d{2}|[+\\-]\\d{2}:?\\d{2}|");
            for (Iterator iterator = tzNames.keySet().iterator(); iterator.hasNext(); FastDateParser.escapeRegex(stringbuilder, (String)iterator.next(), false).append('|')) { }
            stringbuilder.setCharAt(-1 + stringbuilder.length(), ')');
            validTimeZoneChars = stringbuilder.toString();
        }
    }


    private static final Strategy ABBREVIATED_YEAR_STRATEGY = new NumberStrategy(1) {

        void setCalendar(FastDateParser fastdateparser, Calendar calendar, String s)
        {
            int i = Integer.parseInt(s);
            if (i < 100)
            {
                i = fastdateparser.adjustYear(i);
            }
            calendar.set(1, i);
        }

    };
    private static final Strategy DAY_OF_MONTH_STRATEGY = new NumberStrategy(5);
    private static final Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY = new NumberStrategy(8);
    private static final Strategy DAY_OF_YEAR_STRATEGY = new NumberStrategy(6);
    private static final Strategy HOUR_OF_DAY_STRATEGY = new NumberStrategy(11);
    private static final Strategy HOUR_STRATEGY = new NumberStrategy(10);
    static final Locale JAPANESE_IMPERIAL = new Locale("ja", "JP", "JP");
    private static final Strategy LITERAL_YEAR_STRATEGY = new NumberStrategy(1);
    private static final Strategy MILLISECOND_STRATEGY = new NumberStrategy(14);
    private static final Strategy MINUTE_STRATEGY = new NumberStrategy(12);
    private static final Strategy MODULO_HOUR_OF_DAY_STRATEGY = new NumberStrategy(11) {

        int modify(int i)
        {
            return i % 24;
        }

    };
    private static final Strategy MODULO_HOUR_STRATEGY = new NumberStrategy(10) {

        int modify(int i)
        {
            return i % 12;
        }

    };
    private static final Strategy NUMBER_MONTH_STRATEGY = new NumberStrategy(2) {

        int modify(int i)
        {
            return i - 1;
        }

    };
    private static final Strategy SECOND_STRATEGY = new NumberStrategy(13);
    private static final Strategy WEEK_OF_MONTH_STRATEGY = new NumberStrategy(4);
    private static final Strategy WEEK_OF_YEAR_STRATEGY = new NumberStrategy(3);
    private static final ConcurrentMap caches[] = new ConcurrentMap[17];
    private static final Pattern formatPattern = Pattern.compile("D+|E+|F+|G+|H+|K+|M+|S+|W+|Z+|a+|d+|h+|k+|m+|s+|w+|y+|z+|''|'[^']++(''[^']*+)*+'|[^'A-Za-z]++");
    private static final long serialVersionUID = 2L;
    private final int century;
    private transient String currentFormatField;
    private final Locale locale;
    private transient Strategy nextStrategy;
    private transient Pattern parsePattern;
    private final String pattern;
    private final int startYear;
    private transient Strategy strategies[];
    private final TimeZone timeZone;

    protected FastDateParser(String s, TimeZone timezone, Locale locale1)
    {
        this(s, timezone, locale1, null);
    }

    protected FastDateParser(String s, TimeZone timezone, Locale locale1, Date date)
    {
        pattern = s;
        timeZone = timezone;
        locale = locale1;
        Calendar calendar = Calendar.getInstance(timezone, locale1);
        int i;
        if (date != null)
        {
            calendar.setTime(date);
            i = calendar.get(1);
        } else
        if (locale1.equals(JAPANESE_IMPERIAL))
        {
            i = 0;
        } else
        {
            calendar.setTime(new Date());
            i = -80 + calendar.get(1);
        }
        century = 100 * (i / 100);
        startYear = i - century;
        init(calendar);
    }

    private int adjustYear(int i)
    {
        int j = i + century;
        if (i >= startYear)
        {
            return j;
        } else
        {
            return j + 100;
        }
    }

    private static StringBuilder escapeRegex(StringBuilder stringbuilder, String s, boolean flag)
    {
        int i;
        stringbuilder.append("\\Q");
        i = 0;
_L7:
        char c;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_178;
        }
        c = s.charAt(i);
        c;
        JVM INSTR lookupswitch 2: default 56
    //                   39: 80
    //                   92: 112;
           goto _L1 _L2 _L3
_L3:
        break MISSING_BLOCK_LABEL_112;
_L1:
        char c1;
        int k;
        k = i;
        c1 = c;
_L5:
        stringbuilder.append(c1);
        i = k + 1;
        continue; /* Loop/switch isn't completed */
_L2:
        if (!flag) goto _L1; else goto _L4
_L4:
        k = i + 1;
        if (k == s.length())
        {
            return stringbuilder;
        }
        c1 = s.charAt(k);
          goto _L5
        int j = i + 1;
        if (j == s.length())
        {
            c1 = c;
            k = j;
        } else
        {
            stringbuilder.append(c);
            c1 = s.charAt(j);
            if (c1 == 'E')
            {
                stringbuilder.append("E\\\\E\\");
                c1 = 'Q';
                k = j;
            } else
            {
                k = j;
            }
        }
          goto _L5
        stringbuilder.append("\\E");
        return stringbuilder;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private static ConcurrentMap getCache(int i)
    {
        ConcurrentMap concurrentmap;
        synchronized (caches)
        {
            if (caches[i] == null)
            {
                caches[i] = new ConcurrentHashMap(3);
            }
            concurrentmap = caches[i];
        }
        return concurrentmap;
        exception;
        aconcurrentmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static Map getDisplayNames(int i, Calendar calendar, Locale locale1)
    {
        return calendar.getDisplayNames(i, 0, locale1);
    }

    private Strategy getLocaleSpecificStrategy(int i, Calendar calendar)
    {
        ConcurrentMap concurrentmap = getCache(i);
        Strategy strategy = (Strategy)concurrentmap.get(locale);
        Object obj;
        if (strategy == null)
        {
            Strategy strategy1;
            if (i == 15)
            {
                obj = new TimeZoneStrategy(locale);
            } else
            {
                obj = new TextStrategy(i, calendar, locale);
            }
            strategy1 = (Strategy)concurrentmap.putIfAbsent(locale, obj);
            if (strategy1 != null)
            {
                return strategy1;
            }
        } else
        {
            obj = strategy;
        }
        return ((Strategy) (obj));
    }

    private Strategy getStrategy(String s, Calendar calendar)
    {
        s.charAt(0);
        JVM INSTR lookupswitch 20: default 176
    //                   39: 185
    //                   68: 212
    //                   69: 216
    //                   70: 224
    //                   71: 228
    //                   72: 235
    //                   75: 239
    //                   77: 243
    //                   83: 262
    //                   87: 266
    //                   90: 318
    //                   97: 270
    //                   100: 278
    //                   104: 282
    //                   107: 286
    //                   109: 290
    //                   115: 294
    //                   119: 298
    //                   121: 302
    //                   122: 318;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L12
_L1:
        return new CopyQuotedStrategy(s);
_L2:
        if (s.length() > 2)
        {
            return new CopyQuotedStrategy(s.substring(1, -1 + s.length()));
        }
          goto _L1
_L3:
        return DAY_OF_YEAR_STRATEGY;
_L4:
        return getLocaleSpecificStrategy(7, calendar);
_L5:
        return DAY_OF_WEEK_IN_MONTH_STRATEGY;
_L6:
        return getLocaleSpecificStrategy(0, calendar);
_L7:
        return MODULO_HOUR_OF_DAY_STRATEGY;
_L8:
        return HOUR_STRATEGY;
_L9:
        if (s.length() >= 3)
        {
            return getLocaleSpecificStrategy(2, calendar);
        } else
        {
            return NUMBER_MONTH_STRATEGY;
        }
_L10:
        return MILLISECOND_STRATEGY;
_L11:
        return WEEK_OF_MONTH_STRATEGY;
_L13:
        return getLocaleSpecificStrategy(9, calendar);
_L14:
        return DAY_OF_MONTH_STRATEGY;
_L15:
        return MODULO_HOUR_STRATEGY;
_L16:
        return HOUR_OF_DAY_STRATEGY;
_L17:
        return MINUTE_STRATEGY;
_L18:
        return SECOND_STRATEGY;
_L19:
        return WEEK_OF_YEAR_STRATEGY;
_L20:
        if (s.length() > 2)
        {
            return LITERAL_YEAR_STRATEGY;
        } else
        {
            return ABBREVIATED_YEAR_STRATEGY;
        }
_L12:
        return getLocaleSpecificStrategy(15, calendar);
    }

    private void init(Calendar calendar)
    {
        StringBuilder stringbuilder = new StringBuilder();
        ArrayList arraylist = new ArrayList();
        Matcher matcher = formatPattern.matcher(pattern);
        if (!matcher.lookingAt())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Illegal pattern character '").append(pattern.charAt(matcher.regionStart())).append("'").toString());
        }
        currentFormatField = matcher.group();
        Strategy strategy = getStrategy(currentFormatField, calendar);
        do
        {
            matcher.region(matcher.end(), matcher.regionEnd());
            if (!matcher.lookingAt())
            {
                nextStrategy = null;
                if (matcher.regionStart() != matcher.regionEnd())
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Failed to parse \"").append(pattern).append("\" ; gave up at index ").append(matcher.regionStart()).toString());
                }
                break;
            }
            String s = matcher.group();
            nextStrategy = getStrategy(s, calendar);
            if (strategy.addRegex(this, stringbuilder))
            {
                arraylist.add(strategy);
            }
            currentFormatField = s;
            strategy = nextStrategy;
        } while (true);
        if (strategy.addRegex(this, stringbuilder))
        {
            arraylist.add(strategy);
        }
        currentFormatField = null;
        strategies = (Strategy[])arraylist.toArray(new Strategy[arraylist.size()]);
        parsePattern = Pattern.compile(stringbuilder.toString());
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        objectinputstream.defaultReadObject();
        init(Calendar.getInstance(timeZone, locale));
    }

    public boolean equals(Object obj)
    {
        FastDateParser fastdateparser;
        if (obj instanceof FastDateParser)
        {
            if (pattern.equals((fastdateparser = (FastDateParser)obj).pattern) && timeZone.equals(fastdateparser.timeZone) && locale.equals(fastdateparser.locale))
            {
                return true;
            }
        }
        return false;
    }

    int getFieldWidth()
    {
        return currentFormatField.length();
    }

    public Locale getLocale()
    {
        return locale;
    }

    Pattern getParsePattern()
    {
        return parsePattern;
    }

    public String getPattern()
    {
        return pattern;
    }

    public TimeZone getTimeZone()
    {
        return timeZone;
    }

    public int hashCode()
    {
        return pattern.hashCode() + 13 * (timeZone.hashCode() + 13 * locale.hashCode());
    }

    boolean isNextNumber()
    {
        return nextStrategy != null && nextStrategy.isNumber();
    }

    public Date parse(String s)
    {
        Date date = parse(s, new ParsePosition(0));
        if (date == null)
        {
            if (locale.equals(JAPANESE_IMPERIAL))
            {
                throw new ParseException((new StringBuilder()).append("(The ").append(locale).append(" locale does not support dates before 1868 AD)\n").append("Unparseable date: \"").append(s).append("\" does not match ").append(parsePattern.pattern()).toString(), 0);
            } else
            {
                throw new ParseException((new StringBuilder()).append("Unparseable date: \"").append(s).append("\" does not match ").append(parsePattern.pattern()).toString(), 0);
            }
        } else
        {
            return date;
        }
    }

    public Date parse(String s, ParsePosition parseposition)
    {
        int i = parseposition.getIndex();
        Matcher matcher = parsePattern.matcher(s.substring(i));
        if (!matcher.lookingAt())
        {
            return null;
        }
        Calendar calendar = Calendar.getInstance(timeZone, locale);
        calendar.clear();
        int k;
        for (int j = 0; j < strategies.length; j = k)
        {
            Strategy astrategy[] = strategies;
            k = j + 1;
            astrategy[j].setCalendar(this, calendar, matcher.group(k));
        }

        parseposition.setIndex(i + matcher.end());
        return calendar.getTime();
    }

    public Object parseObject(String s)
    {
        return parse(s);
    }

    public Object parseObject(String s, ParsePosition parseposition)
    {
        return parse(s, parseposition);
    }

    public String toString()
    {
        return (new StringBuilder()).append("FastDateParser[").append(pattern).append(",").append(locale).append(",").append(timeZone.getID()).append("]").toString();
    }




}
