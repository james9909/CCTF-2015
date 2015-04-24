// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;

public class DateUtils
{
    static class DateIterator
        implements Iterator
    {

        private final Calendar endFinal;
        private final Calendar spot;

        public boolean hasNext()
        {
            return spot.before(endFinal);
        }

        public volatile Object next()
        {
            return next();
        }

        public Calendar next()
        {
            if (spot.equals(endFinal))
            {
                throw new NoSuchElementException();
            } else
            {
                spot.add(5, 1);
                return (Calendar)spot.clone();
            }
        }

        public void remove()
        {
            throw new UnsupportedOperationException();
        }

        DateIterator(Calendar calendar, Calendar calendar1)
        {
            endFinal = calendar1;
            spot = calendar;
            spot.add(5, -1);
        }
    }


    public static final long MILLIS_PER_DAY = 0x5265c00L;
    public static final long MILLIS_PER_HOUR = 0x36ee80L;
    public static final long MILLIS_PER_MINUTE = 60000L;
    public static final long MILLIS_PER_SECOND = 1000L;
    private static final int MODIFY_CEILING = 2;
    private static final int MODIFY_ROUND = 1;
    private static final int MODIFY_TRUNCATE = 0;
    public static final int RANGE_MONTH_MONDAY = 6;
    public static final int RANGE_MONTH_SUNDAY = 5;
    public static final int RANGE_WEEK_CENTER = 4;
    public static final int RANGE_WEEK_MONDAY = 2;
    public static final int RANGE_WEEK_RELATIVE = 3;
    public static final int RANGE_WEEK_SUNDAY = 1;
    public static final int SEMI_MONTH = 1001;
    private static final int fields[][] = {
        {
            14
        }, {
            13
        }, {
            12
        }, {
            11, 10
        }, {
            5, 5, 9
        }, {
            2, 1001
        }, {
            1
        }, {
            0
        }
    };

    public DateUtils()
    {
    }

    private static Date add(Date date, int i, int j)
    {
        if (date == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        } else
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(i, j);
            return calendar.getTime();
        }
    }

    public static Date addDays(Date date, int i)
    {
        return add(date, 5, i);
    }

    public static Date addHours(Date date, int i)
    {
        return add(date, 11, i);
    }

    public static Date addMilliseconds(Date date, int i)
    {
        return add(date, 14, i);
    }

    public static Date addMinutes(Date date, int i)
    {
        return add(date, 12, i);
    }

    public static Date addMonths(Date date, int i)
    {
        return add(date, 2, i);
    }

    public static Date addSeconds(Date date, int i)
    {
        return add(date, 13, i);
    }

    public static Date addWeeks(Date date, int i)
    {
        return add(date, 3, i);
    }

    public static Date addYears(Date date, int i)
    {
        return add(date, 1, i);
    }

    public static Calendar ceiling(Calendar calendar, int i)
    {
        if (calendar == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        } else
        {
            Calendar calendar1 = (Calendar)calendar.clone();
            modify(calendar1, i, 2);
            return calendar1;
        }
    }

    public static Date ceiling(Object obj, int i)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date)
        {
            return ceiling((Date)obj, i);
        }
        if (obj instanceof Calendar)
        {
            return ceiling((Calendar)obj, i).getTime();
        } else
        {
            throw new ClassCastException((new StringBuilder()).append("Could not find ceiling of for type: ").append(obj.getClass()).toString());
        }
    }

    public static Date ceiling(Date date, int i)
    {
        if (date == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        } else
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            modify(calendar, i, 2);
            return calendar.getTime();
        }
    }

    private static long getFragment(Calendar calendar, int i, TimeUnit timeunit)
    {
        long l;
        int j;
        if (calendar == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        }
        l = 0L;
        if (timeunit == TimeUnit.DAYS)
        {
            j = 0;
        } else
        {
            j = 1;
        }
        i;
        JVM INSTR tableswitch 1 2: default 48
    //                   1 158
    //                   2 181;
           goto _L1 _L2 _L3
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_181;
_L4:
        switch (i)
        {
        case 3: // '\003'
        case 4: // '\004'
        case 7: // '\007'
        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("The fragment ").append(i).append(" is not supported").toString());

        case 1: // '\001'
        case 2: // '\002'
        case 5: // '\005'
        case 6: // '\006'
            l += timeunit.convert(calendar.get(11), TimeUnit.HOURS);
            // fall through

        case 11: // '\013'
            l += timeunit.convert(calendar.get(12), TimeUnit.MINUTES);
            // fall through

        case 12: // '\f'
            l += timeunit.convert(calendar.get(13), TimeUnit.SECONDS);
            // fall through

        case 13: // '\r'
            l += timeunit.convert(calendar.get(14), TimeUnit.MILLISECONDS);
            // fall through

        case 14: // '\016'
            return l;
        }
_L2:
        l += timeunit.convert(calendar.get(6) - j, TimeUnit.DAYS);
          goto _L4
        l += timeunit.convert(calendar.get(5) - j, TimeUnit.DAYS);
          goto _L4
    }

    private static long getFragment(Date date, int i, TimeUnit timeunit)
    {
        if (date == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        } else
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            return getFragment(calendar, i, timeunit);
        }
    }

    public static long getFragmentInDays(Calendar calendar, int i)
    {
        return getFragment(calendar, i, TimeUnit.DAYS);
    }

    public static long getFragmentInDays(Date date, int i)
    {
        return getFragment(date, i, TimeUnit.DAYS);
    }

    public static long getFragmentInHours(Calendar calendar, int i)
    {
        return getFragment(calendar, i, TimeUnit.HOURS);
    }

    public static long getFragmentInHours(Date date, int i)
    {
        return getFragment(date, i, TimeUnit.HOURS);
    }

    public static long getFragmentInMilliseconds(Calendar calendar, int i)
    {
        return getFragment(calendar, i, TimeUnit.MILLISECONDS);
    }

    public static long getFragmentInMilliseconds(Date date, int i)
    {
        return getFragment(date, i, TimeUnit.MILLISECONDS);
    }

    public static long getFragmentInMinutes(Calendar calendar, int i)
    {
        return getFragment(calendar, i, TimeUnit.MINUTES);
    }

    public static long getFragmentInMinutes(Date date, int i)
    {
        return getFragment(date, i, TimeUnit.MINUTES);
    }

    public static long getFragmentInSeconds(Calendar calendar, int i)
    {
        return getFragment(calendar, i, TimeUnit.SECONDS);
    }

    public static long getFragmentInSeconds(Date date, int i)
    {
        return getFragment(date, i, TimeUnit.SECONDS);
    }

    public static boolean isSameDay(Calendar calendar, Calendar calendar1)
    {
        if (calendar == null || calendar1 == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.get(0) == calendar1.get(0) && calendar.get(1) == calendar1.get(1) && calendar.get(6) == calendar1.get(6);
    }

    public static boolean isSameDay(Date date, Date date1)
    {
        if (date == null || date1 == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        } else
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            Calendar calendar1 = Calendar.getInstance();
            calendar1.setTime(date1);
            return isSameDay(calendar, calendar1);
        }
    }

    public static boolean isSameInstant(Calendar calendar, Calendar calendar1)
    {
        if (calendar == null || calendar1 == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.getTime().getTime() == calendar1.getTime().getTime();
    }

    public static boolean isSameInstant(Date date, Date date1)
    {
        if (date == null || date1 == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        }
        return date.getTime() == date1.getTime();
    }

    public static boolean isSameLocalTime(Calendar calendar, Calendar calendar1)
    {
        if (calendar == null || calendar1 == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.get(14) == calendar1.get(14) && calendar.get(13) == calendar1.get(13) && calendar.get(12) == calendar1.get(12) && calendar.get(11) == calendar1.get(11) && calendar.get(6) == calendar1.get(6) && calendar.get(1) == calendar1.get(1) && calendar.get(0) == calendar1.get(0) && calendar.getClass() == calendar1.getClass();
    }

    public static Iterator iterator(Object obj, int i)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date)
        {
            return iterator((Date)obj, i);
        }
        if (obj instanceof Calendar)
        {
            return iterator((Calendar)obj, i);
        } else
        {
            throw new ClassCastException((new StringBuilder()).append("Could not iterate based on ").append(obj).toString());
        }
    }

    public static Iterator iterator(Calendar calendar, int i)
    {
        int j = 2;
        if (calendar == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        }
        switch (i)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("The range style ").append(i).append(" is not valid.").toString());

        case 5: // '\005'
        case 6: // '\006'
            Calendar calendar3 = truncate(calendar, j);
            Calendar calendar4 = (Calendar)calendar3.clone();
            calendar4.add(j, 1);
            calendar4.add(5, -1);
            Calendar calendar1;
            Calendar calendar2;
            int k;
            if (i == 6)
            {
                calendar1 = calendar3;
                calendar2 = calendar4;
                k = 1;
            } else
            {
                j = 1;
                calendar1 = calendar3;
                calendar2 = calendar4;
                k = 7;
            }
            do
            {
                if (j < 1)
                {
                    j += 7;
                }
                if (j > 7)
                {
                    j -= 7;
                }
                if (k < 1)
                {
                    k += 7;
                }
                if (k > 7)
                {
                    k -= 7;
                }
                for (; calendar1.get(7) != j; calendar1.add(5, -1)) { }
                for (; calendar2.get(7) != k; calendar2.add(5, 1)) { }
                return new DateIterator(calendar1, calendar2);
            } while (true);

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
            calendar1 = truncate(calendar, 5);
            calendar2 = truncate(calendar, 5);
            switch (i)
            {
            default:
                k = 7;
                j = 1;
                break;

            case 1: // '\001'
                k = 7;
                j = 1;
                break;

            case 2: // '\002'
                k = 1;
                break;

            case 3: // '\003'
                j = calendar.get(7);
                k = j - 1;
                break;

            case 4: // '\004'
                j = -3 + calendar.get(7);
                k = 3 + calendar.get(7);
                break;
            }
            continue;
        }
    }

    public static Iterator iterator(Date date, int i)
    {
        if (date == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        } else
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            return iterator(calendar, i);
        }
    }

    private static void modify(Calendar calendar, int i, int j)
    {
        if (calendar.get(1) > 0x10b07600)
        {
            throw new ArithmeticException("Calendar value too large for accurate calculations");
        }
        if (i != 14) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Date date = calendar.getTime();
        long l = date.getTime();
        int k = calendar.get(14);
        if (j == 0 || k < 500)
        {
            l -= k;
        }
        boolean flag = false;
        if (i == 13)
        {
            flag = true;
        }
        int i1 = calendar.get(13);
        if (!flag && (j == 0 || i1 < 30))
        {
            l -= 1000L * (long)i1;
        }
        if (i == 12)
        {
            flag = true;
        }
        int j1 = calendar.get(12);
        long l1;
        boolean flag1;
        int ai[][];
        int k1;
        int i2;
        int ai1[];
        int j2;
        int k2;
        int l2;
        boolean flag2;
        boolean flag3;
        int i3;
        boolean flag4;
        int j3;
        int k3;
        int l3;
        boolean flag5;
        int i4;
        boolean flag6;
        if (!flag && (j == 0 || j1 < 30))
        {
            l1 = l - 60000L * (long)j1;
        } else
        {
            l1 = l;
        }
        if (date.getTime() != l1)
        {
            date.setTime(l1);
            calendar.setTime(date);
        }
        flag1 = false;
        ai = fields;
        k1 = ai.length;
        i2 = 0;
        if (i2 >= k1)
        {
            break; /* Loop/switch isn't completed */
        }
        ai1 = ai[i2];
        j2 = ai1.length;
        k2 = 0;
_L4:
label0:
        {
            if (k2 >= j2)
            {
                break MISSING_BLOCK_LABEL_342;
            }
            if (ai1[k2] != i)
            {
                break label0;
            }
            if (j == 2 || j == 1 && flag1)
            {
                if (i == 1001)
                {
                    if (calendar.get(5) == 1)
                    {
                        calendar.add(5, 15);
                        return;
                    } else
                    {
                        calendar.add(5, -15);
                        calendar.add(2, 1);
                        return;
                    }
                }
                if (i == 9)
                {
                    if (calendar.get(11) == 0)
                    {
                        calendar.add(11, 12);
                        return;
                    } else
                    {
                        calendar.add(11, -12);
                        calendar.add(5, 1);
                        return;
                    }
                } else
                {
                    calendar.add(ai1[0], 1);
                    return;
                }
            }
        }
        if (true) goto _L1; else goto _L3
        k2++;
          goto _L4
        i;
        JVM INSTR lookupswitch 2: default 368
    //                   9: 530
    //                   1001: 473;
           goto _L5 _L6 _L7
_L5:
        i3 = 0;
        flag3 = flag1;
        flag4 = false;
_L9:
        if (!flag4)
        {
            j3 = calendar.getActualMinimum(ai1[0]);
            k3 = calendar.getActualMaximum(ai1[0]);
            l3 = calendar.get(ai1[0]) - j3;
            if (l3 > (k3 - j3) / 2)
            {
                flag5 = true;
            } else
            {
                flag5 = false;
            }
            flag3 = flag5;
            i3 = l3;
        }
        if (i3 != 0)
        {
            calendar.set(ai1[0], calendar.get(ai1[0]) - i3);
        }
        i2++;
        flag1 = flag3;
        break MISSING_BLOCK_LABEL_196;
_L7:
        if (ai1[0] != 5) goto _L5; else goto _L8
_L8:
        i4 = -1 + calendar.get(5);
        if (i4 >= 15)
        {
            i4 -= 15;
        }
        if (i4 > 7)
        {
            flag6 = true;
        } else
        {
            flag6 = false;
        }
        flag3 = flag6;
        i3 = i4;
        flag4 = true;
          goto _L9
_L6:
        if (ai1[0] != 11) goto _L5; else goto _L10
_L10:
        l2 = calendar.get(11);
        if (l2 >= 12)
        {
            l2 -= 12;
        }
        if (l2 >= 6)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        flag3 = flag2;
        i3 = l2;
        flag4 = true;
          goto _L9
_L3:
        throw new IllegalArgumentException((new StringBuilder()).append("The field ").append(i).append(" is not supported").toString());
        break MISSING_BLOCK_LABEL_196;
    }

    public static transient Date parseDate(String s, Locale locale, String as[])
    {
        return parseDateWithLeniency(s, locale, as, true);
    }

    public static transient Date parseDate(String s, String as[])
    {
        return parseDate(s, null, as);
    }

    public static transient Date parseDateStrictly(String s, Locale locale, String as[])
    {
        return parseDateWithLeniency(s, null, as, false);
    }

    public static transient Date parseDateStrictly(String s, String as[])
    {
        return parseDateStrictly(s, null, as);
    }

    private static Date parseDateWithLeniency(String s, Locale locale, String as[], boolean flag)
    {
        if (s == null || as == null)
        {
            throw new IllegalArgumentException("Date and Patterns must not be null");
        }
        SimpleDateFormat simpledateformat;
        ParsePosition parseposition;
        int i;
        int j;
        if (locale == null)
        {
            simpledateformat = new SimpleDateFormat();
        } else
        {
            simpledateformat = new SimpleDateFormat("", locale);
        }
        simpledateformat.setLenient(flag);
        parseposition = new ParsePosition(0);
        i = as.length;
        j = 0;
        while (j < i) 
        {
            String s1 = as[j];
            String s2;
            String s3;
            Date date;
            if (s1.endsWith("ZZ"))
            {
                s2 = s1.substring(0, -1 + s1.length());
            } else
            {
                s2 = s1;
            }
            simpledateformat.applyPattern(s2);
            parseposition.setIndex(0);
            if (s1.endsWith("ZZ"))
            {
                s3 = s.replaceAll("([-+][0-9][0-9]):([0-9][0-9])$", "$1$2");
            } else
            {
                s3 = s;
            }
            date = simpledateformat.parse(s3, parseposition);
            if (date != null && parseposition.getIndex() == s3.length())
            {
                return date;
            }
            j++;
        }
        throw new ParseException((new StringBuilder()).append("Unable to parse the date: ").append(s).toString(), -1);
    }

    public static Calendar round(Calendar calendar, int i)
    {
        if (calendar == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        } else
        {
            Calendar calendar1 = (Calendar)calendar.clone();
            modify(calendar1, i, 1);
            return calendar1;
        }
    }

    public static Date round(Object obj, int i)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date)
        {
            return round((Date)obj, i);
        }
        if (obj instanceof Calendar)
        {
            return round((Calendar)obj, i).getTime();
        } else
        {
            throw new ClassCastException((new StringBuilder()).append("Could not round ").append(obj).toString());
        }
    }

    public static Date round(Date date, int i)
    {
        if (date == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        } else
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            modify(calendar, i, 1);
            return calendar.getTime();
        }
    }

    private static Date set(Date date, int i, int j)
    {
        if (date == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        } else
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setLenient(false);
            calendar.setTime(date);
            calendar.set(i, j);
            return calendar.getTime();
        }
    }

    public static Date setDays(Date date, int i)
    {
        return set(date, 5, i);
    }

    public static Date setHours(Date date, int i)
    {
        return set(date, 11, i);
    }

    public static Date setMilliseconds(Date date, int i)
    {
        return set(date, 14, i);
    }

    public static Date setMinutes(Date date, int i)
    {
        return set(date, 12, i);
    }

    public static Date setMonths(Date date, int i)
    {
        return set(date, 2, i);
    }

    public static Date setSeconds(Date date, int i)
    {
        return set(date, 13, i);
    }

    public static Date setYears(Date date, int i)
    {
        return set(date, 1, i);
    }

    public static Calendar toCalendar(Date date)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar;
    }

    public static Calendar truncate(Calendar calendar, int i)
    {
        if (calendar == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        } else
        {
            Calendar calendar1 = (Calendar)calendar.clone();
            modify(calendar1, i, 0);
            return calendar1;
        }
    }

    public static Date truncate(Object obj, int i)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date)
        {
            return truncate((Date)obj, i);
        }
        if (obj instanceof Calendar)
        {
            return truncate((Calendar)obj, i).getTime();
        } else
        {
            throw new ClassCastException((new StringBuilder()).append("Could not truncate ").append(obj).toString());
        }
    }

    public static Date truncate(Date date, int i)
    {
        if (date == null)
        {
            throw new IllegalArgumentException("The date must not be null");
        } else
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            modify(calendar, i, 0);
            return calendar.getTime();
        }
    }

    public static int truncatedCompareTo(Calendar calendar, Calendar calendar1, int i)
    {
        return truncate(calendar, i).compareTo(truncate(calendar1, i));
    }

    public static int truncatedCompareTo(Date date, Date date1, int i)
    {
        return truncate(date, i).compareTo(truncate(date1, i));
    }

    public static boolean truncatedEquals(Calendar calendar, Calendar calendar1, int i)
    {
        return truncatedCompareTo(calendar, calendar1, i) == 0;
    }

    public static boolean truncatedEquals(Date date, Date date1, int i)
    {
        return truncatedCompareTo(date, date1, i) == 0;
    }

}
