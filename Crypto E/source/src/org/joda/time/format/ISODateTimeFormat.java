// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.joda.time.DateTimeFieldType;

// Referenced classes of package org.joda.time.format:
//            DateTimeFormatterBuilder, DateTimeFormatter, DateTimeParser

public class ISODateTimeFormat
{
    static final class Constants
    {

        private static final DateTimeFormatter A = u();
        private static final DateTimeFormatter B = v();
        private static final DateTimeFormatter C = w();
        private static final DateTimeFormatter D = x();
        private static final DateTimeFormatter E = y();
        private static final DateTimeFormatter F = z();
        private static final DateTimeFormatter G = D();
        private static final DateTimeFormatter H = E();
        private static final DateTimeFormatter I = A();
        private static final DateTimeFormatter J = B();
        private static final DateTimeFormatter K = C();
        private static final DateTimeFormatter L = F();
        private static final DateTimeFormatter M = G();
        private static final DateTimeFormatter N = H();
        private static final DateTimeFormatter O = I();
        private static final DateTimeFormatter P = J();
        private static final DateTimeFormatter Q = K();
        private static final DateTimeFormatter R = L();
        private static final DateTimeFormatter S = M();
        private static final DateTimeFormatter T = N();
        private static final DateTimeFormatter U = O();
        private static final DateTimeFormatter V = P();
        private static final DateTimeFormatter W = Q();
        private static final DateTimeFormatter X = R();
        private static final DateTimeFormatter Y = n();
        private static final DateTimeFormatter Z = q();
        private static final DateTimeFormatter a = af();
        private static final DateTimeFormatter aa = l();
        private static final DateTimeFormatter ab = m();
        private static final DateTimeFormatter ac = o();
        private static final DateTimeFormatter ad = p();
        private static final DateTimeFormatter ae = r();
        private static final DateTimeFormatter af = s();
        private static final DateTimeFormatter ag = t();
        private static final DateTimeFormatter b = ag();
        private static final DateTimeFormatter c = ah();
        private static final DateTimeFormatter d = ai();
        private static final DateTimeFormatter e = aj();
        private static final DateTimeFormatter f = ak();
        private static final DateTimeFormatter g = al();
        private static final DateTimeFormatter h = an();
        private static final DateTimeFormatter i = ao();
        private static final DateTimeFormatter j = ap();
        private static final DateTimeFormatter k = aq();
        private static final DateTimeFormatter l = ar();
        private static final DateTimeFormatter m = am();
        private static final DateTimeFormatter n = S();
        private static final DateTimeFormatter o = T();
        private static final DateTimeFormatter p = U();
        private static final DateTimeFormatter q = V();
        private static final DateTimeFormatter r = W();
        private static final DateTimeFormatter s = X();
        private static final DateTimeFormatter t = Y();
        private static final DateTimeFormatter u = Z();
        private static final DateTimeFormatter v = aa();
        private static final DateTimeFormatter w = ab();
        private static final DateTimeFormatter x = ac();
        private static final DateTimeFormatter y = ad();
        private static final DateTimeFormatter z = ae();

        private static DateTimeFormatter A()
        {
            if (I == null)
            {
                return (new DateTimeFormatterBuilder()).a(af()).a(al()).a();
            } else
            {
                return I;
            }
        }

        private static DateTimeFormatter B()
        {
            if (J == null)
            {
                return (new DateTimeFormatterBuilder()).a(A()).a(w()).a();
            } else
            {
                return J;
            }
        }

        private static DateTimeFormatter C()
        {
            if (K == null)
            {
                return (new DateTimeFormatterBuilder()).a(A()).a(x()).a();
            } else
            {
                return K;
            }
        }

        private static DateTimeFormatter D()
        {
            if (G == null)
            {
                return (new DateTimeFormatterBuilder()).a(ISODateTimeFormat.g()).a(w()).a();
            } else
            {
                return G;
            }
        }

        private static DateTimeFormatter E()
        {
            if (H == null)
            {
                return (new DateTimeFormatterBuilder()).a(ISODateTimeFormat.g()).a(x()).a();
            } else
            {
                return H;
            }
        }

        private static DateTimeFormatter F()
        {
            if (L == null)
            {
                return (new DateTimeFormatterBuilder()).e(4, 4).a(DateTimeFieldType.r(), 2).a(DateTimeFieldType.m(), 2).a();
            } else
            {
                return L;
            }
        }

        private static DateTimeFormatter G()
        {
            if (M == null)
            {
                return (new DateTimeFormatterBuilder()).a(DateTimeFieldType.g(), 2).a(DateTimeFieldType.e(), 2).a(DateTimeFieldType.c(), 2).a('.').a(3, 9).a("Z", false, 2, 2).a();
            } else
            {
                return M;
            }
        }

        private static DateTimeFormatter H()
        {
            if (N == null)
            {
                return (new DateTimeFormatterBuilder()).a(DateTimeFieldType.g(), 2).a(DateTimeFieldType.e(), 2).a(DateTimeFieldType.c(), 2).a("Z", false, 2, 2).a();
            } else
            {
                return N;
            }
        }

        private static DateTimeFormatter I()
        {
            if (O == null)
            {
                return (new DateTimeFormatterBuilder()).a(am()).a(G()).a();
            } else
            {
                return O;
            }
        }

        private static DateTimeFormatter J()
        {
            if (P == null)
            {
                return (new DateTimeFormatterBuilder()).a(am()).a(H()).a();
            } else
            {
                return P;
            }
        }

        private static DateTimeFormatter K()
        {
            if (Q == null)
            {
                return (new DateTimeFormatterBuilder()).a(F()).a(I()).a();
            } else
            {
                return Q;
            }
        }

        private static DateTimeFormatter L()
        {
            if (R == null)
            {
                return (new DateTimeFormatterBuilder()).a(F()).a(J()).a();
            } else
            {
                return R;
            }
        }

        private static DateTimeFormatter M()
        {
            if (S == null)
            {
                return (new DateTimeFormatterBuilder()).e(4, 4).a(DateTimeFieldType.n(), 3).a();
            } else
            {
                return S;
            }
        }

        private static DateTimeFormatter N()
        {
            if (T == null)
            {
                return (new DateTimeFormatterBuilder()).a(M()).a(I()).a();
            } else
            {
                return T;
            }
        }

        private static DateTimeFormatter O()
        {
            if (U == null)
            {
                return (new DateTimeFormatterBuilder()).a(M()).a(J()).a();
            } else
            {
                return U;
            }
        }

        private static DateTimeFormatter P()
        {
            if (V == null)
            {
                return (new DateTimeFormatterBuilder()).d(4, 4).a('W').a(DateTimeFieldType.o(), 2).a(DateTimeFieldType.l(), 1).a();
            } else
            {
                return V;
            }
        }

        private static DateTimeFormatter Q()
        {
            if (W == null)
            {
                return (new DateTimeFormatterBuilder()).a(P()).a(I()).a();
            } else
            {
                return W;
            }
        }

        private static DateTimeFormatter R()
        {
            if (X == null)
            {
                return (new DateTimeFormatterBuilder()).a(P()).a(J()).a();
            } else
            {
                return X;
            }
        }

        private static DateTimeFormatter S()
        {
            if (n == null)
            {
                return (new DateTimeFormatterBuilder()).a(af()).a(ag()).a();
            } else
            {
                return n;
            }
        }

        private static DateTimeFormatter T()
        {
            if (o == null)
            {
                return (new DateTimeFormatterBuilder()).a(af()).a(ag()).a(ah()).a();
            } else
            {
                return o;
            }
        }

        private static DateTimeFormatter U()
        {
            if (p == null)
            {
                return (new DateTimeFormatterBuilder()).a(ai()).a(aj()).a();
            } else
            {
                return p;
            }
        }

        private static DateTimeFormatter V()
        {
            if (q == null)
            {
                return (new DateTimeFormatterBuilder()).a(ai()).a(aj()).a(ak()).a();
            } else
            {
                return q;
            }
        }

        private static DateTimeFormatter W()
        {
            if (r == null)
            {
                return (new DateTimeFormatterBuilder()).a(an()).a(ao()).a();
            } else
            {
                return r;
            }
        }

        private static DateTimeFormatter X()
        {
            if (s == null)
            {
                return (new DateTimeFormatterBuilder()).a(an()).a(ao()).a(ap()).a();
            } else
            {
                return s;
            }
        }

        private static DateTimeFormatter Y()
        {
            if (t == null)
            {
                return (new DateTimeFormatterBuilder()).a(an()).a(ao()).a(ap()).a('.').a(3, 3).a();
            } else
            {
                return t;
            }
        }

        private static DateTimeFormatter Z()
        {
            if (u == null)
            {
                return (new DateTimeFormatterBuilder()).a(an()).a(ao()).a(ap()).a(aq()).a();
            } else
            {
                return u;
            }
        }

        static DateTimeFormatter a()
        {
            return a;
        }

        private static DateTimeFormatter aa()
        {
            if (v == null)
            {
                return (new DateTimeFormatterBuilder()).a(ISODateTimeFormat.c()).a(am()).a(ISODateTimeFormat.j()).a();
            } else
            {
                return v;
            }
        }

        private static DateTimeFormatter ab()
        {
            if (w == null)
            {
                return (new DateTimeFormatterBuilder()).a(ISODateTimeFormat.c()).a(am()).a(W()).a();
            } else
            {
                return w;
            }
        }

        private static DateTimeFormatter ac()
        {
            if (x == null)
            {
                return (new DateTimeFormatterBuilder()).a(ISODateTimeFormat.c()).a(am()).a(X()).a();
            } else
            {
                return x;
            }
        }

        private static DateTimeFormatter ad()
        {
            if (y == null)
            {
                return (new DateTimeFormatterBuilder()).a(ISODateTimeFormat.c()).a(am()).a(Y()).a();
            } else
            {
                return y;
            }
        }

        private static DateTimeFormatter ae()
        {
            if (z == null)
            {
                return (new DateTimeFormatterBuilder()).a(ISODateTimeFormat.c()).a(am()).a(Z()).a();
            } else
            {
                return z;
            }
        }

        private static DateTimeFormatter af()
        {
            if (a == null)
            {
                return (new DateTimeFormatterBuilder()).e(4, 9).a();
            } else
            {
                return a;
            }
        }

        private static DateTimeFormatter ag()
        {
            if (b == null)
            {
                return (new DateTimeFormatterBuilder()).a('-').l(2).a();
            } else
            {
                return b;
            }
        }

        private static DateTimeFormatter ah()
        {
            if (c == null)
            {
                return (new DateTimeFormatterBuilder()).a('-').i(2).a();
            } else
            {
                return c;
            }
        }

        private static DateTimeFormatter ai()
        {
            if (d == null)
            {
                return (new DateTimeFormatterBuilder()).d(4, 9).a();
            } else
            {
                return d;
            }
        }

        private static DateTimeFormatter aj()
        {
            if (e == null)
            {
                return (new DateTimeFormatterBuilder()).a("-W").k(2).a();
            } else
            {
                return e;
            }
        }

        private static DateTimeFormatter ak()
        {
            if (f == null)
            {
                return (new DateTimeFormatterBuilder()).a('-').h(1).a();
            } else
            {
                return f;
            }
        }

        private static DateTimeFormatter al()
        {
            if (g == null)
            {
                return (new DateTimeFormatterBuilder()).a('-').j(3).a();
            } else
            {
                return g;
            }
        }

        private static DateTimeFormatter am()
        {
            if (m == null)
            {
                return (new DateTimeFormatterBuilder()).a('T').a();
            } else
            {
                return m;
            }
        }

        private static DateTimeFormatter an()
        {
            if (h == null)
            {
                return (new DateTimeFormatterBuilder()).d(2).a();
            } else
            {
                return h;
            }
        }

        private static DateTimeFormatter ao()
        {
            if (i == null)
            {
                return (new DateTimeFormatterBuilder()).a(':').c(2).a();
            } else
            {
                return i;
            }
        }

        private static DateTimeFormatter ap()
        {
            if (j == null)
            {
                return (new DateTimeFormatterBuilder()).a(':').b(2).a();
            } else
            {
                return j;
            }
        }

        private static DateTimeFormatter aq()
        {
            if (k == null)
            {
                return (new DateTimeFormatterBuilder()).a('.').a(3, 9).a();
            } else
            {
                return k;
            }
        }

        private static DateTimeFormatter ar()
        {
            if (l == null)
            {
                return (new DateTimeFormatterBuilder()).a("Z", true, 2, 4).a();
            } else
            {
                return l;
            }
        }

        static DateTimeFormatter b()
        {
            return d;
        }

        static DateTimeFormatter c()
        {
            return ab;
        }

        static DateTimeFormatter d()
        {
            return ae;
        }

        static DateTimeFormatter e()
        {
            return A;
        }

        static DateTimeFormatter f()
        {
            return C;
        }

        static DateTimeFormatter g()
        {
            return E;
        }

        static DateTimeFormatter h()
        {
            return q;
        }

        static DateTimeFormatter i()
        {
            return n;
        }

        static DateTimeFormatter j()
        {
            return o;
        }

        static DateTimeFormatter k()
        {
            return h;
        }

        private static DateTimeFormatter l()
        {
            if (aa == null)
            {
                DateTimeParser datetimeparser = (new DateTimeFormatterBuilder()).a('T').a(ar()).b();
                return (new DateTimeFormatterBuilder()).a(n()).b(datetimeparser).a();
            } else
            {
                return aa;
            }
        }

        private static DateTimeFormatter m()
        {
            if (ab == null)
            {
                return n().c();
            } else
            {
                return ab;
            }
        }

        private static DateTimeFormatter n()
        {
            if (Y == null)
            {
                DateTimeFormatterBuilder datetimeformatterbuilder = new DateTimeFormatterBuilder();
                DateTimeParser adatetimeparser[] = new DateTimeParser[3];
                adatetimeparser[0] = (new DateTimeFormatterBuilder()).a(af()).b((new DateTimeFormatterBuilder()).a(ag()).b(ah().b()).b()).b();
                adatetimeparser[1] = (new DateTimeFormatterBuilder()).a(ai()).a(aj()).b(ak().b()).b();
                adatetimeparser[2] = (new DateTimeFormatterBuilder()).a(af()).a(al()).b();
                return datetimeformatterbuilder.a(null, adatetimeparser).a();
            } else
            {
                return Y;
            }
        }

        private static DateTimeFormatter o()
        {
            if (ac == null)
            {
                return (new DateTimeFormatterBuilder()).b(am().b()).a(q()).b(ar().b()).a();
            } else
            {
                return ac;
            }
        }

        private static DateTimeFormatter p()
        {
            if (ad == null)
            {
                return (new DateTimeFormatterBuilder()).b(am().b()).a(q()).a().c();
            } else
            {
                return ad;
            }
        }

        private static DateTimeFormatter q()
        {
            if (Z == null)
            {
                DateTimeFormatterBuilder datetimeformatterbuilder = new DateTimeFormatterBuilder();
                DateTimeParser adatetimeparser[] = new DateTimeParser[2];
                adatetimeparser[0] = (new DateTimeFormatterBuilder()).a('.').b();
                adatetimeparser[1] = (new DateTimeFormatterBuilder()).a(',').b();
                DateTimeParser datetimeparser = datetimeformatterbuilder.a(null, adatetimeparser).b();
                DateTimeFormatterBuilder datetimeformatterbuilder1 = (new DateTimeFormatterBuilder()).a(an());
                DateTimeParser adatetimeparser1[] = new DateTimeParser[3];
                DateTimeFormatterBuilder datetimeformatterbuilder2 = (new DateTimeFormatterBuilder()).a(ao());
                DateTimeParser adatetimeparser2[] = new DateTimeParser[3];
                adatetimeparser2[0] = (new DateTimeFormatterBuilder()).a(ap()).b((new DateTimeFormatterBuilder()).a(datetimeparser).a(1, 9).b()).b();
                adatetimeparser2[1] = (new DateTimeFormatterBuilder()).a(datetimeparser).b(1, 9).b();
                adatetimeparser2[2] = null;
                adatetimeparser1[0] = datetimeformatterbuilder2.a(null, adatetimeparser2).b();
                adatetimeparser1[1] = (new DateTimeFormatterBuilder()).a(datetimeparser).c(1, 9).b();
                adatetimeparser1[2] = null;
                return datetimeformatterbuilder1.a(null, adatetimeparser1).a();
            } else
            {
                return Z;
            }
        }

        private static DateTimeFormatter r()
        {
            if (ae == null)
            {
                DateTimeParser datetimeparser = (new DateTimeFormatterBuilder()).a('T').a(q()).b(ar().b()).b();
                DateTimeFormatterBuilder datetimeformatterbuilder = new DateTimeFormatterBuilder();
                DateTimeParser adatetimeparser[] = new DateTimeParser[2];
                adatetimeparser[0] = datetimeparser;
                adatetimeparser[1] = s().b();
                return datetimeformatterbuilder.a(null, adatetimeparser).a();
            } else
            {
                return ae;
            }
        }

        private static DateTimeFormatter s()
        {
            if (af == null)
            {
                DateTimeParser datetimeparser = (new DateTimeFormatterBuilder()).a('T').b(q().b()).b(ar().b()).b();
                return (new DateTimeFormatterBuilder()).a(n()).b(datetimeparser).a();
            } else
            {
                return af;
            }
        }

        private static DateTimeFormatter t()
        {
            if (ag == null)
            {
                DateTimeParser datetimeparser = (new DateTimeFormatterBuilder()).a('T').a(q()).b();
                return (new DateTimeFormatterBuilder()).a(n()).b(datetimeparser).a().c();
            } else
            {
                return ag;
            }
        }

        private static DateTimeFormatter u()
        {
            if (A == null)
            {
                return (new DateTimeFormatterBuilder()).a(Z()).a(ar()).a();
            } else
            {
                return A;
            }
        }

        private static DateTimeFormatter v()
        {
            if (B == null)
            {
                return (new DateTimeFormatterBuilder()).a(X()).a(ar()).a();
            } else
            {
                return B;
            }
        }

        private static DateTimeFormatter w()
        {
            if (C == null)
            {
                return (new DateTimeFormatterBuilder()).a(am()).a(u()).a();
            } else
            {
                return C;
            }
        }

        private static DateTimeFormatter x()
        {
            if (D == null)
            {
                return (new DateTimeFormatterBuilder()).a(am()).a(v()).a();
            } else
            {
                return D;
            }
        }

        private static DateTimeFormatter y()
        {
            if (E == null)
            {
                return (new DateTimeFormatterBuilder()).a(ISODateTimeFormat.c()).a(w()).a();
            } else
            {
                return E;
            }
        }

        private static DateTimeFormatter z()
        {
            if (F == null)
            {
                return (new DateTimeFormatterBuilder()).a(ISODateTimeFormat.c()).a(x()).a();
            } else
            {
                return F;
            }
        }


        Constants()
        {
        }
    }


    protected ISODateTimeFormat()
    {
    }

    public static DateTimeFormatter a()
    {
        return Constants.c();
    }

    public static DateTimeFormatter a(Collection collection, boolean flag, boolean flag1)
    {
        if (collection == null || collection.size() == 0)
        {
            throw new IllegalArgumentException("The fields must not be null or empty");
        }
        HashSet hashset = new HashSet(collection);
        int k = hashset.size();
        DateTimeFormatterBuilder datetimeformatterbuilder = new DateTimeFormatterBuilder();
        boolean flag2;
        boolean flag3;
        if (hashset.contains(DateTimeFieldType.r()))
        {
            flag2 = a(datetimeformatterbuilder, ((Collection) (hashset)), flag, flag1);
        } else
        if (hashset.contains(DateTimeFieldType.n()))
        {
            flag2 = b(datetimeformatterbuilder, hashset, flag, flag1);
        } else
        if (hashset.contains(DateTimeFieldType.o()))
        {
            flag2 = c(datetimeformatterbuilder, hashset, flag, flag1);
        } else
        if (hashset.contains(DateTimeFieldType.m()))
        {
            flag2 = a(datetimeformatterbuilder, ((Collection) (hashset)), flag, flag1);
        } else
        if (hashset.contains(DateTimeFieldType.l()))
        {
            flag2 = c(datetimeformatterbuilder, hashset, flag, flag1);
        } else
        if (hashset.remove(DateTimeFieldType.s()))
        {
            datetimeformatterbuilder.a(Constants.a());
            flag2 = true;
        } else
        if (hashset.remove(DateTimeFieldType.p()))
        {
            datetimeformatterbuilder.a(Constants.b());
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (hashset.size() < k)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        a(datetimeformatterbuilder, ((Collection) (hashset)), flag, flag1, flag2, flag3);
        if (!datetimeformatterbuilder.c())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("No valid format for fields: ").append(collection).toString());
        }
        try
        {
            collection.retainAll(hashset);
        }
        catch (UnsupportedOperationException unsupportedoperationexception) { }
        return datetimeformatterbuilder.a();
    }

    private static void a(Collection collection, boolean flag)
    {
        if (flag)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("No valid ISO8601 format for fields: ").append(collection).toString());
        } else
        {
            return;
        }
    }

    private static void a(DateTimeFormatterBuilder datetimeformatterbuilder, Collection collection, boolean flag, boolean flag1, boolean flag2, boolean flag3)
    {
        boolean flag4;
        boolean flag5;
        boolean flag6;
        boolean flag7;
        flag4 = collection.remove(DateTimeFieldType.g());
        flag5 = collection.remove(DateTimeFieldType.e());
        flag6 = collection.remove(DateTimeFieldType.c());
        flag7 = collection.remove(DateTimeFieldType.a());
        if (flag4 || flag5 || flag6 || flag7) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (flag4 || flag5 || flag6 || flag7)
        {
            if (flag1 && flag2)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("No valid ISO8601 format for fields because Date was reduced precision: ").append(collection).toString());
            }
            if (flag3)
            {
                datetimeformatterbuilder.a('T');
            }
        }
        if ((!flag4 || !flag5 || !flag6) && (!flag4 || flag6 || flag7)) goto _L4; else goto _L3
_L3:
        if (flag4)
        {
            datetimeformatterbuilder.d(2);
        } else
        if (flag5 || flag6 || flag7)
        {
            datetimeformatterbuilder.a('-');
        }
        if (flag && flag4 && flag5)
        {
            datetimeformatterbuilder.a(':');
        }
        if (flag5)
        {
            datetimeformatterbuilder.c(2);
        } else
        if (flag6 || flag7)
        {
            datetimeformatterbuilder.a('-');
        }
        if (flag && flag5 && flag6)
        {
            datetimeformatterbuilder.a(':');
        }
        if (flag6)
        {
            datetimeformatterbuilder.b(2);
        } else
        if (flag7)
        {
            datetimeformatterbuilder.a('-');
        }
        if (flag7)
        {
            datetimeformatterbuilder.a('.');
            datetimeformatterbuilder.a(3);
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
        if (flag1 && flag3)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("No valid ISO8601 format for fields because Time was truncated: ").append(collection).toString());
        }
        if ((flag4 || (!flag5 || !flag6) && (!flag5 || flag7) && !flag6) && flag1)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("No valid ISO8601 format for fields: ").append(collection).toString());
        }
          goto _L3
    }

    private static void a(DateTimeFormatterBuilder datetimeformatterbuilder, boolean flag)
    {
        if (flag)
        {
            datetimeformatterbuilder.a('-');
        }
    }

    private static boolean a(DateTimeFormatterBuilder datetimeformatterbuilder, Collection collection, boolean flag, boolean flag1)
    {
        if (!collection.remove(DateTimeFieldType.s())) goto _L2; else goto _L1
_L1:
        datetimeformatterbuilder.a(Constants.a());
        if (!collection.remove(DateTimeFieldType.r())) goto _L4; else goto _L3
_L3:
        if (!collection.remove(DateTimeFieldType.m())) goto _L6; else goto _L5
_L5:
        a(datetimeformatterbuilder, flag);
        datetimeformatterbuilder.l(2);
        a(datetimeformatterbuilder, flag);
        datetimeformatterbuilder.i(2);
_L8:
        return false;
_L6:
        datetimeformatterbuilder.a('-');
        datetimeformatterbuilder.l(2);
        return true;
_L4:
        if (collection.remove(DateTimeFieldType.m()))
        {
            a(collection, flag1);
            datetimeformatterbuilder.a('-');
            datetimeformatterbuilder.a('-');
            datetimeformatterbuilder.i(2);
            return false;
        } else
        {
            return true;
        }
_L2:
        if (collection.remove(DateTimeFieldType.r()))
        {
            datetimeformatterbuilder.a('-');
            datetimeformatterbuilder.a('-');
            datetimeformatterbuilder.l(2);
            if (collection.remove(DateTimeFieldType.m()))
            {
                a(datetimeformatterbuilder, flag);
                datetimeformatterbuilder.i(2);
                return false;
            } else
            {
                return true;
            }
        }
        if (collection.remove(DateTimeFieldType.m()))
        {
            datetimeformatterbuilder.a('-');
            datetimeformatterbuilder.a('-');
            datetimeformatterbuilder.a('-');
            datetimeformatterbuilder.i(2);
            return false;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static DateTimeFormatter b()
    {
        return Constants.d();
    }

    private static boolean b(DateTimeFormatterBuilder datetimeformatterbuilder, Collection collection, boolean flag, boolean flag1)
    {
        if (!collection.remove(DateTimeFieldType.s())) goto _L2; else goto _L1
_L1:
        datetimeformatterbuilder.a(Constants.a());
        if (!collection.remove(DateTimeFieldType.n())) goto _L4; else goto _L3
_L3:
        a(datetimeformatterbuilder, flag);
        datetimeformatterbuilder.j(3);
_L6:
        return false;
_L4:
        return true;
_L2:
        if (collection.remove(DateTimeFieldType.n()))
        {
            datetimeformatterbuilder.a('-');
            datetimeformatterbuilder.j(3);
            return false;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static DateTimeFormatter c()
    {
        return i();
    }

    private static boolean c(DateTimeFormatterBuilder datetimeformatterbuilder, Collection collection, boolean flag, boolean flag1)
    {
        if (!collection.remove(DateTimeFieldType.p())) goto _L2; else goto _L1
_L1:
        datetimeformatterbuilder.a(Constants.b());
        if (!collection.remove(DateTimeFieldType.o())) goto _L4; else goto _L3
_L3:
        a(datetimeformatterbuilder, flag);
        datetimeformatterbuilder.a('W');
        datetimeformatterbuilder.k(2);
        if (!collection.remove(DateTimeFieldType.l())) goto _L6; else goto _L5
_L5:
        a(datetimeformatterbuilder, flag);
        datetimeformatterbuilder.h(1);
_L8:
        return false;
_L6:
        return true;
_L4:
        if (collection.remove(DateTimeFieldType.l()))
        {
            a(collection, flag1);
            a(datetimeformatterbuilder, flag);
            datetimeformatterbuilder.a('W');
            datetimeformatterbuilder.a('-');
            datetimeformatterbuilder.h(1);
            return false;
        } else
        {
            return true;
        }
_L2:
        if (collection.remove(DateTimeFieldType.o()))
        {
            datetimeformatterbuilder.a('-');
            datetimeformatterbuilder.a('W');
            datetimeformatterbuilder.k(2);
            if (collection.remove(DateTimeFieldType.l()))
            {
                a(datetimeformatterbuilder, flag);
                datetimeformatterbuilder.h(1);
                return false;
            } else
            {
                return true;
            }
        }
        if (collection.remove(DateTimeFieldType.l()))
        {
            datetimeformatterbuilder.a('-');
            datetimeformatterbuilder.a('W');
            datetimeformatterbuilder.a('-');
            datetimeformatterbuilder.h(1);
            return false;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static DateTimeFormatter d()
    {
        return Constants.e();
    }

    public static DateTimeFormatter e()
    {
        return Constants.f();
    }

    public static DateTimeFormatter f()
    {
        return Constants.g();
    }

    public static DateTimeFormatter g()
    {
        return Constants.h();
    }

    public static DateTimeFormatter h()
    {
        return Constants.i();
    }

    public static DateTimeFormatter i()
    {
        return Constants.j();
    }

    public static DateTimeFormatter j()
    {
        return Constants.k();
    }
}
