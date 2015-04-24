// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import org.joda.time.base.BaseDateTime;
import org.joda.time.field.AbstractReadableInstantFieldProperty;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

// Referenced classes of package org.joda.time:
//            ReadWritableDateTime, DateTimeFieldType, DateTimeField, DateTimeUtils, 
//            DateTimeZone, Chronology

public class MutableDateTime extends BaseDateTime
    implements Serializable, Cloneable, ReadWritableDateTime
{
    public static final class Property extends AbstractReadableInstantFieldProperty
    {

        private MutableDateTime a;
        private DateTimeField b;

        public DateTimeField a()
        {
            return b;
        }

        public MutableDateTime a(int i)
        {
            a.a(a().b(a.x_(), i));
            return a;
        }

        protected long b()
        {
            return a.x_();
        }

        protected Chronology c()
        {
            return a.d();
        }

        Property(MutableDateTime mutabledatetime, DateTimeField datetimefield)
        {
            a = mutabledatetime;
            b = datetimefield;
        }
    }


    private DateTimeField a;
    private int b;

    public MutableDateTime()
    {
    }

    public MutableDateTime(long l, Chronology chronology)
    {
        super(l, chronology);
    }

    public MutableDateTime(long l, DateTimeZone datetimezone)
    {
        super(l, datetimezone);
    }

    public Property a(DateTimeFieldType datetimefieldtype)
    {
        if (datetimefieldtype == null)
        {
            throw new IllegalArgumentException("The DateTimeFieldType must not be null");
        }
        DateTimeField datetimefield = datetimefieldtype.a(d());
        if (!datetimefield.c())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Field '").append(datetimefieldtype).append("' is not supported").toString());
        } else
        {
            return new Property(this, datetimefield);
        }
    }

    public void a(long l)
    {
        b;
        JVM INSTR tableswitch 0 5: default 44
    //                   0 44
    //                   1 50
    //                   2 62
    //                   3 74
    //                   4 86
    //                   5 98;
           goto _L1 _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        super.a(l);
        return;
_L2:
        l = a.e(l);
        continue; /* Loop/switch isn't completed */
_L3:
        l = a.f(l);
        continue; /* Loop/switch isn't completed */
_L4:
        l = a.g(l);
        continue; /* Loop/switch isn't completed */
_L5:
        l = a.h(l);
        continue; /* Loop/switch isn't completed */
_L6:
        l = a.i(l);
        if (true) goto _L1; else goto _L7
_L7:
    }

    public void a(Chronology chronology)
    {
        super.a(chronology);
    }

    public void a(DateTimeZone datetimezone)
    {
        DateTimeZone datetimezone1 = DateTimeUtils.a(datetimezone);
        DateTimeZone datetimezone2 = DateTimeUtils.a(i());
        if (datetimezone1 == datetimezone2)
        {
            return;
        } else
        {
            long l = datetimezone2.a(datetimezone1, x_());
            a(d().a(datetimezone1));
            a(l);
            return;
        }
    }

    public Object clone()
    {
        Object obj;
        try
        {
            obj = super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new InternalError("Clone error");
        }
        return obj;
    }

    public String toString()
    {
        return ISODateTimeFormat.f().a(this);
    }
}
