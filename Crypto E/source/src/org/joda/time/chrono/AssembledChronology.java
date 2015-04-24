// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;

// Referenced classes of package org.joda.time.chrono:
//            BaseChronology

public abstract class AssembledChronology extends BaseChronology
{
    public static final class Fields
    {

        public DateTimeField A;
        public DateTimeField B;
        public DateTimeField C;
        public DateTimeField D;
        public DateTimeField E;
        public DateTimeField F;
        public DateTimeField G;
        public DateTimeField H;
        public DateTimeField I;
        public DurationField a;
        public DurationField b;
        public DurationField c;
        public DurationField d;
        public DurationField e;
        public DurationField f;
        public DurationField g;
        public DurationField h;
        public DurationField i;
        public DurationField j;
        public DurationField k;
        public DurationField l;
        public DateTimeField m;
        public DateTimeField n;
        public DateTimeField o;
        public DateTimeField p;
        public DateTimeField q;
        public DateTimeField r;
        public DateTimeField s;
        public DateTimeField t;
        public DateTimeField u;
        public DateTimeField v;
        public DateTimeField w;
        public DateTimeField x;
        public DateTimeField y;
        public DateTimeField z;

        private static boolean a(DateTimeField datetimefield)
        {
            if (datetimefield == null)
            {
                return false;
            } else
            {
                return datetimefield.c();
            }
        }

        private static boolean a(DurationField durationfield)
        {
            if (durationfield == null)
            {
                return false;
            } else
            {
                return durationfield.b();
            }
        }

        public void a(Chronology chronology)
        {
            DurationField durationfield = chronology.c();
            if (a(durationfield))
            {
                a = durationfield;
            }
            DurationField durationfield1 = chronology.f();
            if (a(durationfield1))
            {
                b = durationfield1;
            }
            DurationField durationfield2 = chronology.i();
            if (a(durationfield2))
            {
                c = durationfield2;
            }
            DurationField durationfield3 = chronology.l();
            if (a(durationfield3))
            {
                d = durationfield3;
            }
            DurationField durationfield4 = chronology.o();
            if (a(durationfield4))
            {
                e = durationfield4;
            }
            DurationField durationfield5 = chronology.s();
            if (a(durationfield5))
            {
                f = durationfield5;
            }
            DurationField durationfield6 = chronology.w();
            if (a(durationfield6))
            {
                g = durationfield6;
            }
            DurationField durationfield7 = chronology.y();
            if (a(durationfield7))
            {
                h = durationfield7;
            }
            DurationField durationfield8 = chronology.B();
            if (a(durationfield8))
            {
                i = durationfield8;
            }
            DurationField durationfield9 = chronology.D();
            if (a(durationfield9))
            {
                j = durationfield9;
            }
            DurationField durationfield10 = chronology.H();
            if (a(durationfield10))
            {
                k = durationfield10;
            }
            DurationField durationfield11 = chronology.J();
            if (a(durationfield11))
            {
                l = durationfield11;
            }
            DateTimeField datetimefield = chronology.d();
            if (a(datetimefield))
            {
                m = datetimefield;
            }
            DateTimeField datetimefield1 = chronology.e();
            if (a(datetimefield1))
            {
                n = datetimefield1;
            }
            DateTimeField datetimefield2 = chronology.g();
            if (a(datetimefield2))
            {
                o = datetimefield2;
            }
            DateTimeField datetimefield3 = chronology.h();
            if (a(datetimefield3))
            {
                p = datetimefield3;
            }
            DateTimeField datetimefield4 = chronology.j();
            if (a(datetimefield4))
            {
                q = datetimefield4;
            }
            DateTimeField datetimefield5 = chronology.k();
            if (a(datetimefield5))
            {
                r = datetimefield5;
            }
            DateTimeField datetimefield6 = chronology.m();
            if (a(datetimefield6))
            {
                s = datetimefield6;
            }
            DateTimeField datetimefield7 = chronology.n();
            if (a(datetimefield7))
            {
                t = datetimefield7;
            }
            DateTimeField datetimefield8 = chronology.p();
            if (a(datetimefield8))
            {
                u = datetimefield8;
            }
            DateTimeField datetimefield9 = chronology.q();
            if (a(datetimefield9))
            {
                v = datetimefield9;
            }
            DateTimeField datetimefield10 = chronology.r();
            if (a(datetimefield10))
            {
                w = datetimefield10;
            }
            DateTimeField datetimefield11 = chronology.t();
            if (a(datetimefield11))
            {
                x = datetimefield11;
            }
            DateTimeField datetimefield12 = chronology.u();
            if (a(datetimefield12))
            {
                y = datetimefield12;
            }
            DateTimeField datetimefield13 = chronology.v();
            if (a(datetimefield13))
            {
                z = datetimefield13;
            }
            DateTimeField datetimefield14 = chronology.x();
            if (a(datetimefield14))
            {
                A = datetimefield14;
            }
            DateTimeField datetimefield15 = chronology.z();
            if (a(datetimefield15))
            {
                B = datetimefield15;
            }
            DateTimeField datetimefield16 = chronology.A();
            if (a(datetimefield16))
            {
                C = datetimefield16;
            }
            DateTimeField datetimefield17 = chronology.C();
            if (a(datetimefield17))
            {
                D = datetimefield17;
            }
            DateTimeField datetimefield18 = chronology.E();
            if (a(datetimefield18))
            {
                E = datetimefield18;
            }
            DateTimeField datetimefield19 = chronology.F();
            if (a(datetimefield19))
            {
                F = datetimefield19;
            }
            DateTimeField datetimefield20 = chronology.G();
            if (a(datetimefield20))
            {
                G = datetimefield20;
            }
            DateTimeField datetimefield21 = chronology.I();
            if (a(datetimefield21))
            {
                H = datetimefield21;
            }
            DateTimeField datetimefield22 = chronology.K();
            if (a(datetimefield22))
            {
                I = datetimefield22;
            }
        }

        Fields()
        {
        }
    }


    private transient DateTimeField A;
    private transient DateTimeField B;
    private transient DateTimeField C;
    private transient DateTimeField D;
    private transient DateTimeField E;
    private transient DateTimeField F;
    private transient DateTimeField G;
    private transient DateTimeField H;
    private transient DateTimeField I;
    private transient DateTimeField J;
    private transient DateTimeField K;
    private transient int L;
    private final Chronology a;
    private final Object b;
    private transient DurationField c;
    private transient DurationField d;
    private transient DurationField e;
    private transient DurationField f;
    private transient DurationField g;
    private transient DurationField h;
    private transient DurationField i;
    private transient DurationField j;
    private transient DurationField k;
    private transient DurationField l;
    private transient DurationField m;
    private transient DurationField n;
    private transient DateTimeField o;
    private transient DateTimeField p;
    private transient DateTimeField q;
    private transient DateTimeField r;
    private transient DateTimeField s;
    private transient DateTimeField t;
    private transient DateTimeField u;
    private transient DateTimeField v;
    private transient DateTimeField w;
    private transient DateTimeField x;
    private transient DateTimeField y;
    private transient DateTimeField z;

    protected AssembledChronology(Chronology chronology, Object obj)
    {
        a = chronology;
        b = obj;
        N();
    }

    private void N()
    {
        Fields fields = new Fields();
        if (a != null)
        {
            fields.a(a);
        }
        a(fields);
        DurationField durationfield = fields.a;
        DurationField durationfield1;
        DurationField durationfield2;
        DurationField durationfield3;
        DurationField durationfield4;
        DurationField durationfield5;
        DurationField durationfield6;
        DurationField durationfield7;
        DurationField durationfield8;
        DurationField durationfield9;
        DurationField durationfield10;
        DurationField durationfield11;
        DateTimeField datetimefield;
        DateTimeField datetimefield1;
        DateTimeField datetimefield2;
        DateTimeField datetimefield3;
        DateTimeField datetimefield4;
        DateTimeField datetimefield5;
        DateTimeField datetimefield6;
        DateTimeField datetimefield7;
        DateTimeField datetimefield8;
        DateTimeField datetimefield9;
        DateTimeField datetimefield10;
        DateTimeField datetimefield11;
        DateTimeField datetimefield12;
        DateTimeField datetimefield13;
        DateTimeField datetimefield14;
        DateTimeField datetimefield15;
        DateTimeField datetimefield16;
        DateTimeField datetimefield17;
        DateTimeField datetimefield18;
        DateTimeField datetimefield19;
        DateTimeField datetimefield20;
        DateTimeField datetimefield21;
        DateTimeField datetimefield22;
        Chronology chronology;
        int i1;
        if (durationfield == null)
        {
            durationfield = super.c();
        }
        c = durationfield;
        durationfield1 = fields.b;
        if (durationfield1 == null)
        {
            durationfield1 = super.f();
        }
        d = durationfield1;
        durationfield2 = fields.c;
        if (durationfield2 == null)
        {
            durationfield2 = super.i();
        }
        e = durationfield2;
        durationfield3 = fields.d;
        if (durationfield3 == null)
        {
            durationfield3 = super.l();
        }
        f = durationfield3;
        durationfield4 = fields.e;
        if (durationfield4 == null)
        {
            durationfield4 = super.o();
        }
        g = durationfield4;
        durationfield5 = fields.f;
        if (durationfield5 == null)
        {
            durationfield5 = super.s();
        }
        h = durationfield5;
        durationfield6 = fields.g;
        if (durationfield6 == null)
        {
            durationfield6 = super.w();
        }
        i = durationfield6;
        durationfield7 = fields.h;
        if (durationfield7 == null)
        {
            durationfield7 = super.y();
        }
        j = durationfield7;
        durationfield8 = fields.i;
        if (durationfield8 == null)
        {
            durationfield8 = super.B();
        }
        k = durationfield8;
        durationfield9 = fields.j;
        if (durationfield9 == null)
        {
            durationfield9 = super.D();
        }
        l = durationfield9;
        durationfield10 = fields.k;
        if (durationfield10 == null)
        {
            durationfield10 = super.H();
        }
        m = durationfield10;
        durationfield11 = fields.l;
        if (durationfield11 == null)
        {
            durationfield11 = super.J();
        }
        n = durationfield11;
        datetimefield = fields.m;
        if (datetimefield == null)
        {
            datetimefield = super.d();
        }
        o = datetimefield;
        datetimefield1 = fields.n;
        if (datetimefield1 == null)
        {
            datetimefield1 = super.e();
        }
        p = datetimefield1;
        datetimefield2 = fields.o;
        if (datetimefield2 == null)
        {
            datetimefield2 = super.g();
        }
        q = datetimefield2;
        datetimefield3 = fields.p;
        if (datetimefield3 == null)
        {
            datetimefield3 = super.h();
        }
        r = datetimefield3;
        datetimefield4 = fields.q;
        if (datetimefield4 == null)
        {
            datetimefield4 = super.j();
        }
        s = datetimefield4;
        datetimefield5 = fields.r;
        if (datetimefield5 == null)
        {
            datetimefield5 = super.k();
        }
        t = datetimefield5;
        datetimefield6 = fields.s;
        if (datetimefield6 == null)
        {
            datetimefield6 = super.m();
        }
        u = datetimefield6;
        datetimefield7 = fields.t;
        if (datetimefield7 == null)
        {
            datetimefield7 = super.n();
        }
        v = datetimefield7;
        datetimefield8 = fields.u;
        if (datetimefield8 == null)
        {
            datetimefield8 = super.p();
        }
        w = datetimefield8;
        datetimefield9 = fields.v;
        if (datetimefield9 == null)
        {
            datetimefield9 = super.q();
        }
        x = datetimefield9;
        datetimefield10 = fields.w;
        if (datetimefield10 == null)
        {
            datetimefield10 = super.r();
        }
        y = datetimefield10;
        datetimefield11 = fields.x;
        if (datetimefield11 == null)
        {
            datetimefield11 = super.t();
        }
        z = datetimefield11;
        datetimefield12 = fields.y;
        if (datetimefield12 == null)
        {
            datetimefield12 = super.u();
        }
        A = datetimefield12;
        datetimefield13 = fields.z;
        if (datetimefield13 == null)
        {
            datetimefield13 = super.v();
        }
        B = datetimefield13;
        datetimefield14 = fields.A;
        if (datetimefield14 == null)
        {
            datetimefield14 = super.x();
        }
        C = datetimefield14;
        datetimefield15 = fields.B;
        if (datetimefield15 == null)
        {
            datetimefield15 = super.z();
        }
        D = datetimefield15;
        datetimefield16 = fields.C;
        if (datetimefield16 == null)
        {
            datetimefield16 = super.A();
        }
        E = datetimefield16;
        datetimefield17 = fields.D;
        if (datetimefield17 == null)
        {
            datetimefield17 = super.C();
        }
        F = datetimefield17;
        datetimefield18 = fields.E;
        if (datetimefield18 == null)
        {
            datetimefield18 = super.E();
        }
        G = datetimefield18;
        datetimefield19 = fields.F;
        if (datetimefield19 == null)
        {
            datetimefield19 = super.F();
        }
        H = datetimefield19;
        datetimefield20 = fields.G;
        if (datetimefield20 == null)
        {
            datetimefield20 = super.G();
        }
        I = datetimefield20;
        datetimefield21 = fields.H;
        if (datetimefield21 == null)
        {
            datetimefield21 = super.I();
        }
        J = datetimefield21;
        datetimefield22 = fields.I;
        if (datetimefield22 == null)
        {
            datetimefield22 = super.K();
        }
        K = datetimefield22;
        chronology = a;
        i1 = 0;
        if (chronology != null)
        {
            boolean flag;
            byte byte0;
            int j1;
            DateTimeField datetimefield23;
            DateTimeField datetimefield24;
            byte byte1;
            if (u == a.m() && s == a.j() && q == a.g() && o == a.d())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (p == a.e())
            {
                byte0 = 2;
            } else
            {
                byte0 = 0;
            }
            j1 = flag | byte0;
            datetimefield23 = G;
            datetimefield24 = a.E();
            byte1 = 0;
            if (datetimefield23 == datetimefield24)
            {
                DateTimeField datetimefield25 = F;
                DateTimeField datetimefield26 = a.C();
                byte1 = 0;
                if (datetimefield25 == datetimefield26)
                {
                    DateTimeField datetimefield27 = A;
                    DateTimeField datetimefield28 = a.u();
                    byte1 = 0;
                    if (datetimefield27 == datetimefield28)
                    {
                        byte1 = 4;
                    }
                }
            }
            i1 = byte1 | j1;
        }
        L = i1;
    }

    public final DateTimeField A()
    {
        return E;
    }

    public final DurationField B()
    {
        return k;
    }

    public final DateTimeField C()
    {
        return F;
    }

    public final DurationField D()
    {
        return l;
    }

    public final DateTimeField E()
    {
        return G;
    }

    public final DateTimeField F()
    {
        return H;
    }

    public final DateTimeField G()
    {
        return I;
    }

    public final DurationField H()
    {
        return m;
    }

    public final DateTimeField I()
    {
        return J;
    }

    public final DurationField J()
    {
        return n;
    }

    public final DateTimeField K()
    {
        return K;
    }

    protected final Chronology L()
    {
        return a;
    }

    protected final Object M()
    {
        return b;
    }

    public long a(int i1, int j1, int k1, int l1)
    {
        Chronology chronology = a;
        if (chronology != null && (6 & L) == 6)
        {
            return chronology.a(i1, j1, k1, l1);
        } else
        {
            return super.a(i1, j1, k1, l1);
        }
    }

    public long a(int i1, int j1, int k1, int l1, int i2, int j2, int k2)
    {
        Chronology chronology = a;
        if (chronology != null && (5 & L) == 5)
        {
            return chronology.a(i1, j1, k1, l1, i2, j2, k2);
        } else
        {
            return super.a(i1, j1, k1, l1, i2, j2, k2);
        }
    }

    public long a(long l1, int i1, int j1, int k1, int i2)
    {
        Chronology chronology = a;
        if (chronology != null && (1 & L) == 1)
        {
            return chronology.a(l1, i1, j1, k1, i2);
        } else
        {
            return super.a(l1, i1, j1, k1, i2);
        }
    }

    public DateTimeZone a()
    {
        Chronology chronology = a;
        if (chronology != null)
        {
            return chronology.a();
        } else
        {
            return null;
        }
    }

    protected abstract void a(Fields fields);

    public final DurationField c()
    {
        return c;
    }

    public final DateTimeField d()
    {
        return o;
    }

    public final DateTimeField e()
    {
        return p;
    }

    public final DurationField f()
    {
        return d;
    }

    public final DateTimeField g()
    {
        return q;
    }

    public final DateTimeField h()
    {
        return r;
    }

    public final DurationField i()
    {
        return e;
    }

    public final DateTimeField j()
    {
        return s;
    }

    public final DateTimeField k()
    {
        return t;
    }

    public final DurationField l()
    {
        return f;
    }

    public final DateTimeField m()
    {
        return u;
    }

    public final DateTimeField n()
    {
        return v;
    }

    public final DurationField o()
    {
        return g;
    }

    public final DateTimeField p()
    {
        return w;
    }

    public final DateTimeField q()
    {
        return x;
    }

    public final DateTimeField r()
    {
        return y;
    }

    public final DurationField s()
    {
        return h;
    }

    public final DateTimeField t()
    {
        return z;
    }

    public final DateTimeField u()
    {
        return A;
    }

    public final DateTimeField v()
    {
        return B;
    }

    public final DurationField w()
    {
        return i;
    }

    public final DateTimeField x()
    {
        return C;
    }

    public final DurationField y()
    {
        return j;
    }

    public final DateTimeField z()
    {
        return D;
    }
}
