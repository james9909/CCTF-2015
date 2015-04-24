// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;


// Referenced classes of package org.joda.time:
//            DurationFieldType, DateTimeUtils, Chronology, DurationField

static class m extends DurationFieldType
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
            if (obj instanceof m)
            {
                if (m != ((m)obj).m)
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

    (String s, byte byte0)
    {
        super(s);
        m = byte0;
    }
}
