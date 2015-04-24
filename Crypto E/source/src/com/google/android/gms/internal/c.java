// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, ri, rj, rq, 
//            ro, rt, rl

public interface com.google.android.gms.internal.c
{
    public static final class a extends rk
    {

        public int fn;
        public int fo;
        public int level;

        public a a(ri ri1)
        {
_L6:
            int k = ri1.tJ();
            k;
            JVM INSTR lookupswitch 4: default 48
        //                       0: 57
        //                       8: 59
        //                       16: 103
        //                       24: 114;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            if (a(ri1, k)) goto _L6; else goto _L2
_L2:
            return this;
_L3:
            int l = ri1.tM();
            switch (l)
            {
            case 1: // '\001'
            case 2: // '\002'
            case 3: // '\003'
                level = l;
                break;
            }
            continue; /* Loop/switch isn't completed */
_L4:
            fn = ri1.tM();
            continue; /* Loop/switch isn't completed */
_L5:
            fo = ri1.tM();
            if (true) goto _L6; else goto _L7
_L7:
        }

        public void a(rj rj1)
        {
            if (level != 1)
            {
                rj1.z(1, level);
            }
            if (fn != 0)
            {
                rj1.z(2, fn);
            }
            if (fo != 0)
            {
                rj1.z(3, fo);
            }
            super.a(rj1);
        }

        public a b()
        {
            level = 1;
            fn = 0;
            fo = 0;
            aGo = null;
            aGz = -1;
            return this;
        }

        public rq b(ri ri1)
        {
            return a(ri1);
        }

        protected int c()
        {
            int k = super.c();
            if (level != 1)
            {
                k += rj.B(1, level);
            }
            if (fn != 0)
            {
                k += rj.B(2, fn);
            }
            if (fo != 0)
            {
                k += rj.B(3, fo);
            }
            return k;
        }

        public boolean equals(Object obj)
        {
            boolean flag1;
            if (obj == this)
            {
                flag1 = true;
            } else
            {
                boolean flag = obj instanceof a;
                flag1 = false;
                if (flag)
                {
                    a a1 = (a)obj;
                    int k = level;
                    int l = a1.level;
                    flag1 = false;
                    if (k == l)
                    {
                        int i1 = fn;
                        int j1 = a1.fn;
                        flag1 = false;
                        if (i1 == j1)
                        {
                            int k1 = fo;
                            int l1 = a1.fo;
                            flag1 = false;
                            if (k1 == l1)
                            {
                                return a(a1);
                            }
                        }
                    }
                }
            }
            return flag1;
        }

        public int hashCode()
        {
            return 31 * (31 * (31 * (527 + level) + fn) + fo) + ua();
        }

        public a()
        {
            b();
        }
    }

    public static final class b extends rk
    {

        private static volatile b fp[];
        public int fq[];
        public int fr;
        public boolean fs;
        public boolean ft;
        public int name;

        public static b[] d()
        {
            if (fp == null)
            {
                synchronized (ro.aGy)
                {
                    if (fp == null)
                    {
                        fp = new b[0];
                    }
                }
            }
            return fp;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(rj rj1)
        {
            if (ft)
            {
                rj1.b(1, ft);
            }
            rj1.z(2, fr);
            if (fq != null && fq.length > 0)
            {
                for (int k = 0; k < fq.length; k++)
                {
                    rj1.z(3, fq[k]);
                }

            }
            if (name != 0)
            {
                rj1.z(4, name);
            }
            if (fs)
            {
                rj1.b(6, fs);
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return c(ri1);
        }

        protected int c()
        {
            int k = 0;
            int l = super.c();
            if (ft)
            {
                l += rj.c(1, ft);
            }
            int i1 = l + rj.B(2, fr);
            int j1;
            if (fq != null && fq.length > 0)
            {
                for (int k1 = 0; k1 < fq.length; k1++)
                {
                    k += rj.ie(fq[k1]);
                }

                j1 = i1 + k + 1 * fq.length;
            } else
            {
                j1 = i1;
            }
            if (name != 0)
            {
                j1 += rj.B(4, name);
            }
            if (fs)
            {
                j1 += rj.c(6, fs);
            }
            return j1;
        }

        public b c(ri ri1)
        {
            do
            {
                int k = ri1.tJ();
                switch (k)
                {
                default:
                    if (a(ri1, k))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 8: // '\b'
                    ft = ri1.tN();
                    break;

                case 16: // '\020'
                    fr = ri1.tM();
                    break;

                case 24: // '\030'
                    int l1 = rt.b(ri1, 24);
                    int i2;
                    int ai1[];
                    if (fq == null)
                    {
                        i2 = 0;
                    } else
                    {
                        i2 = fq.length;
                    }
                    ai1 = new int[l1 + i2];
                    if (i2 != 0)
                    {
                        System.arraycopy(fq, 0, ai1, 0, i2);
                    }
                    for (; i2 < -1 + ai1.length; i2++)
                    {
                        ai1[i2] = ri1.tM();
                        ri1.tJ();
                    }

                    ai1[i2] = ri1.tM();
                    fq = ai1;
                    break;

                case 26: // '\032'
                    int l = ri1.hX(ri1.tQ());
                    int i1 = ri1.getPosition();
                    int j1;
                    for (j1 = 0; ri1.tV() > 0; j1++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(i1);
                    int k1;
                    int ai[];
                    if (fq == null)
                    {
                        k1 = 0;
                    } else
                    {
                        k1 = fq.length;
                    }
                    ai = new int[j1 + k1];
                    if (k1 != 0)
                    {
                        System.arraycopy(fq, 0, ai, 0, k1);
                    }
                    for (; k1 < ai.length; k1++)
                    {
                        ai[k1] = ri1.tM();
                    }

                    fq = ai;
                    ri1.hY(l);
                    break;

                case 32: // ' '
                    name = ri1.tM();
                    break;

                case 48: // '0'
                    fs = ri1.tN();
                    break;
                }
            } while (true);
        }

        public b e()
        {
            fq = rt.aGB;
            fr = 0;
            name = 0;
            fs = false;
            ft = false;
            aGo = null;
            aGz = -1;
            return this;
        }

        public boolean equals(Object obj)
        {
            boolean flag1;
            if (obj == this)
            {
                flag1 = true;
            } else
            {
                boolean flag = obj instanceof b;
                flag1 = false;
                if (flag)
                {
                    b b1 = (b)obj;
                    boolean flag2 = ro.equals(fq, b1.fq);
                    flag1 = false;
                    if (flag2)
                    {
                        int k = fr;
                        int l = b1.fr;
                        flag1 = false;
                        if (k == l)
                        {
                            int i1 = name;
                            int j1 = b1.name;
                            flag1 = false;
                            if (i1 == j1)
                            {
                                boolean flag3 = fs;
                                boolean flag4 = b1.fs;
                                flag1 = false;
                                if (flag3 == flag4)
                                {
                                    boolean flag5 = ft;
                                    boolean flag6 = b1.ft;
                                    flag1 = false;
                                    if (flag5 == flag6)
                                    {
                                        return a(b1);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return flag1;
        }

        public int hashCode()
        {
            char c1 = '\u04CF';
            int k = 31 * (31 * (31 * (527 + ro.hashCode(fq)) + fr) + name);
            char c2;
            int l;
            if (fs)
            {
                c2 = c1;
            } else
            {
                c2 = '\u04D5';
            }
            l = 31 * (c2 + k);
            if (!ft)
            {
                c1 = '\u04D5';
            }
            return 31 * (l + c1) + ua();
        }

        public b()
        {
            e();
        }
    }

    public static final class c extends rk
    {

        private static volatile c fu[];
        public String fv;
        public long fw;
        public long fx;
        public boolean fy;
        public long fz;

        public static c[] f()
        {
            if (fu == null)
            {
                synchronized (ro.aGy)
                {
                    if (fu == null)
                    {
                        fu = new c[0];
                    }
                }
            }
            return fu;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(rj rj1)
        {
            if (!fv.equals(""))
            {
                rj1.b(1, fv);
            }
            if (fw != 0L)
            {
                rj1.b(2, fw);
            }
            if (fx != 0x7fffffffL)
            {
                rj1.b(3, fx);
            }
            if (fy)
            {
                rj1.b(4, fy);
            }
            if (fz != 0L)
            {
                rj1.b(5, fz);
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return d(ri1);
        }

        protected int c()
        {
            int k = super.c();
            if (!fv.equals(""))
            {
                k += rj.k(1, fv);
            }
            if (fw != 0L)
            {
                k += rj.d(2, fw);
            }
            if (fx != 0x7fffffffL)
            {
                k += rj.d(3, fx);
            }
            if (fy)
            {
                k += rj.c(4, fy);
            }
            if (fz != 0L)
            {
                k += rj.d(5, fz);
            }
            return k;
        }

        public c d(ri ri1)
        {
            do
            {
                int k = ri1.tJ();
                switch (k)
                {
                default:
                    if (a(ri1, k))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    fv = ri1.readString();
                    break;

                case 16: // '\020'
                    fw = ri1.tL();
                    break;

                case 24: // '\030'
                    fx = ri1.tL();
                    break;

                case 32: // ' '
                    fy = ri1.tN();
                    break;

                case 40: // '('
                    fz = ri1.tL();
                    break;
                }
            } while (true);
        }

        public boolean equals(Object obj)
        {
            if (obj != this) goto _L2; else goto _L1
_L1:
            boolean flag1 = true;
_L4:
            return flag1;
_L2:
            c c1;
            boolean flag = obj instanceof c;
            flag1 = false;
            if (!flag)
            {
                continue; /* Loop/switch isn't completed */
            }
            c1 = (c)obj;
            if (fv != null)
            {
                break; /* Loop/switch isn't completed */
            }
            String s = c1.fv;
            flag1 = false;
            if (s != null)
            {
                continue; /* Loop/switch isn't completed */
            }
_L5:
            int k = fw != c1.fw;
            flag1 = false;
            if (k == 0)
            {
                int l = fx != c1.fx;
                flag1 = false;
                if (l == 0)
                {
                    boolean flag2 = fy;
                    boolean flag3 = c1.fy;
                    flag1 = false;
                    if (flag2 == flag3)
                    {
                        int i1 = fz != c1.fz;
                        flag1 = false;
                        if (i1 == 0)
                        {
                            return a(c1);
                        }
                    }
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
            if (!fv.equals(c1.fv))
            {
                return false;
            }
              goto _L5
            if (true) goto _L4; else goto _L6
_L6:
        }

        public c g()
        {
            fv = "";
            fw = 0L;
            fx = 0x7fffffffL;
            fy = false;
            fz = 0L;
            aGo = null;
            aGz = -1;
            return this;
        }

        public int hashCode()
        {
            int k;
            int l;
            char c1;
            if (fv == null)
            {
                k = 0;
            } else
            {
                k = fv.hashCode();
            }
            l = 31 * (31 * (31 * (k + 527) + (int)(fw ^ fw >>> 32)) + (int)(fx ^ fx >>> 32));
            if (fy)
            {
                c1 = '\u04CF';
            } else
            {
                c1 = '\u04D5';
            }
            return 31 * (31 * (c1 + l) + (int)(fz ^ fz >>> 32)) + ua();
        }

        public c()
        {
            g();
        }
    }

    public static final class d extends rk
    {

        public d.a fA[];
        public d.a fB[];
        public c fC[];

        public void a(rj rj1)
        {
            if (fA != null && fA.length > 0)
            {
                for (int j1 = 0; j1 < fA.length; j1++)
                {
                    d.a a2 = fA[j1];
                    if (a2 != null)
                    {
                        rj1.a(1, a2);
                    }
                }

            }
            if (fB != null && fB.length > 0)
            {
                for (int i1 = 0; i1 < fB.length; i1++)
                {
                    d.a a1 = fB[i1];
                    if (a1 != null)
                    {
                        rj1.a(2, a1);
                    }
                }

            }
            if (fC != null)
            {
                int k = fC.length;
                int l = 0;
                if (k > 0)
                {
                    for (; l < fC.length; l++)
                    {
                        c c1 = fC[l];
                        if (c1 != null)
                        {
                            rj1.a(3, c1);
                        }
                    }

                }
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return e(ri1);
        }

        protected int c()
        {
            int k = super.c();
            if (fA != null && fA.length > 0)
            {
                int l1 = k;
                for (int i2 = 0; i2 < fA.length; i2++)
                {
                    d.a a2 = fA[i2];
                    if (a2 != null)
                    {
                        l1 += rj.c(1, a2);
                    }
                }

                k = l1;
            }
            if (fB != null && fB.length > 0)
            {
                int j1 = k;
                for (int k1 = 0; k1 < fB.length; k1++)
                {
                    d.a a1 = fB[k1];
                    if (a1 != null)
                    {
                        j1 += rj.c(2, a1);
                    }
                }

                k = j1;
            }
            if (fC != null)
            {
                int l = fC.length;
                int i1 = 0;
                if (l > 0)
                {
                    for (; i1 < fC.length; i1++)
                    {
                        c c1 = fC[i1];
                        if (c1 != null)
                        {
                            k += rj.c(3, c1);
                        }
                    }

                }
            }
            return k;
        }

        public d e(ri ri1)
        {
            do
            {
                int k = ri1.tJ();
                switch (k)
                {
                default:
                    if (a(ri1, k))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    int l1 = rt.b(ri1, 10);
                    int i2;
                    d.a aa1[];
                    if (fA == null)
                    {
                        i2 = 0;
                    } else
                    {
                        i2 = fA.length;
                    }
                    aa1 = new d.a[l1 + i2];
                    if (i2 != 0)
                    {
                        System.arraycopy(fA, 0, aa1, 0, i2);
                    }
                    for (; i2 < -1 + aa1.length; i2++)
                    {
                        aa1[i2] = new d.a();
                        ri1.a(aa1[i2]);
                        ri1.tJ();
                    }

                    aa1[i2] = new d.a();
                    ri1.a(aa1[i2]);
                    fA = aa1;
                    break;

                case 18: // '\022'
                    int j1 = rt.b(ri1, 18);
                    int k1;
                    d.a aa[];
                    if (fB == null)
                    {
                        k1 = 0;
                    } else
                    {
                        k1 = fB.length;
                    }
                    aa = new d.a[j1 + k1];
                    if (k1 != 0)
                    {
                        System.arraycopy(fB, 0, aa, 0, k1);
                    }
                    for (; k1 < -1 + aa.length; k1++)
                    {
                        aa[k1] = new d.a();
                        ri1.a(aa[k1]);
                        ri1.tJ();
                    }

                    aa[k1] = new d.a();
                    ri1.a(aa[k1]);
                    fB = aa;
                    break;

                case 26: // '\032'
                    int l = rt.b(ri1, 26);
                    int i1;
                    c ac[];
                    if (fC == null)
                    {
                        i1 = 0;
                    } else
                    {
                        i1 = fC.length;
                    }
                    ac = new c[l + i1];
                    if (i1 != 0)
                    {
                        System.arraycopy(fC, 0, ac, 0, i1);
                    }
                    for (; i1 < -1 + ac.length; i1++)
                    {
                        ac[i1] = new c();
                        ri1.a(ac[i1]);
                        ri1.tJ();
                    }

                    ac[i1] = new c();
                    ri1.a(ac[i1]);
                    fC = ac;
                    break;
                }
            } while (true);
        }

        public boolean equals(Object obj)
        {
            boolean flag1;
            if (obj == this)
            {
                flag1 = true;
            } else
            {
                boolean flag = obj instanceof d;
                flag1 = false;
                if (flag)
                {
                    d d1 = (d)obj;
                    boolean flag2 = ro.equals(fA, d1.fA);
                    flag1 = false;
                    if (flag2)
                    {
                        boolean flag3 = ro.equals(fB, d1.fB);
                        flag1 = false;
                        if (flag3)
                        {
                            boolean flag4 = ro.equals(fC, d1.fC);
                            flag1 = false;
                            if (flag4)
                            {
                                return a(d1);
                            }
                        }
                    }
                }
            }
            return flag1;
        }

        public d h()
        {
            fA = com.google.android.gms.internal.d.a.r();
            fB = com.google.android.gms.internal.d.a.r();
            fC = c.f();
            aGo = null;
            aGz = -1;
            return this;
        }

        public int hashCode()
        {
            return 31 * (31 * (31 * (527 + ro.hashCode(fA)) + ro.hashCode(fB)) + ro.hashCode(fC)) + ua();
        }

        public d()
        {
            h();
        }
    }

    public static final class e extends rk
    {

        private static volatile e fD[];
        public int key;
        public int value;

        public static e[] i()
        {
            if (fD == null)
            {
                synchronized (ro.aGy)
                {
                    if (fD == null)
                    {
                        fD = new e[0];
                    }
                }
            }
            return fD;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(rj rj1)
        {
            rj1.z(1, key);
            rj1.z(2, value);
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return f(ri1);
        }

        protected int c()
        {
            return super.c() + rj.B(1, key) + rj.B(2, value);
        }

        public boolean equals(Object obj)
        {
            boolean flag1;
            if (obj == this)
            {
                flag1 = true;
            } else
            {
                boolean flag = obj instanceof e;
                flag1 = false;
                if (flag)
                {
                    e e1 = (e)obj;
                    int k = key;
                    int l = e1.key;
                    flag1 = false;
                    if (k == l)
                    {
                        int i1 = value;
                        int j1 = e1.value;
                        flag1 = false;
                        if (i1 == j1)
                        {
                            return a(e1);
                        }
                    }
                }
            }
            return flag1;
        }

        public e f(ri ri1)
        {
            do
            {
                int k = ri1.tJ();
                switch (k)
                {
                default:
                    if (a(ri1, k))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 8: // '\b'
                    key = ri1.tM();
                    break;

                case 16: // '\020'
                    value = ri1.tM();
                    break;
                }
            } while (true);
        }

        public int hashCode()
        {
            return 31 * (31 * (527 + key) + value) + ua();
        }

        public e j()
        {
            key = 0;
            value = 0;
            aGo = null;
            aGz = -1;
            return this;
        }

        public e()
        {
            j();
        }
    }

    public static final class f extends rk
    {

        public String fE[];
        public String fF[];
        public d.a fG[];
        public e fH[];
        public b fI[];
        public b fJ[];
        public b fK[];
        public g fL[];
        public String fM;
        public String fN;
        public String fO;
        public a fP;
        public float fQ;
        public boolean fR;
        public String fS[];
        public int fT;
        public String version;

        public static f a(byte abyte0[])
        {
            return (f)rq.a(new f(), abyte0);
        }

        public void a(rj rj1)
        {
            if (fF != null && fF.length > 0)
            {
                for (int i3 = 0; i3 < fF.length; i3++)
                {
                    String s2 = fF[i3];
                    if (s2 != null)
                    {
                        rj1.b(1, s2);
                    }
                }

            }
            if (fG != null && fG.length > 0)
            {
                for (int l2 = 0; l2 < fG.length; l2++)
                {
                    d.a a1 = fG[l2];
                    if (a1 != null)
                    {
                        rj1.a(2, a1);
                    }
                }

            }
            if (fH != null && fH.length > 0)
            {
                for (int k2 = 0; k2 < fH.length; k2++)
                {
                    e e1 = fH[k2];
                    if (e1 != null)
                    {
                        rj1.a(3, e1);
                    }
                }

            }
            if (fI != null && fI.length > 0)
            {
                for (int j2 = 0; j2 < fI.length; j2++)
                {
                    b b3 = fI[j2];
                    if (b3 != null)
                    {
                        rj1.a(4, b3);
                    }
                }

            }
            if (fJ != null && fJ.length > 0)
            {
                for (int i2 = 0; i2 < fJ.length; i2++)
                {
                    b b2 = fJ[i2];
                    if (b2 != null)
                    {
                        rj1.a(5, b2);
                    }
                }

            }
            if (fK != null && fK.length > 0)
            {
                for (int l1 = 0; l1 < fK.length; l1++)
                {
                    b b1 = fK[l1];
                    if (b1 != null)
                    {
                        rj1.a(6, b1);
                    }
                }

            }
            if (fL != null && fL.length > 0)
            {
                for (int k1 = 0; k1 < fL.length; k1++)
                {
                    g g1 = fL[k1];
                    if (g1 != null)
                    {
                        rj1.a(7, g1);
                    }
                }

            }
            if (!fM.equals(""))
            {
                rj1.b(9, fM);
            }
            if (!fN.equals(""))
            {
                rj1.b(10, fN);
            }
            if (!fO.equals("0"))
            {
                rj1.b(12, fO);
            }
            if (!version.equals(""))
            {
                rj1.b(13, version);
            }
            if (fP != null)
            {
                rj1.a(14, fP);
            }
            if (Float.floatToIntBits(fQ) != Float.floatToIntBits(0.0F))
            {
                rj1.b(15, fQ);
            }
            if (fS != null && fS.length > 0)
            {
                for (int j1 = 0; j1 < fS.length; j1++)
                {
                    String s1 = fS[j1];
                    if (s1 != null)
                    {
                        rj1.b(16, s1);
                    }
                }

            }
            if (fT != 0)
            {
                rj1.z(17, fT);
            }
            if (fR)
            {
                rj1.b(18, fR);
            }
            if (fE != null)
            {
                int l = fE.length;
                int i1 = 0;
                if (l > 0)
                {
                    for (; i1 < fE.length; i1++)
                    {
                        String s = fE[i1];
                        if (s != null)
                        {
                            rj1.b(19, s);
                        }
                    }

                }
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return g(ri1);
        }

        protected int c()
        {
            int l = 0;
            int i1 = super.c();
            int j1;
            if (fF != null && fF.length > 0)
            {
                int l5 = 0;
                int i6 = 0;
                int j6 = 0;
                for (; l5 < fF.length; l5++)
                {
                    String s2 = fF[l5];
                    if (s2 != null)
                    {
                        j6++;
                        i6 += rj.dr(s2);
                    }
                }

                j1 = i1 + i6 + j6 * 1;
            } else
            {
                j1 = i1;
            }
            if (fG != null && fG.length > 0)
            {
                int j5 = j1;
                for (int k5 = 0; k5 < fG.length; k5++)
                {
                    d.a a1 = fG[k5];
                    if (a1 != null)
                    {
                        j5 += rj.c(2, a1);
                    }
                }

                j1 = j5;
            }
            if (fH != null && fH.length > 0)
            {
                int l4 = j1;
                for (int i5 = 0; i5 < fH.length; i5++)
                {
                    e e1 = fH[i5];
                    if (e1 != null)
                    {
                        l4 += rj.c(3, e1);
                    }
                }

                j1 = l4;
            }
            if (fI != null && fI.length > 0)
            {
                int j4 = j1;
                for (int k4 = 0; k4 < fI.length; k4++)
                {
                    b b3 = fI[k4];
                    if (b3 != null)
                    {
                        j4 += rj.c(4, b3);
                    }
                }

                j1 = j4;
            }
            if (fJ != null && fJ.length > 0)
            {
                int l3 = j1;
                for (int i4 = 0; i4 < fJ.length; i4++)
                {
                    b b2 = fJ[i4];
                    if (b2 != null)
                    {
                        l3 += rj.c(5, b2);
                    }
                }

                j1 = l3;
            }
            if (fK != null && fK.length > 0)
            {
                int j3 = j1;
                for (int k3 = 0; k3 < fK.length; k3++)
                {
                    b b1 = fK[k3];
                    if (b1 != null)
                    {
                        j3 += rj.c(6, b1);
                    }
                }

                j1 = j3;
            }
            if (fL != null && fL.length > 0)
            {
                int l2 = j1;
                for (int i3 = 0; i3 < fL.length; i3++)
                {
                    g g1 = fL[i3];
                    if (g1 != null)
                    {
                        l2 += rj.c(7, g1);
                    }
                }

                j1 = l2;
            }
            if (!fM.equals(""))
            {
                j1 += rj.k(9, fM);
            }
            if (!fN.equals(""))
            {
                j1 += rj.k(10, fN);
            }
            if (!fO.equals("0"))
            {
                j1 += rj.k(12, fO);
            }
            if (!version.equals(""))
            {
                j1 += rj.k(13, version);
            }
            if (fP != null)
            {
                j1 += rj.c(14, fP);
            }
            if (Float.floatToIntBits(fQ) != Float.floatToIntBits(0.0F))
            {
                j1 += rj.c(15, fQ);
            }
            if (fS != null && fS.length > 0)
            {
                int i2 = 0;
                int j2 = 0;
                int k2 = 0;
                for (; i2 < fS.length; i2++)
                {
                    String s1 = fS[i2];
                    if (s1 != null)
                    {
                        k2++;
                        j2 += rj.dr(s1);
                    }
                }

                j1 = j1 + j2 + k2 * 2;
            }
            if (fT != 0)
            {
                j1 += rj.B(17, fT);
            }
            if (fR)
            {
                j1 += rj.c(18, fR);
            }
            if (fE != null && fE.length > 0)
            {
                int k1 = 0;
                int l1 = 0;
                for (; l < fE.length; l++)
                {
                    String s = fE[l];
                    if (s != null)
                    {
                        l1++;
                        k1 += rj.dr(s);
                    }
                }

                j1 = j1 + k1 + l1 * 2;
            }
            return j1;
        }

        public boolean equals(Object obj)
        {
            if (obj != this) goto _L2; else goto _L1
_L1:
            boolean flag1 = true;
_L4:
            return flag1;
_L2:
            boolean flag;
            flag = obj instanceof f;
            flag1 = false;
            if (!flag) goto _L4; else goto _L3
_L3:
            f f1;
            boolean flag2;
            f1 = (f)obj;
            flag2 = ro.equals(fE, f1.fE);
            flag1 = false;
            if (!flag2) goto _L4; else goto _L5
_L5:
            boolean flag3;
            flag3 = ro.equals(fF, f1.fF);
            flag1 = false;
            if (!flag3) goto _L4; else goto _L6
_L6:
            boolean flag4;
            flag4 = ro.equals(fG, f1.fG);
            flag1 = false;
            if (!flag4) goto _L4; else goto _L7
_L7:
            boolean flag5;
            flag5 = ro.equals(fH, f1.fH);
            flag1 = false;
            if (!flag5) goto _L4; else goto _L8
_L8:
            boolean flag6;
            flag6 = ro.equals(fI, f1.fI);
            flag1 = false;
            if (!flag6) goto _L4; else goto _L9
_L9:
            boolean flag7;
            flag7 = ro.equals(fJ, f1.fJ);
            flag1 = false;
            if (!flag7) goto _L4; else goto _L10
_L10:
            boolean flag8;
            flag8 = ro.equals(fK, f1.fK);
            flag1 = false;
            if (!flag8) goto _L4; else goto _L11
_L11:
            boolean flag9;
            flag9 = ro.equals(fL, f1.fL);
            flag1 = false;
            if (!flag9) goto _L4; else goto _L12
_L12:
            if (fM != null) goto _L14; else goto _L13
_L13:
            String s3;
            s3 = f1.fM;
            flag1 = false;
            if (s3 != null) goto _L4; else goto _L15
_L15:
            if (fN != null) goto _L17; else goto _L16
_L16:
            String s2;
            s2 = f1.fN;
            flag1 = false;
            if (s2 != null) goto _L4; else goto _L18
_L18:
            if (fO != null) goto _L20; else goto _L19
_L19:
            String s1;
            s1 = f1.fO;
            flag1 = false;
            if (s1 != null) goto _L4; else goto _L21
_L21:
            if (version != null) goto _L23; else goto _L22
_L22:
            String s;
            s = f1.version;
            flag1 = false;
            if (s != null) goto _L4; else goto _L24
_L24:
            a a1;
            if (fP != null)
            {
                break MISSING_BLOCK_LABEL_467;
            }
            a1 = f1.fP;
            flag1 = false;
            if (a1 != null) goto _L4; else goto _L25
_L25:
            int l = Float.floatToIntBits(fQ);
            int i1 = Float.floatToIntBits(f1.fQ);
            flag1 = false;
            if (l == i1)
            {
                boolean flag10 = fR;
                boolean flag11 = f1.fR;
                flag1 = false;
                if (flag10 == flag11)
                {
                    boolean flag12 = ro.equals(fS, f1.fS);
                    flag1 = false;
                    if (flag12)
                    {
                        int j1 = fT;
                        int k1 = f1.fT;
                        flag1 = false;
                        if (j1 == k1)
                        {
                            return a(f1);
                        }
                    }
                }
            }
              goto _L4
_L14:
            if (!fM.equals(f1.fM))
            {
                return false;
            }
              goto _L15
_L17:
            if (!fN.equals(f1.fN))
            {
                return false;
            }
              goto _L18
_L20:
            if (!fO.equals(f1.fO))
            {
                return false;
            }
              goto _L21
_L23:
            if (!version.equals(f1.version))
            {
                return false;
            }
              goto _L24
            if (!fP.equals(f1.fP))
            {
                return false;
            }
              goto _L25
        }

        public f g(ri ri1)
        {
            do
            {
                int l = ri1.tJ();
                switch (l)
                {
                default:
                    if (a(ri1, l))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    int i5 = rt.b(ri1, 10);
                    int j5;
                    String as2[];
                    if (fF == null)
                    {
                        j5 = 0;
                    } else
                    {
                        j5 = fF.length;
                    }
                    as2 = new String[i5 + j5];
                    if (j5 != 0)
                    {
                        System.arraycopy(fF, 0, as2, 0, j5);
                    }
                    for (; j5 < -1 + as2.length; j5++)
                    {
                        as2[j5] = ri1.readString();
                        ri1.tJ();
                    }

                    as2[j5] = ri1.readString();
                    fF = as2;
                    break;

                case 18: // '\022'
                    int k4 = rt.b(ri1, 18);
                    int l4;
                    d.a aa[];
                    if (fG == null)
                    {
                        l4 = 0;
                    } else
                    {
                        l4 = fG.length;
                    }
                    aa = new d.a[k4 + l4];
                    if (l4 != 0)
                    {
                        System.arraycopy(fG, 0, aa, 0, l4);
                    }
                    for (; l4 < -1 + aa.length; l4++)
                    {
                        aa[l4] = new d.a();
                        ri1.a(aa[l4]);
                        ri1.tJ();
                    }

                    aa[l4] = new d.a();
                    ri1.a(aa[l4]);
                    fG = aa;
                    break;

                case 26: // '\032'
                    int i4 = rt.b(ri1, 26);
                    int j4;
                    e ae[];
                    if (fH == null)
                    {
                        j4 = 0;
                    } else
                    {
                        j4 = fH.length;
                    }
                    ae = new e[i4 + j4];
                    if (j4 != 0)
                    {
                        System.arraycopy(fH, 0, ae, 0, j4);
                    }
                    for (; j4 < -1 + ae.length; j4++)
                    {
                        ae[j4] = new e();
                        ri1.a(ae[j4]);
                        ri1.tJ();
                    }

                    ae[j4] = new e();
                    ri1.a(ae[j4]);
                    fH = ae;
                    break;

                case 34: // '"'
                    int k3 = rt.b(ri1, 34);
                    int l3;
                    b ab2[];
                    if (fI == null)
                    {
                        l3 = 0;
                    } else
                    {
                        l3 = fI.length;
                    }
                    ab2 = new b[k3 + l3];
                    if (l3 != 0)
                    {
                        System.arraycopy(fI, 0, ab2, 0, l3);
                    }
                    for (; l3 < -1 + ab2.length; l3++)
                    {
                        ab2[l3] = new b();
                        ri1.a(ab2[l3]);
                        ri1.tJ();
                    }

                    ab2[l3] = new b();
                    ri1.a(ab2[l3]);
                    fI = ab2;
                    break;

                case 42: // '*'
                    int i3 = rt.b(ri1, 42);
                    int j3;
                    b ab1[];
                    if (fJ == null)
                    {
                        j3 = 0;
                    } else
                    {
                        j3 = fJ.length;
                    }
                    ab1 = new b[i3 + j3];
                    if (j3 != 0)
                    {
                        System.arraycopy(fJ, 0, ab1, 0, j3);
                    }
                    for (; j3 < -1 + ab1.length; j3++)
                    {
                        ab1[j3] = new b();
                        ri1.a(ab1[j3]);
                        ri1.tJ();
                    }

                    ab1[j3] = new b();
                    ri1.a(ab1[j3]);
                    fJ = ab1;
                    break;

                case 50: // '2'
                    int k2 = rt.b(ri1, 50);
                    int l2;
                    b ab[];
                    if (fK == null)
                    {
                        l2 = 0;
                    } else
                    {
                        l2 = fK.length;
                    }
                    ab = new b[k2 + l2];
                    if (l2 != 0)
                    {
                        System.arraycopy(fK, 0, ab, 0, l2);
                    }
                    for (; l2 < -1 + ab.length; l2++)
                    {
                        ab[l2] = new b();
                        ri1.a(ab[l2]);
                        ri1.tJ();
                    }

                    ab[l2] = new b();
                    ri1.a(ab[l2]);
                    fK = ab;
                    break;

                case 58: // ':'
                    int i2 = rt.b(ri1, 58);
                    int j2;
                    g ag[];
                    if (fL == null)
                    {
                        j2 = 0;
                    } else
                    {
                        j2 = fL.length;
                    }
                    ag = new g[i2 + j2];
                    if (j2 != 0)
                    {
                        System.arraycopy(fL, 0, ag, 0, j2);
                    }
                    for (; j2 < -1 + ag.length; j2++)
                    {
                        ag[j2] = new g();
                        ri1.a(ag[j2]);
                        ri1.tJ();
                    }

                    ag[j2] = new g();
                    ri1.a(ag[j2]);
                    fL = ag;
                    break;

                case 74: // 'J'
                    fM = ri1.readString();
                    break;

                case 82: // 'R'
                    fN = ri1.readString();
                    break;

                case 98: // 'b'
                    fO = ri1.readString();
                    break;

                case 106: // 'j'
                    version = ri1.readString();
                    break;

                case 114: // 'r'
                    if (fP == null)
                    {
                        fP = new a();
                    }
                    ri1.a(fP);
                    break;

                case 125: // '}'
                    fQ = ri1.readFloat();
                    break;

                case 130: 
                    int k1 = rt.b(ri1, 130);
                    int l1;
                    String as1[];
                    if (fS == null)
                    {
                        l1 = 0;
                    } else
                    {
                        l1 = fS.length;
                    }
                    as1 = new String[k1 + l1];
                    if (l1 != 0)
                    {
                        System.arraycopy(fS, 0, as1, 0, l1);
                    }
                    for (; l1 < -1 + as1.length; l1++)
                    {
                        as1[l1] = ri1.readString();
                        ri1.tJ();
                    }

                    as1[l1] = ri1.readString();
                    fS = as1;
                    break;

                case 136: 
                    fT = ri1.tM();
                    break;

                case 144: 
                    fR = ri1.tN();
                    break;

                case 154: 
                    int i1 = rt.b(ri1, 154);
                    int j1;
                    String as[];
                    if (fE == null)
                    {
                        j1 = 0;
                    } else
                    {
                        j1 = fE.length;
                    }
                    as = new String[i1 + j1];
                    if (j1 != 0)
                    {
                        System.arraycopy(fE, 0, as, 0, j1);
                    }
                    for (; j1 < -1 + as.length; j1++)
                    {
                        as[j1] = ri1.readString();
                        ri1.tJ();
                    }

                    as[j1] = ri1.readString();
                    fE = as;
                    break;
                }
            } while (true);
        }

        public int hashCode()
        {
            int l = 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (527 + ro.hashCode(fE)) + ro.hashCode(fF)) + ro.hashCode(fG)) + ro.hashCode(fH)) + ro.hashCode(fI)) + ro.hashCode(fJ)) + ro.hashCode(fK)) + ro.hashCode(fL));
            int i1;
            int j1;
            int k1;
            int l1;
            int i2;
            int j2;
            int k2;
            int l2;
            a a1;
            int i3;
            int j3;
            char c1;
            if (fM == null)
            {
                i1 = 0;
            } else
            {
                i1 = fM.hashCode();
            }
            j1 = 31 * (i1 + l);
            if (fN == null)
            {
                k1 = 0;
            } else
            {
                k1 = fN.hashCode();
            }
            l1 = 31 * (k1 + j1);
            if (fO == null)
            {
                i2 = 0;
            } else
            {
                i2 = fO.hashCode();
            }
            j2 = 31 * (i2 + l1);
            if (version == null)
            {
                k2 = 0;
            } else
            {
                k2 = version.hashCode();
            }
            l2 = 31 * (k2 + j2);
            a1 = fP;
            i3 = 0;
            if (a1 != null)
            {
                i3 = fP.hashCode();
            }
            j3 = 31 * (31 * (l2 + i3) + Float.floatToIntBits(fQ));
            if (fR)
            {
                c1 = '\u04CF';
            } else
            {
                c1 = '\u04D5';
            }
            return 31 * (31 * (31 * (c1 + j3) + ro.hashCode(fS)) + fT) + ua();
        }

        public f k()
        {
            fE = rt.aGG;
            fF = rt.aGG;
            fG = com.google.android.gms.internal.d.a.r();
            fH = e.i();
            fI = b.d();
            fJ = b.d();
            fK = b.d();
            fL = g.l();
            fM = "";
            fN = "";
            fO = "0";
            version = "";
            fP = null;
            fQ = 0.0F;
            fR = false;
            fS = rt.aGG;
            fT = 0;
            aGo = null;
            aGz = -1;
            return this;
        }

        public f()
        {
            k();
        }
    }

    public static final class g extends rk
    {

        private static volatile g fU[];
        public int fV[];
        public int fW[];
        public int fX[];
        public int fY[];
        public int fZ[];
        public int ga[];
        public int gb[];
        public int gc[];
        public int gd[];
        public int ge[];

        public static g[] l()
        {
            if (fU == null)
            {
                synchronized (ro.aGy)
                {
                    if (fU == null)
                    {
                        fU = new g[0];
                    }
                }
            }
            return fU;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(rj rj1)
        {
            if (fV != null && fV.length > 0)
            {
                for (int j3 = 0; j3 < fV.length; j3++)
                {
                    rj1.z(1, fV[j3]);
                }

            }
            if (fW != null && fW.length > 0)
            {
                for (int i3 = 0; i3 < fW.length; i3++)
                {
                    rj1.z(2, fW[i3]);
                }

            }
            if (fX != null && fX.length > 0)
            {
                for (int l2 = 0; l2 < fX.length; l2++)
                {
                    rj1.z(3, fX[l2]);
                }

            }
            if (fY != null && fY.length > 0)
            {
                for (int k2 = 0; k2 < fY.length; k2++)
                {
                    rj1.z(4, fY[k2]);
                }

            }
            if (fZ != null && fZ.length > 0)
            {
                for (int j2 = 0; j2 < fZ.length; j2++)
                {
                    rj1.z(5, fZ[j2]);
                }

            }
            if (ga != null && ga.length > 0)
            {
                for (int i2 = 0; i2 < ga.length; i2++)
                {
                    rj1.z(6, ga[i2]);
                }

            }
            if (gb != null && gb.length > 0)
            {
                for (int l1 = 0; l1 < gb.length; l1++)
                {
                    rj1.z(7, gb[l1]);
                }

            }
            if (gc != null && gc.length > 0)
            {
                for (int k1 = 0; k1 < gc.length; k1++)
                {
                    rj1.z(8, gc[k1]);
                }

            }
            if (gd != null && gd.length > 0)
            {
                for (int j1 = 0; j1 < gd.length; j1++)
                {
                    rj1.z(9, gd[j1]);
                }

            }
            if (ge != null)
            {
                int k = ge.length;
                int i1 = 0;
                if (k > 0)
                {
                    for (; i1 < ge.length; i1++)
                    {
                        rj1.z(10, ge[i1]);
                    }

                }
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return h(ri1);
        }

        protected int c()
        {
            int k = 0;
            int i1 = super.c();
            int j1;
            if (fV != null && fV.length > 0)
            {
                int l5 = 0;
                int i6 = 0;
                for (; l5 < fV.length; l5++)
                {
                    i6 += rj.ie(fV[l5]);
                }

                j1 = i1 + i6 + 1 * fV.length;
            } else
            {
                j1 = i1;
            }
            if (fW != null && fW.length > 0)
            {
                int j5 = 0;
                int k5 = 0;
                for (; j5 < fW.length; j5++)
                {
                    k5 += rj.ie(fW[j5]);
                }

                j1 = j1 + k5 + 1 * fW.length;
            }
            if (fX != null && fX.length > 0)
            {
                int l4 = 0;
                int i5 = 0;
                for (; l4 < fX.length; l4++)
                {
                    i5 += rj.ie(fX[l4]);
                }

                j1 = j1 + i5 + 1 * fX.length;
            }
            if (fY != null && fY.length > 0)
            {
                int j4 = 0;
                int k4 = 0;
                for (; j4 < fY.length; j4++)
                {
                    k4 += rj.ie(fY[j4]);
                }

                j1 = j1 + k4 + 1 * fY.length;
            }
            if (fZ != null && fZ.length > 0)
            {
                int l3 = 0;
                int i4 = 0;
                for (; l3 < fZ.length; l3++)
                {
                    i4 += rj.ie(fZ[l3]);
                }

                j1 = j1 + i4 + 1 * fZ.length;
            }
            if (ga != null && ga.length > 0)
            {
                int j3 = 0;
                int k3 = 0;
                for (; j3 < ga.length; j3++)
                {
                    k3 += rj.ie(ga[j3]);
                }

                j1 = j1 + k3 + 1 * ga.length;
            }
            if (gb != null && gb.length > 0)
            {
                int l2 = 0;
                int i3 = 0;
                for (; l2 < gb.length; l2++)
                {
                    i3 += rj.ie(gb[l2]);
                }

                j1 = j1 + i3 + 1 * gb.length;
            }
            if (gc != null && gc.length > 0)
            {
                int j2 = 0;
                int k2 = 0;
                for (; j2 < gc.length; j2++)
                {
                    k2 += rj.ie(gc[j2]);
                }

                j1 = j1 + k2 + 1 * gc.length;
            }
            if (gd != null && gd.length > 0)
            {
                int l1 = 0;
                int i2 = 0;
                for (; l1 < gd.length; l1++)
                {
                    i2 += rj.ie(gd[l1]);
                }

                j1 = j1 + i2 + 1 * gd.length;
            }
            if (ge != null && ge.length > 0)
            {
                int k1 = 0;
                for (; k < ge.length; k++)
                {
                    k1 += rj.ie(ge[k]);
                }

                j1 = j1 + k1 + 1 * ge.length;
            }
            return j1;
        }

        public boolean equals(Object obj)
        {
            boolean flag1;
            if (obj == this)
            {
                flag1 = true;
            } else
            {
                boolean flag = obj instanceof g;
                flag1 = false;
                if (flag)
                {
                    g g1 = (g)obj;
                    boolean flag2 = ro.equals(fV, g1.fV);
                    flag1 = false;
                    if (flag2)
                    {
                        boolean flag3 = ro.equals(fW, g1.fW);
                        flag1 = false;
                        if (flag3)
                        {
                            boolean flag4 = ro.equals(fX, g1.fX);
                            flag1 = false;
                            if (flag4)
                            {
                                boolean flag5 = ro.equals(fY, g1.fY);
                                flag1 = false;
                                if (flag5)
                                {
                                    boolean flag6 = ro.equals(fZ, g1.fZ);
                                    flag1 = false;
                                    if (flag6)
                                    {
                                        boolean flag7 = ro.equals(ga, g1.ga);
                                        flag1 = false;
                                        if (flag7)
                                        {
                                            boolean flag8 = ro.equals(gb, g1.gb);
                                            flag1 = false;
                                            if (flag8)
                                            {
                                                boolean flag9 = ro.equals(gc, g1.gc);
                                                flag1 = false;
                                                if (flag9)
                                                {
                                                    boolean flag10 = ro.equals(gd, g1.gd);
                                                    flag1 = false;
                                                    if (flag10)
                                                    {
                                                        boolean flag11 = ro.equals(ge, g1.ge);
                                                        flag1 = false;
                                                        if (flag11)
                                                        {
                                                            return a(g1);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return flag1;
        }

        public g h(ri ri1)
        {
            do
            {
                int k = ri1.tJ();
                switch (k)
                {
                default:
                    if (a(ri1, k))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 8: // '\b'
                    int k15 = rt.b(ri1, 8);
                    int l15;
                    int ai19[];
                    if (fV == null)
                    {
                        l15 = 0;
                    } else
                    {
                        l15 = fV.length;
                    }
                    ai19 = new int[k15 + l15];
                    if (l15 != 0)
                    {
                        System.arraycopy(fV, 0, ai19, 0, l15);
                    }
                    for (; l15 < -1 + ai19.length; l15++)
                    {
                        ai19[l15] = ri1.tM();
                        ri1.tJ();
                    }

                    ai19[l15] = ri1.tM();
                    fV = ai19;
                    break;

                case 10: // '\n'
                    int k14 = ri1.hX(ri1.tQ());
                    int l14 = ri1.getPosition();
                    int i15;
                    for (i15 = 0; ri1.tV() > 0; i15++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(l14);
                    int j15;
                    int ai18[];
                    if (fV == null)
                    {
                        j15 = 0;
                    } else
                    {
                        j15 = fV.length;
                    }
                    ai18 = new int[i15 + j15];
                    if (j15 != 0)
                    {
                        System.arraycopy(fV, 0, ai18, 0, j15);
                    }
                    for (; j15 < ai18.length; j15++)
                    {
                        ai18[j15] = ri1.tM();
                    }

                    fV = ai18;
                    ri1.hY(k14);
                    break;

                case 16: // '\020'
                    int i14 = rt.b(ri1, 16);
                    int j14;
                    int ai17[];
                    if (fW == null)
                    {
                        j14 = 0;
                    } else
                    {
                        j14 = fW.length;
                    }
                    ai17 = new int[i14 + j14];
                    if (j14 != 0)
                    {
                        System.arraycopy(fW, 0, ai17, 0, j14);
                    }
                    for (; j14 < -1 + ai17.length; j14++)
                    {
                        ai17[j14] = ri1.tM();
                        ri1.tJ();
                    }

                    ai17[j14] = ri1.tM();
                    fW = ai17;
                    break;

                case 18: // '\022'
                    int i13 = ri1.hX(ri1.tQ());
                    int j13 = ri1.getPosition();
                    int k13;
                    for (k13 = 0; ri1.tV() > 0; k13++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(j13);
                    int l13;
                    int ai16[];
                    if (fW == null)
                    {
                        l13 = 0;
                    } else
                    {
                        l13 = fW.length;
                    }
                    ai16 = new int[k13 + l13];
                    if (l13 != 0)
                    {
                        System.arraycopy(fW, 0, ai16, 0, l13);
                    }
                    for (; l13 < ai16.length; l13++)
                    {
                        ai16[l13] = ri1.tM();
                    }

                    fW = ai16;
                    ri1.hY(i13);
                    break;

                case 24: // '\030'
                    int k12 = rt.b(ri1, 24);
                    int l12;
                    int ai15[];
                    if (fX == null)
                    {
                        l12 = 0;
                    } else
                    {
                        l12 = fX.length;
                    }
                    ai15 = new int[k12 + l12];
                    if (l12 != 0)
                    {
                        System.arraycopy(fX, 0, ai15, 0, l12);
                    }
                    for (; l12 < -1 + ai15.length; l12++)
                    {
                        ai15[l12] = ri1.tM();
                        ri1.tJ();
                    }

                    ai15[l12] = ri1.tM();
                    fX = ai15;
                    break;

                case 26: // '\032'
                    int k11 = ri1.hX(ri1.tQ());
                    int l11 = ri1.getPosition();
                    int i12;
                    for (i12 = 0; ri1.tV() > 0; i12++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(l11);
                    int j12;
                    int ai14[];
                    if (fX == null)
                    {
                        j12 = 0;
                    } else
                    {
                        j12 = fX.length;
                    }
                    ai14 = new int[i12 + j12];
                    if (j12 != 0)
                    {
                        System.arraycopy(fX, 0, ai14, 0, j12);
                    }
                    for (; j12 < ai14.length; j12++)
                    {
                        ai14[j12] = ri1.tM();
                    }

                    fX = ai14;
                    ri1.hY(k11);
                    break;

                case 32: // ' '
                    int i11 = rt.b(ri1, 32);
                    int j11;
                    int ai13[];
                    if (fY == null)
                    {
                        j11 = 0;
                    } else
                    {
                        j11 = fY.length;
                    }
                    ai13 = new int[i11 + j11];
                    if (j11 != 0)
                    {
                        System.arraycopy(fY, 0, ai13, 0, j11);
                    }
                    for (; j11 < -1 + ai13.length; j11++)
                    {
                        ai13[j11] = ri1.tM();
                        ri1.tJ();
                    }

                    ai13[j11] = ri1.tM();
                    fY = ai13;
                    break;

                case 34: // '"'
                    int i10 = ri1.hX(ri1.tQ());
                    int j10 = ri1.getPosition();
                    int k10;
                    for (k10 = 0; ri1.tV() > 0; k10++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(j10);
                    int l10;
                    int ai12[];
                    if (fY == null)
                    {
                        l10 = 0;
                    } else
                    {
                        l10 = fY.length;
                    }
                    ai12 = new int[k10 + l10];
                    if (l10 != 0)
                    {
                        System.arraycopy(fY, 0, ai12, 0, l10);
                    }
                    for (; l10 < ai12.length; l10++)
                    {
                        ai12[l10] = ri1.tM();
                    }

                    fY = ai12;
                    ri1.hY(i10);
                    break;

                case 40: // '('
                    int k9 = rt.b(ri1, 40);
                    int l9;
                    int ai11[];
                    if (fZ == null)
                    {
                        l9 = 0;
                    } else
                    {
                        l9 = fZ.length;
                    }
                    ai11 = new int[k9 + l9];
                    if (l9 != 0)
                    {
                        System.arraycopy(fZ, 0, ai11, 0, l9);
                    }
                    for (; l9 < -1 + ai11.length; l9++)
                    {
                        ai11[l9] = ri1.tM();
                        ri1.tJ();
                    }

                    ai11[l9] = ri1.tM();
                    fZ = ai11;
                    break;

                case 42: // '*'
                    int k8 = ri1.hX(ri1.tQ());
                    int l8 = ri1.getPosition();
                    int i9;
                    for (i9 = 0; ri1.tV() > 0; i9++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(l8);
                    int j9;
                    int ai10[];
                    if (fZ == null)
                    {
                        j9 = 0;
                    } else
                    {
                        j9 = fZ.length;
                    }
                    ai10 = new int[i9 + j9];
                    if (j9 != 0)
                    {
                        System.arraycopy(fZ, 0, ai10, 0, j9);
                    }
                    for (; j9 < ai10.length; j9++)
                    {
                        ai10[j9] = ri1.tM();
                    }

                    fZ = ai10;
                    ri1.hY(k8);
                    break;

                case 48: // '0'
                    int i8 = rt.b(ri1, 48);
                    int j8;
                    int ai9[];
                    if (ga == null)
                    {
                        j8 = 0;
                    } else
                    {
                        j8 = ga.length;
                    }
                    ai9 = new int[i8 + j8];
                    if (j8 != 0)
                    {
                        System.arraycopy(ga, 0, ai9, 0, j8);
                    }
                    for (; j8 < -1 + ai9.length; j8++)
                    {
                        ai9[j8] = ri1.tM();
                        ri1.tJ();
                    }

                    ai9[j8] = ri1.tM();
                    ga = ai9;
                    break;

                case 50: // '2'
                    int i7 = ri1.hX(ri1.tQ());
                    int j7 = ri1.getPosition();
                    int k7;
                    for (k7 = 0; ri1.tV() > 0; k7++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(j7);
                    int l7;
                    int ai8[];
                    if (ga == null)
                    {
                        l7 = 0;
                    } else
                    {
                        l7 = ga.length;
                    }
                    ai8 = new int[k7 + l7];
                    if (l7 != 0)
                    {
                        System.arraycopy(ga, 0, ai8, 0, l7);
                    }
                    for (; l7 < ai8.length; l7++)
                    {
                        ai8[l7] = ri1.tM();
                    }

                    ga = ai8;
                    ri1.hY(i7);
                    break;

                case 56: // '8'
                    int k6 = rt.b(ri1, 56);
                    int l6;
                    int ai7[];
                    if (gb == null)
                    {
                        l6 = 0;
                    } else
                    {
                        l6 = gb.length;
                    }
                    ai7 = new int[k6 + l6];
                    if (l6 != 0)
                    {
                        System.arraycopy(gb, 0, ai7, 0, l6);
                    }
                    for (; l6 < -1 + ai7.length; l6++)
                    {
                        ai7[l6] = ri1.tM();
                        ri1.tJ();
                    }

                    ai7[l6] = ri1.tM();
                    gb = ai7;
                    break;

                case 58: // ':'
                    int k5 = ri1.hX(ri1.tQ());
                    int l5 = ri1.getPosition();
                    int i6;
                    for (i6 = 0; ri1.tV() > 0; i6++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(l5);
                    int j6;
                    int ai6[];
                    if (gb == null)
                    {
                        j6 = 0;
                    } else
                    {
                        j6 = gb.length;
                    }
                    ai6 = new int[i6 + j6];
                    if (j6 != 0)
                    {
                        System.arraycopy(gb, 0, ai6, 0, j6);
                    }
                    for (; j6 < ai6.length; j6++)
                    {
                        ai6[j6] = ri1.tM();
                    }

                    gb = ai6;
                    ri1.hY(k5);
                    break;

                case 64: // '@'
                    int i5 = rt.b(ri1, 64);
                    int j5;
                    int ai5[];
                    if (gc == null)
                    {
                        j5 = 0;
                    } else
                    {
                        j5 = gc.length;
                    }
                    ai5 = new int[i5 + j5];
                    if (j5 != 0)
                    {
                        System.arraycopy(gc, 0, ai5, 0, j5);
                    }
                    for (; j5 < -1 + ai5.length; j5++)
                    {
                        ai5[j5] = ri1.tM();
                        ri1.tJ();
                    }

                    ai5[j5] = ri1.tM();
                    gc = ai5;
                    break;

                case 66: // 'B'
                    int i4 = ri1.hX(ri1.tQ());
                    int j4 = ri1.getPosition();
                    int k4;
                    for (k4 = 0; ri1.tV() > 0; k4++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(j4);
                    int l4;
                    int ai4[];
                    if (gc == null)
                    {
                        l4 = 0;
                    } else
                    {
                        l4 = gc.length;
                    }
                    ai4 = new int[k4 + l4];
                    if (l4 != 0)
                    {
                        System.arraycopy(gc, 0, ai4, 0, l4);
                    }
                    for (; l4 < ai4.length; l4++)
                    {
                        ai4[l4] = ri1.tM();
                    }

                    gc = ai4;
                    ri1.hY(i4);
                    break;

                case 72: // 'H'
                    int k3 = rt.b(ri1, 72);
                    int l3;
                    int ai3[];
                    if (gd == null)
                    {
                        l3 = 0;
                    } else
                    {
                        l3 = gd.length;
                    }
                    ai3 = new int[k3 + l3];
                    if (l3 != 0)
                    {
                        System.arraycopy(gd, 0, ai3, 0, l3);
                    }
                    for (; l3 < -1 + ai3.length; l3++)
                    {
                        ai3[l3] = ri1.tM();
                        ri1.tJ();
                    }

                    ai3[l3] = ri1.tM();
                    gd = ai3;
                    break;

                case 74: // 'J'
                    int k2 = ri1.hX(ri1.tQ());
                    int l2 = ri1.getPosition();
                    int i3;
                    for (i3 = 0; ri1.tV() > 0; i3++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(l2);
                    int j3;
                    int ai2[];
                    if (gd == null)
                    {
                        j3 = 0;
                    } else
                    {
                        j3 = gd.length;
                    }
                    ai2 = new int[i3 + j3];
                    if (j3 != 0)
                    {
                        System.arraycopy(gd, 0, ai2, 0, j3);
                    }
                    for (; j3 < ai2.length; j3++)
                    {
                        ai2[j3] = ri1.tM();
                    }

                    gd = ai2;
                    ri1.hY(k2);
                    break;

                case 80: // 'P'
                    int i2 = rt.b(ri1, 80);
                    int j2;
                    int ai1[];
                    if (ge == null)
                    {
                        j2 = 0;
                    } else
                    {
                        j2 = ge.length;
                    }
                    ai1 = new int[i2 + j2];
                    if (j2 != 0)
                    {
                        System.arraycopy(ge, 0, ai1, 0, j2);
                    }
                    for (; j2 < -1 + ai1.length; j2++)
                    {
                        ai1[j2] = ri1.tM();
                        ri1.tJ();
                    }

                    ai1[j2] = ri1.tM();
                    ge = ai1;
                    break;

                case 82: // 'R'
                    int i1 = ri1.hX(ri1.tQ());
                    int j1 = ri1.getPosition();
                    int k1;
                    for (k1 = 0; ri1.tV() > 0; k1++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(j1);
                    int l1;
                    int ai[];
                    if (ge == null)
                    {
                        l1 = 0;
                    } else
                    {
                        l1 = ge.length;
                    }
                    ai = new int[k1 + l1];
                    if (l1 != 0)
                    {
                        System.arraycopy(ge, 0, ai, 0, l1);
                    }
                    for (; l1 < ai.length; l1++)
                    {
                        ai[l1] = ri1.tM();
                    }

                    ge = ai;
                    ri1.hY(i1);
                    break;
                }
            } while (true);
        }

        public int hashCode()
        {
            return 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (527 + ro.hashCode(fV)) + ro.hashCode(fW)) + ro.hashCode(fX)) + ro.hashCode(fY)) + ro.hashCode(fZ)) + ro.hashCode(ga)) + ro.hashCode(gb)) + ro.hashCode(gc)) + ro.hashCode(gd)) + ro.hashCode(ge)) + ua();
        }

        public g m()
        {
            fV = rt.aGB;
            fW = rt.aGB;
            fX = rt.aGB;
            fY = rt.aGB;
            fZ = rt.aGB;
            ga = rt.aGB;
            gb = rt.aGB;
            gc = rt.aGB;
            gd = rt.aGB;
            ge = rt.aGB;
            aGo = null;
            aGz = -1;
            return this;
        }

        public g()
        {
            m();
        }
    }

    public static final class h extends rk
    {

        public static final rl gf = rl.a(11, com/google/android/gms/internal/c$h, 810);
        private static final h gg[] = new h[0];
        public int gh[];
        public int gi[];
        public int gj[];
        public int gk;
        public int gl[];
        public int gm;
        public int gn;

        public void a(rj rj1)
        {
            if (gh != null && gh.length > 0)
            {
                for (int k1 = 0; k1 < gh.length; k1++)
                {
                    rj1.z(1, gh[k1]);
                }

            }
            if (gi != null && gi.length > 0)
            {
                for (int j1 = 0; j1 < gi.length; j1++)
                {
                    rj1.z(2, gi[j1]);
                }

            }
            if (gj != null && gj.length > 0)
            {
                for (int i1 = 0; i1 < gj.length; i1++)
                {
                    rj1.z(3, gj[i1]);
                }

            }
            if (gk != 0)
            {
                rj1.z(4, gk);
            }
            if (gl != null)
            {
                int k = gl.length;
                int l = 0;
                if (k > 0)
                {
                    for (; l < gl.length; l++)
                    {
                        rj1.z(5, gl[l]);
                    }

                }
            }
            if (gm != 0)
            {
                rj1.z(6, gm);
            }
            if (gn != 0)
            {
                rj1.z(7, gn);
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return i(ri1);
        }

        protected int c()
        {
            int k = 0;
            int l = super.c();
            int i1;
            if (gh != null && gh.length > 0)
            {
                int k2 = 0;
                int l2 = 0;
                for (; k2 < gh.length; k2++)
                {
                    l2 += rj.ie(gh[k2]);
                }

                i1 = l + l2 + 1 * gh.length;
            } else
            {
                i1 = l;
            }
            if (gi != null && gi.length > 0)
            {
                int i2 = 0;
                int j2 = 0;
                for (; i2 < gi.length; i2++)
                {
                    j2 += rj.ie(gi[i2]);
                }

                i1 = i1 + j2 + 1 * gi.length;
            }
            if (gj != null && gj.length > 0)
            {
                int k1 = 0;
                int l1 = 0;
                for (; k1 < gj.length; k1++)
                {
                    l1 += rj.ie(gj[k1]);
                }

                i1 = i1 + l1 + 1 * gj.length;
            }
            if (gk != 0)
            {
                i1 += rj.B(4, gk);
            }
            if (gl != null && gl.length > 0)
            {
                int j1 = 0;
                for (; k < gl.length; k++)
                {
                    j1 += rj.ie(gl[k]);
                }

                i1 = i1 + j1 + 1 * gl.length;
            }
            if (gm != 0)
            {
                i1 += rj.B(6, gm);
            }
            if (gn != 0)
            {
                i1 += rj.B(7, gn);
            }
            return i1;
        }

        public boolean equals(Object obj)
        {
            boolean flag1;
            if (obj == this)
            {
                flag1 = true;
            } else
            {
                boolean flag = obj instanceof h;
                flag1 = false;
                if (flag)
                {
                    h h1 = (h)obj;
                    boolean flag2 = ro.equals(gh, h1.gh);
                    flag1 = false;
                    if (flag2)
                    {
                        boolean flag3 = ro.equals(gi, h1.gi);
                        flag1 = false;
                        if (flag3)
                        {
                            boolean flag4 = ro.equals(gj, h1.gj);
                            flag1 = false;
                            if (flag4)
                            {
                                int k = gk;
                                int l = h1.gk;
                                flag1 = false;
                                if (k == l)
                                {
                                    boolean flag5 = ro.equals(gl, h1.gl);
                                    flag1 = false;
                                    if (flag5)
                                    {
                                        int i1 = gm;
                                        int j1 = h1.gm;
                                        flag1 = false;
                                        if (i1 == j1)
                                        {
                                            int k1 = gn;
                                            int l1 = h1.gn;
                                            flag1 = false;
                                            if (k1 == l1)
                                            {
                                                return a(h1);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return flag1;
        }

        public int hashCode()
        {
            return 31 * (31 * (31 * (31 * (31 * (31 * (31 * (527 + ro.hashCode(gh)) + ro.hashCode(gi)) + ro.hashCode(gj)) + gk) + ro.hashCode(gl)) + gm) + gn) + ua();
        }

        public h i(ri ri1)
        {
            do
            {
                int k = ri1.tJ();
                switch (k)
                {
                default:
                    if (a(ri1, k))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 8: // '\b'
                    int j6 = rt.b(ri1, 8);
                    int k6;
                    int ai7[];
                    if (gh == null)
                    {
                        k6 = 0;
                    } else
                    {
                        k6 = gh.length;
                    }
                    ai7 = new int[j6 + k6];
                    if (k6 != 0)
                    {
                        System.arraycopy(gh, 0, ai7, 0, k6);
                    }
                    for (; k6 < -1 + ai7.length; k6++)
                    {
                        ai7[k6] = ri1.tM();
                        ri1.tJ();
                    }

                    ai7[k6] = ri1.tM();
                    gh = ai7;
                    break;

                case 10: // '\n'
                    int j5 = ri1.hX(ri1.tQ());
                    int k5 = ri1.getPosition();
                    int l5;
                    for (l5 = 0; ri1.tV() > 0; l5++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(k5);
                    int i6;
                    int ai6[];
                    if (gh == null)
                    {
                        i6 = 0;
                    } else
                    {
                        i6 = gh.length;
                    }
                    ai6 = new int[l5 + i6];
                    if (i6 != 0)
                    {
                        System.arraycopy(gh, 0, ai6, 0, i6);
                    }
                    for (; i6 < ai6.length; i6++)
                    {
                        ai6[i6] = ri1.tM();
                    }

                    gh = ai6;
                    ri1.hY(j5);
                    break;

                case 16: // '\020'
                    int l4 = rt.b(ri1, 16);
                    int i5;
                    int ai5[];
                    if (gi == null)
                    {
                        i5 = 0;
                    } else
                    {
                        i5 = gi.length;
                    }
                    ai5 = new int[l4 + i5];
                    if (i5 != 0)
                    {
                        System.arraycopy(gi, 0, ai5, 0, i5);
                    }
                    for (; i5 < -1 + ai5.length; i5++)
                    {
                        ai5[i5] = ri1.tM();
                        ri1.tJ();
                    }

                    ai5[i5] = ri1.tM();
                    gi = ai5;
                    break;

                case 18: // '\022'
                    int l3 = ri1.hX(ri1.tQ());
                    int i4 = ri1.getPosition();
                    int j4;
                    for (j4 = 0; ri1.tV() > 0; j4++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(i4);
                    int k4;
                    int ai4[];
                    if (gi == null)
                    {
                        k4 = 0;
                    } else
                    {
                        k4 = gi.length;
                    }
                    ai4 = new int[j4 + k4];
                    if (k4 != 0)
                    {
                        System.arraycopy(gi, 0, ai4, 0, k4);
                    }
                    for (; k4 < ai4.length; k4++)
                    {
                        ai4[k4] = ri1.tM();
                    }

                    gi = ai4;
                    ri1.hY(l3);
                    break;

                case 24: // '\030'
                    int j3 = rt.b(ri1, 24);
                    int k3;
                    int ai3[];
                    if (gj == null)
                    {
                        k3 = 0;
                    } else
                    {
                        k3 = gj.length;
                    }
                    ai3 = new int[j3 + k3];
                    if (k3 != 0)
                    {
                        System.arraycopy(gj, 0, ai3, 0, k3);
                    }
                    for (; k3 < -1 + ai3.length; k3++)
                    {
                        ai3[k3] = ri1.tM();
                        ri1.tJ();
                    }

                    ai3[k3] = ri1.tM();
                    gj = ai3;
                    break;

                case 26: // '\032'
                    int j2 = ri1.hX(ri1.tQ());
                    int k2 = ri1.getPosition();
                    int l2;
                    for (l2 = 0; ri1.tV() > 0; l2++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(k2);
                    int i3;
                    int ai2[];
                    if (gj == null)
                    {
                        i3 = 0;
                    } else
                    {
                        i3 = gj.length;
                    }
                    ai2 = new int[l2 + i3];
                    if (i3 != 0)
                    {
                        System.arraycopy(gj, 0, ai2, 0, i3);
                    }
                    for (; i3 < ai2.length; i3++)
                    {
                        ai2[i3] = ri1.tM();
                    }

                    gj = ai2;
                    ri1.hY(j2);
                    break;

                case 32: // ' '
                    gk = ri1.tM();
                    break;

                case 40: // '('
                    int l1 = rt.b(ri1, 40);
                    int i2;
                    int ai1[];
                    if (gl == null)
                    {
                        i2 = 0;
                    } else
                    {
                        i2 = gl.length;
                    }
                    ai1 = new int[l1 + i2];
                    if (i2 != 0)
                    {
                        System.arraycopy(gl, 0, ai1, 0, i2);
                    }
                    for (; i2 < -1 + ai1.length; i2++)
                    {
                        ai1[i2] = ri1.tM();
                        ri1.tJ();
                    }

                    ai1[i2] = ri1.tM();
                    gl = ai1;
                    break;

                case 42: // '*'
                    int l = ri1.hX(ri1.tQ());
                    int i1 = ri1.getPosition();
                    int j1;
                    for (j1 = 0; ri1.tV() > 0; j1++)
                    {
                        ri1.tM();
                    }

                    ri1.hZ(i1);
                    int k1;
                    int ai[];
                    if (gl == null)
                    {
                        k1 = 0;
                    } else
                    {
                        k1 = gl.length;
                    }
                    ai = new int[j1 + k1];
                    if (k1 != 0)
                    {
                        System.arraycopy(gl, 0, ai, 0, k1);
                    }
                    for (; k1 < ai.length; k1++)
                    {
                        ai[k1] = ri1.tM();
                    }

                    gl = ai;
                    ri1.hY(l);
                    break;

                case 48: // '0'
                    gm = ri1.tM();
                    break;

                case 56: // '8'
                    gn = ri1.tM();
                    break;
                }
            } while (true);
        }

        public h n()
        {
            gh = rt.aGB;
            gi = rt.aGB;
            gj = rt.aGB;
            gk = 0;
            gl = rt.aGB;
            gm = 0;
            gn = 0;
            aGo = null;
            aGz = -1;
            return this;
        }


        public h()
        {
            n();
        }
    }

    public static final class i extends rk
    {

        private static volatile i go[];
        public d.a gp;
        public d gq;
        public String name;

        public static i[] o()
        {
            if (go == null)
            {
                synchronized (ro.aGy)
                {
                    if (go == null)
                    {
                        go = new i[0];
                    }
                }
            }
            return go;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(rj rj1)
        {
            if (!name.equals(""))
            {
                rj1.b(1, name);
            }
            if (gp != null)
            {
                rj1.a(2, gp);
            }
            if (gq != null)
            {
                rj1.a(3, gq);
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return j(ri1);
        }

        protected int c()
        {
            int k = super.c();
            if (!name.equals(""))
            {
                k += rj.k(1, name);
            }
            if (gp != null)
            {
                k += rj.c(2, gp);
            }
            if (gq != null)
            {
                k += rj.c(3, gq);
            }
            return k;
        }

        public boolean equals(Object obj)
        {
            if (obj != this) goto _L2; else goto _L1
_L1:
            boolean flag1 = true;
_L4:
            return flag1;
_L2:
            boolean flag;
            flag = obj instanceof i;
            flag1 = false;
            if (!flag) goto _L4; else goto _L3
_L3:
            i k = (i)obj;
            if (name != null) goto _L6; else goto _L5
_L5:
            String s;
            s = k.name;
            flag1 = false;
            if (s != null) goto _L4; else goto _L7
_L7:
            if (gp != null) goto _L9; else goto _L8
_L8:
            d.a a1;
            a1 = k.gp;
            flag1 = false;
            if (a1 != null) goto _L4; else goto _L10
_L10:
            d d1;
            if (gq != null)
            {
                break MISSING_BLOCK_LABEL_130;
            }
            d1 = k.gq;
            flag1 = false;
            if (d1 != null) goto _L4; else goto _L11
_L11:
            return a(k);
_L6:
            if (!name.equals(k.name))
            {
                return false;
            }
              goto _L7
_L9:
            if (!gp.equals(k.gp))
            {
                return false;
            }
              goto _L10
            if (!gq.equals(k.gq))
            {
                return false;
            }
              goto _L11
        }

        public int hashCode()
        {
            int k;
            int l;
            int i1;
            int j1;
            d d1;
            int k1;
            if (name == null)
            {
                k = 0;
            } else
            {
                k = name.hashCode();
            }
            l = 31 * (k + 527);
            if (gp == null)
            {
                i1 = 0;
            } else
            {
                i1 = gp.hashCode();
            }
            j1 = 31 * (i1 + l);
            d1 = gq;
            k1 = 0;
            if (d1 != null)
            {
                k1 = gq.hashCode();
            }
            return 31 * (j1 + k1) + ua();
        }

        public i j(ri ri1)
        {
            do
            {
                int k = ri1.tJ();
                switch (k)
                {
                default:
                    if (a(ri1, k))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    name = ri1.readString();
                    break;

                case 18: // '\022'
                    if (gp == null)
                    {
                        gp = new d.a();
                    }
                    ri1.a(gp);
                    break;

                case 26: // '\032'
                    if (gq == null)
                    {
                        gq = new d();
                    }
                    ri1.a(gq);
                    break;
                }
            } while (true);
        }

        public i p()
        {
            name = "";
            gp = null;
            gq = null;
            aGo = null;
            aGz = -1;
            return this;
        }

        public i()
        {
            p();
        }
    }

    public static final class j extends rk
    {

        public i gr[];
        public f gs;
        public String gt;

        public static j b(byte abyte0[])
        {
            return (j)rq.a(new j(), abyte0);
        }

        public void a(rj rj1)
        {
            if (gr != null && gr.length > 0)
            {
                for (int l = 0; l < gr.length; l++)
                {
                    i i1 = gr[l];
                    if (i1 != null)
                    {
                        rj1.a(1, i1);
                    }
                }

            }
            if (gs != null)
            {
                rj1.a(2, gs);
            }
            if (!gt.equals(""))
            {
                rj1.b(3, gt);
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return k(ri1);
        }

        protected int c()
        {
            int l = super.c();
            if (gr != null && gr.length > 0)
            {
                for (int i1 = 0; i1 < gr.length; i1++)
                {
                    i j1 = gr[i1];
                    if (j1 != null)
                    {
                        l += rj.c(1, j1);
                    }
                }

            }
            if (gs != null)
            {
                l += rj.c(2, gs);
            }
            if (!gt.equals(""))
            {
                l += rj.k(3, gt);
            }
            return l;
        }

        public boolean equals(Object obj)
        {
            if (obj != this) goto _L2; else goto _L1
_L1:
            boolean flag1 = true;
_L4:
            return flag1;
_L2:
            boolean flag;
            flag = obj instanceof j;
            flag1 = false;
            if (!flag) goto _L4; else goto _L3
_L3:
            j j1;
            boolean flag2;
            j1 = (j)obj;
            flag2 = ro.equals(gr, j1.gr);
            flag1 = false;
            if (!flag2) goto _L4; else goto _L5
_L5:
            if (gs != null) goto _L7; else goto _L6
_L6:
            f f1;
            f1 = j1.gs;
            flag1 = false;
            if (f1 != null) goto _L4; else goto _L8
_L8:
            String s;
            if (gt != null)
            {
                break MISSING_BLOCK_LABEL_113;
            }
            s = j1.gt;
            flag1 = false;
            if (s != null) goto _L4; else goto _L9
_L9:
            return a(j1);
_L7:
            if (!gs.equals(j1.gs))
            {
                return false;
            }
              goto _L8
            if (!gt.equals(j1.gt))
            {
                return false;
            }
              goto _L9
        }

        public int hashCode()
        {
            int l = 31 * (527 + ro.hashCode(gr));
            int i1;
            int j1;
            String s;
            int k1;
            if (gs == null)
            {
                i1 = 0;
            } else
            {
                i1 = gs.hashCode();
            }
            j1 = 31 * (i1 + l);
            s = gt;
            k1 = 0;
            if (s != null)
            {
                k1 = gt.hashCode();
            }
            return 31 * (j1 + k1) + ua();
        }

        public j k(ri ri1)
        {
            do
            {
                int l = ri1.tJ();
                switch (l)
                {
                default:
                    if (a(ri1, l))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    int i1 = rt.b(ri1, 10);
                    int j1;
                    i ai[];
                    if (gr == null)
                    {
                        j1 = 0;
                    } else
                    {
                        j1 = gr.length;
                    }
                    ai = new i[i1 + j1];
                    if (j1 != 0)
                    {
                        System.arraycopy(gr, 0, ai, 0, j1);
                    }
                    for (; j1 < -1 + ai.length; j1++)
                    {
                        ai[j1] = new i();
                        ri1.a(ai[j1]);
                        ri1.tJ();
                    }

                    ai[j1] = new i();
                    ri1.a(ai[j1]);
                    gr = ai;
                    break;

                case 18: // '\022'
                    if (gs == null)
                    {
                        gs = new f();
                    }
                    ri1.a(gs);
                    break;

                case 26: // '\032'
                    gt = ri1.readString();
                    break;
                }
            } while (true);
        }

        public j q()
        {
            gr = i.o();
            gs = null;
            gt = "";
            aGo = null;
            aGz = -1;
            return this;
        }

        public j()
        {
            q();
        }
    }

}
