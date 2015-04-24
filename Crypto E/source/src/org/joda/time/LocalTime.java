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
//            DateTimeZone, DateTimeField, DateTimeFieldType, DurationField

public final class LocalTime extends BaseLocal
    implements Serializable, ReadablePartial
{
    public static final class Property extends AbstractReadableInstantFieldProperty
    {

        private transient LocalTime a;
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


    public static final LocalTime a = new LocalTime(0, 0, 0, 0);
    private static final Set b;
    private final long c;
    private final Chronology d;

    public LocalTime()
    {
        this(DateTimeUtils.a(), ((Chronology) (ISOChronology.O())));
    }

    public LocalTime(int i, int j, int k, int l)
    {
        this(i, j, k, l, ((Chronology) (ISOChronology.N())));
    }

    public LocalTime(int i, int j, int k, int l, Chronology chronology)
    {
        Chronology chronology1 = DateTimeUtils.a(chronology).b();
        long l1 = chronology1.a(0L, i, j, k, l);
        d = chronology1;
        c = l1;
    }

    public LocalTime(long l, Chronology chronology)
    {
        Chronology chronology1 = DateTimeUtils.a(chronology);
        long l1 = chronology1.a().a(DateTimeZone.a, l);
        Chronology chronology2 = chronology1.b();
        c = chronology2.e().a(l1);
        d = chronology2;
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
            return c().m().a(b());

        case 1: // '\001'
            return c().j().a(b());

        case 2: // '\002'
            return c().g().a(b());

        case 3: // '\003'
            return c().d().a(b());
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
        if (readablepartial instanceof LocalTime)
        {
            LocalTime localtime = (LocalTime)readablepartial;
            if (d.equals(localtime.d))
            {
                byte byte0;
                if (c < localtime.c)
                {
                    byte0 = -1;
                } else
                if (c == localtime.c)
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
            return chronology.m();

        case 1: // '\001'
            return chronology.j();

        case 2: // '\002'
            return chronology.g();

        case 3: // '\003'
            return chronology.d();
        }
    }

    public boolean a(DurationFieldType durationfieldtype)
    {
        if (durationfieldtype != null)
        {
            DurationField durationfield = durationfieldtype.a(c());
            if (b.contains(durationfieldtype) || durationfield.d() < c().s().d())
            {
                return durationfield.b();
            }
        }
        return false;
    }

    protected long b()
    {
        return c;
    }

    public boolean b(DateTimeFieldType datetimefieldtype)
    {
        if (datetimefieldtype != null && a(datetimefieldtype.y()))
        {
            DurationFieldType durationfieldtype = datetimefieldtype.z();
            if (a(durationfieldtype) || durationfieldtype == DurationFieldType.f())
            {
                return true;
            }
        }
        return false;
    }

    public Chronology c()
    {
        return d;
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
        if (obj instanceof LocalTime)
        {
            LocalTime localtime = (LocalTime)obj;
            if (d.equals(localtime.d))
            {
                boolean flag;
                if (c == localtime.c)
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
        return ISODateTimeFormat.d().a(this);
    }

    static 
    {
        b = new HashSet();
        b.add(DurationFieldType.a());
        b.add(DurationFieldType.b());
        b.add(DurationFieldType.c());
        b.add(DurationFieldType.d());
    }
}
