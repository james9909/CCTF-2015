// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

// Referenced classes of package org.apache.commons.lang3.time:
//            DateParser, DatePrinter, FastDatePrinter, FastDateParser, 
//            FormatCache

public class FastDateFormat extends Format
    implements DateParser, DatePrinter
{

    public static final int FULL = 0;
    public static final int LONG = 1;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;
    private static final FormatCache cache = new FormatCache() {

        protected volatile Format createInstance(String s, TimeZone timezone, Locale locale)
        {
            return createInstance(s, timezone, locale);
        }

        protected FastDateFormat createInstance(String s, TimeZone timezone, Locale locale)
        {
            return new FastDateFormat(s, timezone, locale);
        }

    };
    private static final long serialVersionUID = 2L;
    private final FastDateParser parser;
    private final FastDatePrinter printer;

    protected FastDateFormat(String s, TimeZone timezone, Locale locale)
    {
        this(s, timezone, locale, null);
    }

    protected FastDateFormat(String s, TimeZone timezone, Locale locale, Date date)
    {
        printer = new FastDatePrinter(s, timezone, locale);
        parser = new FastDateParser(s, timezone, locale, date);
    }

    public static FastDateFormat getDateInstance(int i)
    {
        return (FastDateFormat)cache.getDateInstance(i, null, null);
    }

    public static FastDateFormat getDateInstance(int i, Locale locale)
    {
        return (FastDateFormat)cache.getDateInstance(i, null, locale);
    }

    public static FastDateFormat getDateInstance(int i, TimeZone timezone)
    {
        return (FastDateFormat)cache.getDateInstance(i, timezone, null);
    }

    public static FastDateFormat getDateInstance(int i, TimeZone timezone, Locale locale)
    {
        return (FastDateFormat)cache.getDateInstance(i, timezone, locale);
    }

    public static FastDateFormat getDateTimeInstance(int i, int j)
    {
        return (FastDateFormat)cache.getDateTimeInstance(i, j, null, null);
    }

    public static FastDateFormat getDateTimeInstance(int i, int j, Locale locale)
    {
        return (FastDateFormat)cache.getDateTimeInstance(i, j, null, locale);
    }

    public static FastDateFormat getDateTimeInstance(int i, int j, TimeZone timezone)
    {
        return getDateTimeInstance(i, j, timezone, null);
    }

    public static FastDateFormat getDateTimeInstance(int i, int j, TimeZone timezone, Locale locale)
    {
        return (FastDateFormat)cache.getDateTimeInstance(i, j, timezone, locale);
    }

    public static FastDateFormat getInstance()
    {
        return (FastDateFormat)cache.getInstance();
    }

    public static FastDateFormat getInstance(String s)
    {
        return (FastDateFormat)cache.getInstance(s, null, null);
    }

    public static FastDateFormat getInstance(String s, Locale locale)
    {
        return (FastDateFormat)cache.getInstance(s, null, locale);
    }

    public static FastDateFormat getInstance(String s, TimeZone timezone)
    {
        return (FastDateFormat)cache.getInstance(s, timezone, null);
    }

    public static FastDateFormat getInstance(String s, TimeZone timezone, Locale locale)
    {
        return (FastDateFormat)cache.getInstance(s, timezone, locale);
    }

    public static FastDateFormat getTimeInstance(int i)
    {
        return (FastDateFormat)cache.getTimeInstance(i, null, null);
    }

    public static FastDateFormat getTimeInstance(int i, Locale locale)
    {
        return (FastDateFormat)cache.getTimeInstance(i, null, locale);
    }

    public static FastDateFormat getTimeInstance(int i, TimeZone timezone)
    {
        return (FastDateFormat)cache.getTimeInstance(i, timezone, null);
    }

    public static FastDateFormat getTimeInstance(int i, TimeZone timezone, Locale locale)
    {
        return (FastDateFormat)cache.getTimeInstance(i, timezone, locale);
    }

    protected StringBuffer applyRules(Calendar calendar, StringBuffer stringbuffer)
    {
        return printer.applyRules(calendar, stringbuffer);
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof FastDateFormat))
        {
            return false;
        } else
        {
            FastDateFormat fastdateformat = (FastDateFormat)obj;
            return printer.equals(fastdateformat.printer);
        }
    }

    public String format(long l)
    {
        return printer.format(l);
    }

    public String format(Calendar calendar)
    {
        return printer.format(calendar);
    }

    public String format(Date date)
    {
        return printer.format(date);
    }

    public StringBuffer format(long l, StringBuffer stringbuffer)
    {
        return printer.format(l, stringbuffer);
    }

    public StringBuffer format(Object obj, StringBuffer stringbuffer, FieldPosition fieldposition)
    {
        return printer.format(obj, stringbuffer, fieldposition);
    }

    public StringBuffer format(Calendar calendar, StringBuffer stringbuffer)
    {
        return printer.format(calendar, stringbuffer);
    }

    public StringBuffer format(Date date, StringBuffer stringbuffer)
    {
        return printer.format(date, stringbuffer);
    }

    public Locale getLocale()
    {
        return printer.getLocale();
    }

    public int getMaxLengthEstimate()
    {
        return printer.getMaxLengthEstimate();
    }

    public String getPattern()
    {
        return printer.getPattern();
    }

    public TimeZone getTimeZone()
    {
        return printer.getTimeZone();
    }

    public int hashCode()
    {
        return printer.hashCode();
    }

    public Date parse(String s)
    {
        return parser.parse(s);
    }

    public Date parse(String s, ParsePosition parseposition)
    {
        return parser.parse(s, parseposition);
    }

    public Object parseObject(String s, ParsePosition parseposition)
    {
        return parser.parseObject(s, parseposition);
    }

    public String toString()
    {
        return (new StringBuilder()).append("FastDateFormat[").append(printer.getPattern()).append(",").append(printer.getLocale()).append(",").append(printer.getTimeZone().getID()).append("]").toString();
    }

}
