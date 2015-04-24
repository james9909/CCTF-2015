// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;
import org.joda.time.field.LenientDateTimeField;

// Referenced classes of package org.joda.time.chrono:
//            AssembledChronology

public final class LenientChronology extends AssembledChronology
{

    private transient Chronology a;

    private LenientChronology(Chronology chronology)
    {
        super(chronology, null);
    }

    private final DateTimeField a(DateTimeField datetimefield)
    {
        return LenientDateTimeField.a(datetimefield, L());
    }

    public static LenientChronology a(Chronology chronology)
    {
        if (chronology == null)
        {
            throw new IllegalArgumentException("Must supply a chronology");
        } else
        {
            return new LenientChronology(chronology);
        }
    }

    public Chronology a(DateTimeZone datetimezone)
    {
        if (datetimezone == null)
        {
            datetimezone = DateTimeZone.a();
        }
        if (datetimezone == DateTimeZone.a)
        {
            this = b();
        } else
        if (datetimezone != a())
        {
            return a(L().a(datetimezone));
        }
        return this;
    }

    protected void a(AssembledChronology.Fields fields)
    {
        fields.E = a(fields.E);
        fields.F = a(fields.F);
        fields.G = a(fields.G);
        fields.H = a(fields.H);
        fields.I = a(fields.I);
        fields.x = a(fields.x);
        fields.y = a(fields.y);
        fields.z = a(fields.z);
        fields.D = a(fields.D);
        fields.A = a(fields.A);
        fields.B = a(fields.B);
        fields.C = a(fields.C);
        fields.m = a(fields.m);
        fields.n = a(fields.n);
        fields.o = a(fields.o);
        fields.p = a(fields.p);
        fields.q = a(fields.q);
        fields.r = a(fields.r);
        fields.s = a(fields.s);
        fields.u = a(fields.u);
        fields.t = a(fields.t);
        fields.v = a(fields.v);
        fields.w = a(fields.w);
    }

    public Chronology b()
    {
        if (a == null)
        {
            if (a() == DateTimeZone.a)
            {
                a = this;
            } else
            {
                a = a(L().b());
            }
        }
        return a;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof LenientChronology))
        {
            return false;
        } else
        {
            LenientChronology lenientchronology = (LenientChronology)obj;
            return L().equals(lenientchronology.L());
        }
    }

    public int hashCode()
    {
        return 0xe1970b6 + 7 * L().hashCode();
    }

    public String toString()
    {
        return (new StringBuilder()).append("LenientChronology[").append(L().toString()).append(']').toString();
    }
}
