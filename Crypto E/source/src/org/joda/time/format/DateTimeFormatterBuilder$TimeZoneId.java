// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import org.joda.time.Chronology;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.format:
//            DateTimeParser, DateTimePrinter, DateTimeParserBucket, DateTimeFormatterBuilder

static final class  extends Enum
    implements DateTimeParser, DateTimePrinter
{

    public static final c a;
    static final Set b;
    static final int c;
    private static final c d[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/joda/time/format/DateTimeFormatterBuilder$TimeZoneId, s);
    }

    public static final [] values()
    {
        return ([])d.clone();
    }

    public int a()
    {
        return c;
    }

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        String s1 = s.substring(i);
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
            return i + s2.length();
        } else
        {
            return ~i;
        }
    }

    public void a(StringBuffer stringbuffer, long l, Chronology chronology, int i, DateTimeZone datetimezone, Locale locale)
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
        a = new <init>("INSTANCE", 0);
        c ac[] = new <init>[1];
        ac[0] = a;
        d = ac;
        b = DateTimeZone.b();
        Iterator iterator = b.iterator();
        int i;
        for (i = 0; iterator.hasNext(); i = Math.max(i, ((String)iterator.next()).length())) { }
        c = i;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
