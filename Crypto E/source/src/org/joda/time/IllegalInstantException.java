// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

// Referenced classes of package org.joda.time:
//            Instant

public class IllegalInstantException extends IllegalArgumentException
{

    public IllegalInstantException(long l, String s)
    {
        super(a(l, s));
    }

    public IllegalInstantException(String s)
    {
        super(s);
    }

    private static String a(long l, String s)
    {
        String s1 = DateTimeFormat.a("yyyy-MM-dd'T'HH:mm:ss.SSS").a(new Instant(l));
        String s2;
        if (s != null)
        {
            s2 = (new StringBuilder()).append(" (").append(s).append(")").toString();
        } else
        {
            s2 = "";
        }
        return (new StringBuilder()).append("Illegal instant due to time zone offset transition (daylight savings time 'gap'): ").append(s1).append(s2).toString();
    }
}
