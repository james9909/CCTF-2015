// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;

// Referenced classes of package org.joda.time:
//            Chronology, DurationField, DateTimeUtils

public abstract class DurationFieldType
    implements Serializable
{
    static class StandardDurationFieldType extends DurationFieldType
    {

        private final byte m;

        public DurationField a(Chronology chronology)
        {
            Chronology chronology1 = DateTimeUtils.a(chronology);
            switch (m)
            {
            default:
                throw new InternalError();

            case 1: // '\001'
                return chronology1.J();

            case 2: // '\002'
                return chronology1.H();

            case 3: // '\003'
                return chronology1.y();

            case 4: // '\004'
                return chronology1.D();

            case 5: // '\005'
                return chronology1.B();

            case 6: // '\006'
                return chronology1.w();

            case 7: // '\007'
                return chronology1.s();

            case 8: // '\b'
                return chronology1.o();

            case 9: // '\t'
                return chronology1.l();

            case 10: // '\n'
                return chronology1.i();

            case 11: // '\013'
                return chronology1.f();

            case 12: // '\f'
                return chronology1.c();
            }
        }

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj instanceof StandardDurationFieldType)
                {
                    if (m != ((StandardDurationFieldType)obj).m)
                    {
                        return false;
                    }
                } else
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return 1 << m;
        }

        StandardDurationFieldType(String s, byte byte0)
        {
            super(s);
            m = byte0;
        }
    }


    static final DurationFieldType a = new StandardDurationFieldType("eras", (byte)1);
    static final DurationFieldType b = new StandardDurationFieldType("centuries", (byte)2);
    static final DurationFieldType c = new StandardDurationFieldType("weekyears", (byte)3);
    static final DurationFieldType d = new StandardDurationFieldType("years", (byte)4);
    static final DurationFieldType e = new StandardDurationFieldType("months", (byte)5);
    static final DurationFieldType f = new StandardDurationFieldType("weeks", (byte)6);
    static final DurationFieldType g = new StandardDurationFieldType("days", (byte)7);
    static final DurationFieldType h = new StandardDurationFieldType("halfdays", (byte)8);
    static final DurationFieldType i = new StandardDurationFieldType("hours", (byte)9);
    static final DurationFieldType j = new StandardDurationFieldType("minutes", (byte)10);
    static final DurationFieldType k = new StandardDurationFieldType("seconds", (byte)11);
    static final DurationFieldType l = new StandardDurationFieldType("millis", (byte)12);
    private final String m;

    protected DurationFieldType(String s)
    {
        m = s;
    }

    public static DurationFieldType a()
    {
        return l;
    }

    public static DurationFieldType b()
    {
        return k;
    }

    public static DurationFieldType c()
    {
        return j;
    }

    public static DurationFieldType d()
    {
        return i;
    }

    public static DurationFieldType e()
    {
        return h;
    }

    public static DurationFieldType f()
    {
        return g;
    }

    public static DurationFieldType g()
    {
        return f;
    }

    public static DurationFieldType h()
    {
        return c;
    }

    public static DurationFieldType i()
    {
        return e;
    }

    public static DurationFieldType j()
    {
        return d;
    }

    public static DurationFieldType k()
    {
        return b;
    }

    public static DurationFieldType l()
    {
        return a;
    }

    public abstract DurationField a(Chronology chronology);

    public String m()
    {
        return m;
    }

    public String toString()
    {
        return m();
    }

}
