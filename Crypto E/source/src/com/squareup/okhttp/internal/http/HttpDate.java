// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class HttpDate
{

    private static final TimeZone a = TimeZone.getTimeZone("GMT");
    private static final ThreadLocal b = new ThreadLocal() {

        protected DateFormat a()
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpledateformat.setLenient(false);
            simpledateformat.setTimeZone(HttpDate.a());
            return simpledateformat;
        }

        protected Object initialValue()
        {
            return a();
        }

    };
    private static final String c[] = {
        "EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", 
        "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"
    };
    private static final DateFormat d[] = new DateFormat[c.length];

    private HttpDate()
    {
    }

    public static String a(Date date)
    {
        return ((DateFormat)b.get()).format(date);
    }

    public static Date a(String s)
    {
        int i = 0;
        if (s.length() != 0) goto _L2; else goto _L1
_L1:
        Date date = null;
_L4:
        return date;
_L2:
        ParsePosition parseposition;
        parseposition = new ParsePosition(0);
        date = ((DateFormat)b.get()).parse(s, parseposition);
        if (parseposition.getIndex() == s.length()) goto _L4; else goto _L3
_L3:
        String as[] = c;
        as;
        JVM INSTR monitorenter ;
        int j = c.length;
_L6:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj = d[i];
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        obj = new SimpleDateFormat(c[i], Locale.US);
        ((DateFormat) (obj)).setTimeZone(a);
        d[i] = ((DateFormat) (obj));
        Date date1;
        parseposition.setIndex(0);
        date1 = ((DateFormat) (obj)).parse(s, parseposition);
        if (parseposition.getIndex() == 0)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        as;
        JVM INSTR monitorexit ;
        return date1;
        Exception exception;
        exception;
        as;
        JVM INSTR monitorexit ;
        throw exception;
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        as;
        JVM INSTR monitorexit ;
        return null;
    }

    static TimeZone a()
    {
        return a;
    }

}
