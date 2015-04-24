// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import org.joda.time.base.BaseDateTime;
import org.joda.time.field.AbstractReadableInstantFieldProperty;

// Referenced classes of package org.joda.time:
//            ReadableDateTime, Chronology, DateTimeUtils, DateTimeZone, 
//            DateTimeField

public final class DateTime extends BaseDateTime
    implements Serializable, ReadableDateTime
{
    public static final class Property extends AbstractReadableInstantFieldProperty
    {

        private DateTime a;
        private DateTimeField b;

        public DateTimeField a()
        {
            return b;
        }

        protected long b()
        {
            return a.x_();
        }

        protected Chronology c()
        {
            return a.d();
        }

        Property(DateTime datetime, DateTimeField datetimefield)
        {
            a = datetime;
            b = datetimefield;
        }
    }


    public DateTime()
    {
    }

    public DateTime(int i, int j, int k, int l, int i1, int j1, int k1, 
            Chronology chronology)
    {
        super(i, j, k, l, i1, j1, k1, chronology);
    }

    public DateTime(long l, Chronology chronology)
    {
        super(l, chronology);
    }

    public DateTime(long l, DateTimeZone datetimezone)
    {
        super(l, datetimezone);
    }

    public DateTime(Object obj)
    {
        super(obj, (Chronology)null);
    }

    public DateTime a()
    {
        return this;
    }

    public DateTime a(DateTimeZone datetimezone)
    {
        return a_(d().a(datetimezone));
    }

    public DateTime a_(Chronology chronology)
    {
        Chronology chronology1 = DateTimeUtils.a(chronology);
        if (chronology1 == d())
        {
            return this;
        } else
        {
            return new DateTime(x_(), chronology1);
        }
    }

    public Property b()
    {
        return new Property(this, d().C());
    }

    public Property c()
    {
        return new Property(this, d().t());
    }
}
