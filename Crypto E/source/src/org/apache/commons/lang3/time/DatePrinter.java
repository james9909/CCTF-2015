// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.text.FieldPosition;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public interface DatePrinter
{

    public abstract String format(long l);

    public abstract String format(Calendar calendar);

    public abstract String format(Date date);

    public abstract StringBuffer format(long l, StringBuffer stringbuffer);

    public abstract StringBuffer format(Object obj, StringBuffer stringbuffer, FieldPosition fieldposition);

    public abstract StringBuffer format(Calendar calendar, StringBuffer stringbuffer);

    public abstract StringBuffer format(Date date, StringBuffer stringbuffer);

    public abstract Locale getLocale();

    public abstract String getPattern();

    public abstract TimeZone getTimeZone();
}
