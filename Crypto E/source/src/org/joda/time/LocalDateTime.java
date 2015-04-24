// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import org.joda.time.base.BaseLocal;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.field.AbstractReadableInstantFieldProperty;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

// Referenced classes of package org.joda.time:
//            ReadablePartial, DateTimeUtils, Chronology, DateTimeZone, 
//            DateTimeField, DateTimeFieldType

public final class LocalDateTime extends BaseLocal
    implements Serializable, ReadablePartial
{
    public static final class Property extends AbstractReadableInstantFieldProperty
    {

        private transient LocalDateTime a;
        private transient DateTimeField b;

        public DateTimeField a()
        {
            return b;
        }

        protected long b()
        {
            return a.b();
        }

        protected Chronology c()
        {
            return a.c();
        }
    }


    private final long a;
    private final Chronology b;

    public LocalDateTime()
    {
        this(DateTimeUtils.a(), ((Chronology) (ISOChronology.O())));
    }

    public LocalDateTime(long l, Chronology chronology)
    {
        Chronology chronology1 = DateTimeUtils.a(chronology);
        a = chronology1.a().a(DateTimeZone.a, l);
        b = chronology1.b();
    }

    public int a()
    {
        return 4;
    }

    public int a(int i)
    {
        switch (i)
        {
        default:
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Invalid index: ").append(i).toString());

        case 0: // '\0'
            return c().E().a(b());

        case 1: // '\001'
            return c().C().a(b());

        case 2: // '\002'
            return c().u().a(b());

        case 3: // '\003'
            return c().e().a(b());
        }
    }

    public int a(DateTimeFieldType datetimefieldtype)
    {
        if (datetimefieldtype == null)
        {
            throw new IllegalArgumentException("The DateTimeFieldType must not be null");
        } else
        {
            return datetimefieldtype.a(c()).a(b());
        }
    }

    public int a(ReadablePartial readablepartial)
    {
        if (this == readablepartial)
        {
            return 0;
        }
        if (readablepartial instanceof LocalDateTime)
        {
            LocalDateTime localdatetime = (LocalDateTime)readablepartial;
            if (b.equals(localdatetime.b))
            {
                byte byte0;
                if (a < localdatetime.a)
                {
                    byte0 = -1;
                } else
                if (a == localdatetime.a)
                {
                    byte0 = 0;
                } else
                {
                    byte0 = 1;
                }
                return byte0;
            }
        }
        return super.a(readablepartial);
    }

    protected DateTimeField a(int i, Chronology chronology)
    {
        switch (i)
        {
        default:
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Invalid index: ").append(i).toString());

        case 0: // '\0'
            return chronology.E();

        case 1: // '\001'
            return chronology.C();

        case 2: // '\002'
            return chronology.u();

        case 3: // '\003'
            return chronology.e();
        }
    }

    protected long b()
    {
        return a;
    }

    public boolean b(DateTimeFieldType datetimefieldtype)
    {
        if (datetimefieldtype == null)
        {
            return false;
        } else
        {
            return datetimefieldtype.a(c()).c();
        }
    }

    public Chronology c()
    {
        return b;
    }

    public int compareTo(Object obj)
    {
        return a((ReadablePartial)obj);
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj instanceof LocalDateTime)
        {
            LocalDateTime localdatetime = (LocalDateTime)obj;
            if (b.equals(localdatetime.b))
            {
                boolean flag;
                if (a == localdatetime.a)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                return flag;
            }
        }
        return super.equals(obj);
    }

    public String toString()
    {
        return ISODateTimeFormat.f().a(this);
    }
}
