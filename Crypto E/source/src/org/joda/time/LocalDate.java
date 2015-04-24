// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import org.joda.time.base.BaseLocal;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.field.AbstractReadableInstantFieldProperty;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

// Referenced classes of package org.joda.time:
//            ReadablePartial, DurationFieldType, DateTimeUtils, Chronology, 
//            DateTimeZone, DateTimeField, DateTimeFieldType, DateTime, 
//            DurationField

public final class LocalDate extends BaseLocal
    implements Serializable, ReadablePartial
{
    public static final class Property extends AbstractReadableInstantFieldProperty
    {

        private transient LocalDate a;
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


    private static final Set a;
    private final long b;
    private final Chronology c;
    private volatile transient int d;

    public LocalDate()
    {
        this(DateTimeUtils.a(), ((Chronology) (ISOChronology.O())));
    }

    public LocalDate(long l)
    {
        this(l, ((Chronology) (ISOChronology.O())));
    }

    public LocalDate(long l, Chronology chronology)
    {
        Chronology chronology1 = DateTimeUtils.a(chronology);
        long l1 = chronology1.a().a(DateTimeZone.a, l);
        Chronology chronology2 = chronology1.b();
        b = chronology2.u().e(l1);
        c = chronology2;
    }

    public int a()
    {
        return 3;
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
        }
    }

    public int a(DateTimeFieldType datetimefieldtype)
    {
        if (datetimefieldtype == null)
        {
            throw new IllegalArgumentException("The DateTimeFieldType must not be null");
        }
        if (!b(datetimefieldtype))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Field '").append(datetimefieldtype).append("' is not supported").toString());
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
        if (readablepartial instanceof LocalDate)
        {
            LocalDate localdate = (LocalDate)readablepartial;
            if (c.equals(localdate.c))
            {
                byte byte0;
                if (b < localdate.b)
                {
                    byte0 = -1;
                } else
                if (b == localdate.b)
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

    public DateTime a(DateTimeZone datetimezone)
    {
        DateTimeZone datetimezone1 = DateTimeUtils.a(datetimezone);
        Chronology chronology = c().a(datetimezone1);
        long l = datetimezone1.a(0x1499700L + b(), false);
        return new DateTime(chronology.u().e(l), chronology);
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
        }
    }

    protected long b()
    {
        return b;
    }

    public boolean b(DateTimeFieldType datetimefieldtype)
    {
        DurationFieldType durationfieldtype;
        if (datetimefieldtype != null)
        {
            if (a.contains(durationfieldtype = datetimefieldtype.y()) || durationfieldtype.a(c()).d() >= c().s().d())
            {
                return datetimefieldtype.a(c()).c();
            }
        }
        return false;
    }

    public Chronology c()
    {
        return c;
    }

    public int compareTo(Object obj)
    {
        return a((ReadablePartial)obj);
    }

    public DateTime d()
    {
        return a(((DateTimeZone) (null)));
    }

    public int e()
    {
        return c().E().a(b());
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj instanceof LocalDate)
        {
            LocalDate localdate = (LocalDate)obj;
            if (c.equals(localdate.c))
            {
                boolean flag;
                if (b == localdate.b)
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

    public int hashCode()
    {
        int i = d;
        if (i == 0)
        {
            i = super.hashCode();
            d = i;
        }
        return i;
    }

    public String toString()
    {
        return ISODateTimeFormat.c().a(this);
    }

    static 
    {
        a = new HashSet();
        a.add(DurationFieldType.f());
        a.add(DurationFieldType.g());
        a.add(DurationFieldType.i());
        a.add(DurationFieldType.h());
        a.add(DurationFieldType.j());
        a.add(DurationFieldType.k());
        a.add(DurationFieldType.l());
    }
}
