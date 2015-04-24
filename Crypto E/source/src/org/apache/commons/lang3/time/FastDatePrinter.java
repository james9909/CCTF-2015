// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.commons.lang3.Validate;

// Referenced classes of package org.apache.commons.lang3.time:
//            DatePrinter

public class FastDatePrinter
    implements Serializable, DatePrinter
{
    static class CharacterLiteral
        implements Rule
    {

        private final char mValue;

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            stringbuffer.append(mValue);
        }

        public int estimateLength()
        {
            return 1;
        }

        CharacterLiteral(char c)
        {
            mValue = c;
        }
    }

    static interface NumberRule
        extends Rule
    {

        public abstract void appendTo(StringBuffer stringbuffer, int i);
    }

    static class PaddedNumberField
        implements NumberRule
    {

        private final int mField;
        private final int mSize;

        public final void appendTo(StringBuffer stringbuffer, int i)
        {
            if (i < 100)
            {
                for (int l = mSize; --l >= 2;)
                {
                    stringbuffer.append('0');
                }

                stringbuffer.append((char)(48 + i / 10));
                stringbuffer.append((char)(48 + i % 10));
                return;
            }
            int j;
            int k;
            if (i < 1000)
            {
                j = 3;
            } else
            {
                boolean flag;
                if (i > -1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                Validate.isTrue(flag, "Negative values should not be possible", i);
                j = Integer.toString(i).length();
            }
            for (k = mSize; --k >= j;)
            {
                stringbuffer.append('0');
            }

            stringbuffer.append(Integer.toString(i));
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            appendTo(stringbuffer, calendar.get(mField));
        }

        public int estimateLength()
        {
            return 4;
        }

        PaddedNumberField(int i, int j)
        {
            if (j < 3)
            {
                throw new IllegalArgumentException();
            } else
            {
                mField = i;
                mSize = j;
                return;
            }
        }
    }

    static interface Rule
    {

        public abstract void appendTo(StringBuffer stringbuffer, Calendar calendar);

        public abstract int estimateLength();
    }

    static class StringLiteral
        implements Rule
    {

        private final String mValue;

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            stringbuffer.append(mValue);
        }

        public int estimateLength()
        {
            return mValue.length();
        }

        StringLiteral(String s)
        {
            mValue = s;
        }
    }

    static class TextField
        implements Rule
    {

        private final int mField;
        private final String mValues[];

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            stringbuffer.append(mValues[calendar.get(mField)]);
        }

        public int estimateLength()
        {
            int i = 0;
            int j = mValues.length;
            do
            {
                int k = j - 1;
                if (k >= 0)
                {
                    int l = mValues[k].length();
                    if (l <= i)
                    {
                        l = i;
                    }
                    i = l;
                    j = k;
                } else
                {
                    return i;
                }
            } while (true);
        }

        TextField(int i, String as[])
        {
            mField = i;
            mValues = as;
        }
    }

    static class TimeZoneDisplayKey
    {

        private final Locale mLocale;
        private final int mStyle;
        private final TimeZone mTimeZone;

        public boolean equals(Object obj)
        {
            TimeZoneDisplayKey timezonedisplaykey;
            if (this != obj)
            {
                if (obj instanceof TimeZoneDisplayKey)
                {
                    if (!mTimeZone.equals((timezonedisplaykey = (TimeZoneDisplayKey)obj).mTimeZone) || mStyle != timezonedisplaykey.mStyle || !mLocale.equals(timezonedisplaykey.mLocale))
                    {
                        return false;
                    }
                } else
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return 31 * (31 * mStyle + mLocale.hashCode()) + mTimeZone.hashCode();
        }

        TimeZoneDisplayKey(TimeZone timezone, boolean flag, int i, Locale locale)
        {
            mTimeZone = timezone;
            if (flag)
            {
                mStyle = 0x80000000 | i;
            } else
            {
                mStyle = i;
            }
            mLocale = locale;
        }
    }

    static class TimeZoneNameRule
        implements Rule
    {

        private final String mDaylight;
        private final Locale mLocale;
        private final String mStandard;
        private final int mStyle;

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            TimeZone timezone = calendar.getTimeZone();
            if (timezone.useDaylightTime() && calendar.get(16) != 0)
            {
                stringbuffer.append(FastDatePrinter.getTimeZoneDisplay(timezone, true, mStyle, mLocale));
                return;
            } else
            {
                stringbuffer.append(FastDatePrinter.getTimeZoneDisplay(timezone, false, mStyle, mLocale));
                return;
            }
        }

        public int estimateLength()
        {
            return Math.max(mStandard.length(), mDaylight.length());
        }

        TimeZoneNameRule(TimeZone timezone, Locale locale, int i)
        {
            mLocale = locale;
            mStyle = i;
            mStandard = FastDatePrinter.getTimeZoneDisplay(timezone, false, i, locale);
            mDaylight = FastDatePrinter.getTimeZoneDisplay(timezone, true, i, locale);
        }
    }

    static class TimeZoneNumberRule
        implements Rule
    {

        static final TimeZoneNumberRule INSTANCE_COLON = new TimeZoneNumberRule(true);
        static final TimeZoneNumberRule INSTANCE_NO_COLON = new TimeZoneNumberRule(false);
        final boolean mColon;

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            int i = calendar.get(15) + calendar.get(16);
            int j;
            int k;
            if (i < 0)
            {
                stringbuffer.append('-');
                i = -i;
            } else
            {
                stringbuffer.append('+');
            }
            j = i / 0x36ee80;
            stringbuffer.append((char)(48 + j / 10));
            stringbuffer.append((char)(48 + j % 10));
            if (mColon)
            {
                stringbuffer.append(':');
            }
            k = i / 60000 - j * 60;
            stringbuffer.append((char)(48 + k / 10));
            stringbuffer.append((char)(48 + k % 10));
        }

        public int estimateLength()
        {
            return 5;
        }


        TimeZoneNumberRule(boolean flag)
        {
            mColon = flag;
        }
    }

    static class TwelveHourField
        implements NumberRule
    {

        private final NumberRule mRule;

        public void appendTo(StringBuffer stringbuffer, int i)
        {
            mRule.appendTo(stringbuffer, i);
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            int i = calendar.get(10);
            if (i == 0)
            {
                i = 1 + calendar.getLeastMaximum(10);
            }
            mRule.appendTo(stringbuffer, i);
        }

        public int estimateLength()
        {
            return mRule.estimateLength();
        }

        TwelveHourField(NumberRule numberrule)
        {
            mRule = numberrule;
        }
    }

    static class TwentyFourHourField
        implements NumberRule
    {

        private final NumberRule mRule;

        public void appendTo(StringBuffer stringbuffer, int i)
        {
            mRule.appendTo(stringbuffer, i);
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            int i = calendar.get(11);
            if (i == 0)
            {
                i = 1 + calendar.getMaximum(11);
            }
            mRule.appendTo(stringbuffer, i);
        }

        public int estimateLength()
        {
            return mRule.estimateLength();
        }

        TwentyFourHourField(NumberRule numberrule)
        {
            mRule = numberrule;
        }
    }

    static class TwoDigitMonthField
        implements NumberRule
    {

        static final TwoDigitMonthField INSTANCE = new TwoDigitMonthField();

        public final void appendTo(StringBuffer stringbuffer, int i)
        {
            stringbuffer.append((char)(48 + i / 10));
            stringbuffer.append((char)(48 + i % 10));
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            appendTo(stringbuffer, 1 + calendar.get(2));
        }

        public int estimateLength()
        {
            return 2;
        }


        TwoDigitMonthField()
        {
        }
    }

    static class TwoDigitNumberField
        implements NumberRule
    {

        private final int mField;

        public final void appendTo(StringBuffer stringbuffer, int i)
        {
            if (i < 100)
            {
                stringbuffer.append((char)(48 + i / 10));
                stringbuffer.append((char)(48 + i % 10));
                return;
            } else
            {
                stringbuffer.append(Integer.toString(i));
                return;
            }
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            appendTo(stringbuffer, calendar.get(mField));
        }

        public int estimateLength()
        {
            return 2;
        }

        TwoDigitNumberField(int i)
        {
            mField = i;
        }
    }

    static class TwoDigitYearField
        implements NumberRule
    {

        static final TwoDigitYearField INSTANCE = new TwoDigitYearField();

        public final void appendTo(StringBuffer stringbuffer, int i)
        {
            stringbuffer.append((char)(48 + i / 10));
            stringbuffer.append((char)(48 + i % 10));
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            appendTo(stringbuffer, calendar.get(1) % 100);
        }

        public int estimateLength()
        {
            return 2;
        }


        TwoDigitYearField()
        {
        }
    }

    static class UnpaddedMonthField
        implements NumberRule
    {

        static final UnpaddedMonthField INSTANCE = new UnpaddedMonthField();

        public final void appendTo(StringBuffer stringbuffer, int i)
        {
            if (i < 10)
            {
                stringbuffer.append((char)(i + 48));
                return;
            } else
            {
                stringbuffer.append((char)(48 + i / 10));
                stringbuffer.append((char)(48 + i % 10));
                return;
            }
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            appendTo(stringbuffer, 1 + calendar.get(2));
        }

        public int estimateLength()
        {
            return 2;
        }


        UnpaddedMonthField()
        {
        }
    }

    static class UnpaddedNumberField
        implements NumberRule
    {

        private final int mField;

        public final void appendTo(StringBuffer stringbuffer, int i)
        {
            if (i < 10)
            {
                stringbuffer.append((char)(i + 48));
                return;
            }
            if (i < 100)
            {
                stringbuffer.append((char)(48 + i / 10));
                stringbuffer.append((char)(48 + i % 10));
                return;
            } else
            {
                stringbuffer.append(Integer.toString(i));
                return;
            }
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            appendTo(stringbuffer, calendar.get(mField));
        }

        public int estimateLength()
        {
            return 4;
        }

        UnpaddedNumberField(int i)
        {
            mField = i;
        }
    }


    public static final int FULL = 0;
    public static final int LONG = 1;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;
    private static final ConcurrentMap cTimeZoneDisplayCache = new ConcurrentHashMap(7);
    private static final long serialVersionUID = 1L;
    private final Locale mLocale;
    private transient int mMaxLengthEstimate;
    private final String mPattern;
    private transient Rule mRules[];
    private final TimeZone mTimeZone;

    protected FastDatePrinter(String s, TimeZone timezone, Locale locale)
    {
        mPattern = s;
        mTimeZone = timezone;
        mLocale = locale;
        init();
    }

    private String applyRulesToString(Calendar calendar)
    {
        return applyRules(calendar, new StringBuffer(mMaxLengthEstimate)).toString();
    }

    static String getTimeZoneDisplay(TimeZone timezone, boolean flag, int i, Locale locale)
    {
        String s1;
label0:
        {
            TimeZoneDisplayKey timezonedisplaykey = new TimeZoneDisplayKey(timezone, flag, i, locale);
            String s = (String)cTimeZoneDisplayCache.get(timezonedisplaykey);
            if (s == null)
            {
                s1 = timezone.getDisplayName(flag, i, locale);
                s = (String)cTimeZoneDisplayCache.putIfAbsent(timezonedisplaykey, s1);
                if (s == null)
                {
                    break label0;
                }
            }
            return s;
        }
        return s1;
    }

    private void init()
    {
        List list = parsePattern();
        mRules = (Rule[])list.toArray(new Rule[list.size()]);
        int i = 0;
        for (int j = mRules.length; --j >= 0;)
        {
            i += mRules[j].estimateLength();
        }

        mMaxLengthEstimate = i;
    }

    private GregorianCalendar newCalendar()
    {
        return new GregorianCalendar(mTimeZone, mLocale);
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        objectinputstream.defaultReadObject();
        init();
    }

    protected StringBuffer applyRules(Calendar calendar, StringBuffer stringbuffer)
    {
        Rule arule[] = mRules;
        int i = arule.length;
        for (int j = 0; j < i; j++)
        {
            arule[j].appendTo(stringbuffer, calendar);
        }

        return stringbuffer;
    }

    public boolean equals(Object obj)
    {
        FastDatePrinter fastdateprinter;
        if (obj instanceof FastDatePrinter)
        {
            if (mPattern.equals((fastdateprinter = (FastDatePrinter)obj).mPattern) && mTimeZone.equals(fastdateprinter.mTimeZone) && mLocale.equals(fastdateprinter.mLocale))
            {
                return true;
            }
        }
        return false;
    }

    public String format(long l)
    {
        GregorianCalendar gregoriancalendar = newCalendar();
        gregoriancalendar.setTimeInMillis(l);
        return applyRulesToString(gregoriancalendar);
    }

    public String format(Calendar calendar)
    {
        return format(calendar, new StringBuffer(mMaxLengthEstimate)).toString();
    }

    public String format(Date date)
    {
        GregorianCalendar gregoriancalendar = newCalendar();
        gregoriancalendar.setTime(date);
        return applyRulesToString(gregoriancalendar);
    }

    public StringBuffer format(long l, StringBuffer stringbuffer)
    {
        return format(new Date(l), stringbuffer);
    }

    public StringBuffer format(Object obj, StringBuffer stringbuffer, FieldPosition fieldposition)
    {
        if (obj instanceof Date)
        {
            return format((Date)obj, stringbuffer);
        }
        if (obj instanceof Calendar)
        {
            return format((Calendar)obj, stringbuffer);
        }
        if (obj instanceof Long)
        {
            return format(((Long)obj).longValue(), stringbuffer);
        }
        StringBuilder stringbuilder = (new StringBuilder()).append("Unknown class: ");
        String s;
        if (obj == null)
        {
            s = "<null>";
        } else
        {
            s = obj.getClass().getName();
        }
        throw new IllegalArgumentException(stringbuilder.append(s).toString());
    }

    public StringBuffer format(Calendar calendar, StringBuffer stringbuffer)
    {
        return applyRules(calendar, stringbuffer);
    }

    public StringBuffer format(Date date, StringBuffer stringbuffer)
    {
        GregorianCalendar gregoriancalendar = newCalendar();
        gregoriancalendar.setTime(date);
        return applyRules(gregoriancalendar, stringbuffer);
    }

    public Locale getLocale()
    {
        return mLocale;
    }

    public int getMaxLengthEstimate()
    {
        return mMaxLengthEstimate;
    }

    public String getPattern()
    {
        return mPattern;
    }

    public TimeZone getTimeZone()
    {
        return mTimeZone;
    }

    public int hashCode()
    {
        return mPattern.hashCode() + 13 * (mTimeZone.hashCode() + 13 * mLocale.hashCode());
    }

    protected List parsePattern()
    {
        ArrayList arraylist;
        String as[];
        String as1[];
        String as2[];
        String as3[];
        String as4[];
        String as5[];
        int i;
        int ai[];
        int j;
        DateFormatSymbols dateformatsymbols = new DateFormatSymbols(mLocale);
        arraylist = new ArrayList();
        as = dateformatsymbols.getEras();
        as1 = dateformatsymbols.getMonths();
        as2 = dateformatsymbols.getShortMonths();
        as3 = dateformatsymbols.getWeekdays();
        as4 = dateformatsymbols.getShortWeekdays();
        as5 = dateformatsymbols.getAmPmStrings();
        i = mPattern.length();
        ai = new int[1];
        j = 0;
_L23:
        String s;
        int k;
        int l;
label0:
        {
            if (j < i)
            {
                ai[0] = j;
                s = parseToken(mPattern, ai);
                k = ai[0];
                l = s.length();
                if (l != 0)
                {
                    break label0;
                }
            }
            return arraylist;
        }
        s.charAt(0);
        JVM INSTR lookupswitch 20: default 292
    //                   39: 735
    //                   68: 566
    //                   69: 533
    //                   70: 579
    //                   71: 321
    //                   72: 481
    //                   75: 652
    //                   77: 385
    //                   83: 520
    //                   87: 604
    //                   90: 713
    //                   97: 616
    //                   100: 449
    //                   104: 461
    //                   107: 632
    //                   109: 494
    //                   115: 507
    //                   119: 592
    //                   121: 350
    //                   122: 665;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21
_L2:
        break MISSING_BLOCK_LABEL_735;
_L20:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Illegal pattern component: ").append(s).toString());
_L6:
        Object obj = new TextField(0, as);
_L24:
        arraylist.add(obj);
        j = k + 1;
        if (true) goto _L23; else goto _L22
_L22:
        if (l == 2)
        {
            obj = TwoDigitYearField.INSTANCE;
        } else
        {
            if (l < 4)
            {
                l = 4;
            }
            obj = selectNumberRule(1, l);
        }
          goto _L24
_L9:
        if (l >= 4)
        {
            obj = new TextField(2, as1);
        } else
        if (l == 3)
        {
            obj = new TextField(2, as2);
        } else
        if (l == 2)
        {
            obj = TwoDigitMonthField.INSTANCE;
        } else
        {
            obj = UnpaddedMonthField.INSTANCE;
        }
          goto _L24
_L14:
        obj = selectNumberRule(5, l);
          goto _L24
_L15:
        obj = new TwelveHourField(selectNumberRule(10, l));
          goto _L24
_L7:
        obj = selectNumberRule(11, l);
          goto _L24
_L17:
        obj = selectNumberRule(12, l);
          goto _L24
_L18:
        obj = selectNumberRule(13, l);
          goto _L24
_L10:
        obj = selectNumberRule(14, l);
          goto _L24
_L4:
        String as6[];
        if (l < 4)
        {
            as6 = as4;
        } else
        {
            as6 = as3;
        }
        obj = new TextField(7, as6);
          goto _L24
_L3:
        obj = selectNumberRule(6, l);
          goto _L24
_L5:
        obj = selectNumberRule(8, l);
          goto _L24
_L19:
        obj = selectNumberRule(3, l);
          goto _L24
_L11:
        obj = selectNumberRule(4, l);
          goto _L24
_L13:
        obj = new TextField(9, as5);
          goto _L24
_L16:
        obj = new TwentyFourHourField(selectNumberRule(11, l));
          goto _L24
_L8:
        obj = selectNumberRule(10, l);
          goto _L24
_L21:
        if (l >= 4)
        {
            obj = new TimeZoneNameRule(mTimeZone, mLocale, 1);
        } else
        {
            obj = new TimeZoneNameRule(mTimeZone, mLocale, 0);
        }
          goto _L24
_L12:
        if (l == 1)
        {
            obj = TimeZoneNumberRule.INSTANCE_NO_COLON;
        } else
        {
            obj = TimeZoneNumberRule.INSTANCE_COLON;
        }
          goto _L24
        String s1 = s.substring(1);
        if (s1.length() == 1)
        {
            obj = new CharacterLiteral(s1.charAt(0));
        } else
        {
            obj = new StringLiteral(s1);
        }
          goto _L24
    }

    protected String parseToken(String s, int ai[])
    {
        StringBuilder stringbuilder;
        int i;
        int j;
        char c;
        stringbuilder = new StringBuilder();
        i = ai[0];
        j = s.length();
        c = s.charAt(i);
        if ((c < 'A' || c > 'Z') && (c < 'a' || c > 'z')) goto _L2; else goto _L1
_L1:
        stringbuilder.append(c);
        for (; i + 1 < j && s.charAt(i + 1) == c; i++)
        {
            stringbuilder.append(c);
        }

          goto _L3
_L2:
        boolean flag;
        stringbuilder.append('\'');
        flag = false;
_L7:
        if (i >= j) goto _L3; else goto _L4
_L4:
        char c1 = s.charAt(i);
        if (c1 != '\'') goto _L6; else goto _L5
_L5:
        if (i + 1 < j && s.charAt(i + 1) == '\'')
        {
            i++;
            stringbuilder.append(c1);
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
        if (flag || (c1 < 'A' || c1 > 'Z') && (c1 < 'a' || c1 > 'z'))
        {
            break MISSING_BLOCK_LABEL_230;
        }
        i--;
_L3:
        ai[0] = i;
        return stringbuilder.toString();
        stringbuilder.append(c1);
          goto _L8
    }

    protected NumberRule selectNumberRule(int i, int j)
    {
        switch (j)
        {
        default:
            return new PaddedNumberField(i, j);

        case 1: // '\001'
            return new UnpaddedNumberField(i);

        case 2: // '\002'
            return new TwoDigitNumberField(i);
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("FastDatePrinter[").append(mPattern).append(",").append(mLocale).append(",").append(mTimeZone.getID()).append("]").toString();
    }

}
