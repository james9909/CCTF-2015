// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;


// Referenced classes of package org.joda.time:
//            DateTimeFieldType, DurationFieldType

public class IllegalFieldValueException extends IllegalArgumentException
{

    private final DateTimeFieldType a;
    private final DurationFieldType b;
    private final String c;
    private final Number d;
    private final String e;
    private final Number f;
    private final Number g;
    private String h;

    public IllegalFieldValueException(DateTimeFieldType datetimefieldtype, Number number, Number number1, Number number2)
    {
        super(a(datetimefieldtype.x(), number, number1, number2, null));
        a = datetimefieldtype;
        b = null;
        c = datetimefieldtype.x();
        d = number;
        e = null;
        f = number1;
        g = number2;
        h = super.getMessage();
    }

    public IllegalFieldValueException(DateTimeFieldType datetimefieldtype, Number number, String s)
    {
        super(a(datetimefieldtype.x(), number, null, null, s));
        a = datetimefieldtype;
        b = null;
        c = datetimefieldtype.x();
        d = number;
        e = null;
        f = null;
        g = null;
        h = super.getMessage();
    }

    public IllegalFieldValueException(DateTimeFieldType datetimefieldtype, String s)
    {
        super(a(datetimefieldtype.x(), s));
        a = datetimefieldtype;
        b = null;
        c = datetimefieldtype.x();
        e = s;
        d = null;
        f = null;
        g = null;
        h = super.getMessage();
    }

    private static String a(String s, Number number, Number number1, Number number2, String s1)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("Value ").append(number).append(" for ").append(s).append(' ');
        if (number1 == null)
        {
            if (number2 == null)
            {
                stringbuilder.append("is not supported");
            } else
            {
                stringbuilder.append("must not be larger than ").append(number2);
            }
        } else
        if (number2 == null)
        {
            stringbuilder.append("must not be smaller than ").append(number1);
        } else
        {
            stringbuilder.append("must be in the range [").append(number1).append(',').append(number2).append(']');
        }
        if (s1 != null)
        {
            stringbuilder.append(": ").append(s1);
        }
        return stringbuilder.toString();
    }

    private static String a(String s, String s1)
    {
        StringBuffer stringbuffer = (new StringBuffer()).append("Value ");
        if (s1 == null)
        {
            stringbuffer.append("null");
        } else
        {
            stringbuffer.append('"');
            stringbuffer.append(s1);
            stringbuffer.append('"');
        }
        stringbuffer.append(" for ").append(s).append(' ').append("is not supported");
        return stringbuffer.toString();
    }

    public void a(String s)
    {
        if (h == null)
        {
            h = s;
        } else
        if (s != null)
        {
            h = (new StringBuilder()).append(s).append(": ").append(h).toString();
            return;
        }
    }

    public String getMessage()
    {
        return h;
    }
}
