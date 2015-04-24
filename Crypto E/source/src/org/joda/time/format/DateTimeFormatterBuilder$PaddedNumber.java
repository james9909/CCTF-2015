// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.format:
//            FormatUtils, DateTimeFormatterBuilder

static class d extends er
{

    protected final int d;

    public int a()
    {
        return b;
    }

    public void a(StringBuffer stringbuffer, long l, Chronology chronology, int i, DateTimeZone datetimezone, Locale locale)
    {
        try
        {
            FormatUtils.a(stringbuffer, a.a(chronology).a(l), d);
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            DateTimeFormatterBuilder.a(stringbuffer, d);
        }
    }

    public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
    {
        if (readablepartial.b(a))
        {
            try
            {
                FormatUtils.a(stringbuffer, readablepartial.a(a), d);
                return;
            }
            catch (RuntimeException runtimeexception)
            {
                DateTimeFormatterBuilder.a(stringbuffer, d);
            }
            return;
        } else
        {
            DateTimeFormatterBuilder.a(stringbuffer, d);
            return;
        }
    }

    protected er(DateTimeFieldType datetimefieldtype, int i, boolean flag, int j)
    {
        super(datetimefieldtype, i, flag);
        d = j;
    }
}
