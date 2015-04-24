// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;


// Referenced classes of package org.joda.time:
//            DateTimeFieldType, DateTimeUtils, Chronology, DurationFieldType, 
//            DateTimeField

static class c extends DateTimeFieldType
{

    private final byte a;
    private final transient DurationFieldType b;
    private final transient DurationFieldType c;

    public DateTimeField a(Chronology chronology)
    {
        Chronology chronology1 = DateTimeUtils.a(chronology);
        switch (a)
        {
        default:
            throw new InternalError();

        case 1: // '\001'
            return chronology1.K();

        case 2: // '\002'
            return chronology1.F();

        case 3: // '\003'
            return chronology1.I();

        case 4: // '\004'
            return chronology1.G();

        case 5: // '\005'
            return chronology1.E();

        case 6: // '\006'
            return chronology1.v();

        case 7: // '\007'
            return chronology1.C();

        case 8: // '\b'
            return chronology1.u();

        case 9: // '\t'
            return chronology1.A();

        case 10: // '\n'
            return chronology1.z();

        case 11: // '\013'
            return chronology1.x();

        case 12: // '\f'
            return chronology1.t();

        case 13: // '\r'
            return chronology1.r();

        case 14: // '\016'
            return chronology1.p();

        case 15: // '\017'
            return chronology1.q();

        case 16: // '\020'
            return chronology1.n();

        case 17: // '\021'
            return chronology1.m();

        case 18: // '\022'
            return chronology1.k();

        case 19: // '\023'
            return chronology1.j();

        case 20: // '\024'
            return chronology1.h();

        case 21: // '\025'
            return chronology1.g();

        case 22: // '\026'
            return chronology1.e();

        case 23: // '\027'
            return chronology1.d();
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj instanceof a)
            {
                if (a != ((a)obj).a)
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
        return 1 << a;
    }

    public DurationFieldType y()
    {
        return b;
    }

    public DurationFieldType z()
    {
        return c;
    }

    (String s, byte byte0, DurationFieldType durationfieldtype, DurationFieldType durationfieldtype1)
    {
        super(s);
        a = byte0;
        b = durationfieldtype;
        c = durationfieldtype1;
    }
}
