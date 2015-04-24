// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

// Referenced classes of package org.joda.time.chrono:
//            LimitChronology

class b extends IllegalArgumentException
{

    final LimitChronology a;
    private final boolean b;

    public String getMessage()
    {
        StringBuffer stringbuffer = new StringBuffer(85);
        stringbuffer.append("The");
        String s = super.getMessage();
        if (s != null)
        {
            stringbuffer.append(' ');
            stringbuffer.append(s);
        }
        stringbuffer.append(" instant is ");
        DateTimeFormatter datetimeformatter = ISODateTimeFormat.f().a(a.L());
        if (b)
        {
            stringbuffer.append("below the supported minimum of ");
            datetimeformatter.a(stringbuffer, a.N().x_());
        } else
        {
            stringbuffer.append("above the supported maximum of ");
            datetimeformatter.a(stringbuffer, a.O().x_());
        }
        stringbuffer.append(" (");
        stringbuffer.append(a.L());
        stringbuffer.append(')');
        return stringbuffer.toString();
    }

    public String toString()
    {
        return (new StringBuilder()).append("IllegalArgumentException: ").append(getMessage()).toString();
    }

    _cls9(LimitChronology limitchronology, String s, boolean flag)
    {
        a = limitchronology;
        super(s);
        b = flag;
    }
}
