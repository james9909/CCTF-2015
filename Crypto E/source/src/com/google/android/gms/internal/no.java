// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, rj, ro, ri, 
//            rt, rq

public interface no
{
    public static final class a extends rk
    {

        public a amJ[];

        public void a(rj rj1)
        {
            if (amJ != null && amJ.length > 0)
            {
                for (int i = 0; i < amJ.length; i++)
                {
                    a a1 = amJ[i];
                    if (a1 != null)
                    {
                        rj1.a(1, a1);
                    }
                }

            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return n(ri1);
        }

        protected int c()
        {
            int i = super.c();
            if (amJ != null && amJ.length > 0)
            {
                for (int j = 0; j < amJ.length; j++)
                {
                    a a1 = amJ[j];
                    if (a1 != null)
                    {
                        i += rj.c(1, a1);
                    }
                }

            }
            return i;
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
                    boolean flag2 = ro.equals(amJ, a1.amJ);
                    flag1 = false;
                    if (flag2)
                    {
                        return a(a1);
                    }
                }
            }
            return flag1;
        }

        public int hashCode()
        {
            return 31 * (527 + ro.hashCode(amJ)) + ua();
        }

        public a n(ri ri1)
        {
            do
            {
                int i = ri1.tJ();
                switch (i)
                {
                default:
                    if (a(ri1, i))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    int j = rt.b(ri1, 10);
                    int k;
                    a aa[];
                    if (amJ == null)
                    {
                        k = 0;
                    } else
                    {
                        k = amJ.length;
                    }
                    aa = new a[j + k];
                    if (k != 0)
                    {
                        System.arraycopy(amJ, 0, aa, 0, k);
                    }
                    for (; k < -1 + aa.length; k++)
                    {
                        aa[k] = new a();
                        ri1.a(aa[k]);
                        ri1.tJ();
                    }

                    aa[k] = new a();
                    ri1.a(aa[k]);
                    amJ = aa;
                    break;
                }
            } while (true);
        }

        public a pf()
        {
            amJ = a.pg();
            aGo = null;
            aGz = -1;
            return this;
        }

        public a()
        {
            pf();
        }
    }

    public static final class a.a extends rk
    {

        private static volatile a.a amK[];
        public String amL;
        public String amM;
        public int viewId;

        public static a.a[] pg()
        {
            if (amK == null)
            {
                synchronized (ro.aGy)
                {
                    if (amK == null)
                    {
                        amK = new a.a[0];
                    }
                }
            }
            return amK;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(rj rj1)
        {
            if (!amL.equals(""))
            {
                rj1.b(1, amL);
            }
            if (!amM.equals(""))
            {
                rj1.b(2, amM);
            }
            if (viewId != 0)
            {
                rj1.z(3, viewId);
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return o(ri1);
        }

        protected int c()
        {
            int i = super.c();
            if (!amL.equals(""))
            {
                i += rj.k(1, amL);
            }
            if (!amM.equals(""))
            {
                i += rj.k(2, amM);
            }
            if (viewId != 0)
            {
                i += rj.B(3, viewId);
            }
            return i;
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
            flag = obj instanceof a.a;
            flag1 = false;
            if (!flag) goto _L4; else goto _L3
_L3:
            a.a a1 = (a.a)obj;
            if (amL != null) goto _L6; else goto _L5
_L5:
            String s1;
            s1 = a1.amL;
            flag1 = false;
            if (s1 != null) goto _L4; else goto _L7
_L7:
            String s;
            if (amM != null)
            {
                break MISSING_BLOCK_LABEL_114;
            }
            s = a1.amM;
            flag1 = false;
            if (s != null) goto _L4; else goto _L8
_L8:
            int i = viewId;
            int j = a1.viewId;
            flag1 = false;
            if (i == j)
            {
                return a(a1);
            }
              goto _L4
_L6:
            if (!amL.equals(a1.amL))
            {
                return false;
            }
              goto _L7
            if (!amM.equals(a1.amM))
            {
                return false;
            }
              goto _L8
        }

        public int hashCode()
        {
            int i;
            int j;
            String s;
            int k;
            if (amL == null)
            {
                i = 0;
            } else
            {
                i = amL.hashCode();
            }
            j = 31 * (i + 527);
            s = amM;
            k = 0;
            if (s != null)
            {
                k = amM.hashCode();
            }
            return 31 * (31 * (j + k) + viewId) + ua();
        }

        public a.a o(ri ri1)
        {
            do
            {
                int i = ri1.tJ();
                switch (i)
                {
                default:
                    if (a(ri1, i))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    amL = ri1.readString();
                    break;

                case 18: // '\022'
                    amM = ri1.readString();
                    break;

                case 24: // '\030'
                    viewId = ri1.tM();
                    break;
                }
            } while (true);
        }

        public a.a ph()
        {
            amL = "";
            amM = "";
            viewId = 0;
            aGo = null;
            aGz = -1;
            return this;
        }

        public a.a()
        {
            ph();
        }
    }

    public static final class b extends rk
    {

        private static volatile b amN[];
        public d amO;
        public String name;

        public static b[] pi()
        {
            if (amN == null)
            {
                synchronized (ro.aGy)
                {
                    if (amN == null)
                    {
                        amN = new b[0];
                    }
                }
            }
            return amN;
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
            if (amO != null)
            {
                rj1.a(2, amO);
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return p(ri1);
        }

        protected int c()
        {
            int i = super.c();
            if (!name.equals(""))
            {
                i += rj.k(1, name);
            }
            if (amO != null)
            {
                i += rj.c(2, amO);
            }
            return i;
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
            flag = obj instanceof b;
            flag1 = false;
            if (!flag) goto _L4; else goto _L3
_L3:
            b b1 = (b)obj;
            if (name != null) goto _L6; else goto _L5
_L5:
            String s;
            s = b1.name;
            flag1 = false;
            if (s != null) goto _L4; else goto _L7
_L7:
            d d1;
            if (amO != null)
            {
                break MISSING_BLOCK_LABEL_92;
            }
            d1 = b1.amO;
            flag1 = false;
            if (d1 != null) goto _L4; else goto _L8
_L8:
            return a(b1);
_L6:
            if (!name.equals(b1.name))
            {
                return false;
            }
              goto _L7
            if (!amO.equals(b1.amO))
            {
                return false;
            }
              goto _L8
        }

        public int hashCode()
        {
            int i;
            int j;
            d d1;
            int k;
            if (name == null)
            {
                i = 0;
            } else
            {
                i = name.hashCode();
            }
            j = 31 * (i + 527);
            d1 = amO;
            k = 0;
            if (d1 != null)
            {
                k = amO.hashCode();
            }
            return 31 * (j + k) + ua();
        }

        public b p(ri ri1)
        {
            do
            {
                int i = ri1.tJ();
                switch (i)
                {
                default:
                    if (a(ri1, i))
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
                    if (amO == null)
                    {
                        amO = new d();
                    }
                    ri1.a(amO);
                    break;
                }
            } while (true);
        }

        public b pj()
        {
            name = "";
            amO = null;
            aGo = null;
            aGz = -1;
            return this;
        }

        public b()
        {
            pj();
        }
    }

    public static final class c extends rk
    {

        public b amP[];
        public String type;

        public void a(rj rj1)
        {
            if (!type.equals(""))
            {
                rj1.b(1, type);
            }
            if (amP != null && amP.length > 0)
            {
                for (int i = 0; i < amP.length; i++)
                {
                    b b1 = amP[i];
                    if (b1 != null)
                    {
                        rj1.a(2, b1);
                    }
                }

            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return q(ri1);
        }

        protected int c()
        {
            int i = super.c();
            if (!type.equals(""))
            {
                i += rj.k(1, type);
            }
            if (amP != null && amP.length > 0)
            {
                int j = i;
                for (int k = 0; k < amP.length; k++)
                {
                    b b1 = amP[k];
                    if (b1 != null)
                    {
                        j += rj.c(2, b1);
                    }
                }

                i = j;
            }
            return i;
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
            if (type != null)
            {
                break; /* Loop/switch isn't completed */
            }
            String s = c1.type;
            flag1 = false;
            if (s != null)
            {
                continue; /* Loop/switch isn't completed */
            }
_L5:
            boolean flag2 = ro.equals(amP, c1.amP);
            flag1 = false;
            if (flag2)
            {
                return a(c1);
            }
            if (true) goto _L4; else goto _L3
_L3:
            if (!type.equals(c1.type))
            {
                return false;
            }
              goto _L5
            if (true) goto _L4; else goto _L6
_L6:
        }

        public int hashCode()
        {
            int i;
            if (type == null)
            {
                i = 0;
            } else
            {
                i = type.hashCode();
            }
            return 31 * (31 * (i + 527) + ro.hashCode(amP)) + ua();
        }

        public c pk()
        {
            type = "";
            amP = b.pi();
            aGo = null;
            aGz = -1;
            return this;
        }

        public c q(ri ri1)
        {
            do
            {
                int i = ri1.tJ();
                switch (i)
                {
                default:
                    if (a(ri1, i))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 10: // '\n'
                    type = ri1.readString();
                    break;

                case 18: // '\022'
                    int j = rt.b(ri1, 18);
                    int k;
                    b ab[];
                    if (amP == null)
                    {
                        k = 0;
                    } else
                    {
                        k = amP.length;
                    }
                    ab = new b[j + k];
                    if (k != 0)
                    {
                        System.arraycopy(amP, 0, ab, 0, k);
                    }
                    for (; k < -1 + ab.length; k++)
                    {
                        ab[k] = new b();
                        ri1.a(ab[k]);
                        ri1.tJ();
                    }

                    ab[k] = new b();
                    ri1.a(ab[k]);
                    amP = ab;
                    break;
                }
            } while (true);
        }

        public c()
        {
            pk();
        }
    }

    public static final class d extends rk
    {

        public String UZ;
        public boolean amQ;
        public long amR;
        public double amS;
        public c amT;

        public void a(rj rj1)
        {
            if (amQ)
            {
                rj1.b(1, amQ);
            }
            if (!UZ.equals(""))
            {
                rj1.b(2, UZ);
            }
            if (amR != 0L)
            {
                rj1.b(3, amR);
            }
            if (Double.doubleToLongBits(amS) != Double.doubleToLongBits(0.0D))
            {
                rj1.a(4, amS);
            }
            if (amT != null)
            {
                rj1.a(5, amT);
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return r(ri1);
        }

        protected int c()
        {
            int i = super.c();
            if (amQ)
            {
                i += rj.c(1, amQ);
            }
            if (!UZ.equals(""))
            {
                i += rj.k(2, UZ);
            }
            if (amR != 0L)
            {
                i += rj.d(3, amR);
            }
            if (Double.doubleToLongBits(amS) != Double.doubleToLongBits(0.0D))
            {
                i += rj.b(4, amS);
            }
            if (amT != null)
            {
                i += rj.c(5, amT);
            }
            return i;
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
            flag = obj instanceof d;
            flag1 = false;
            if (!flag) goto _L4; else goto _L3
_L3:
            d d1;
            boolean flag2;
            boolean flag3;
            d1 = (d)obj;
            flag2 = amQ;
            flag3 = d1.amQ;
            flag1 = false;
            if (flag2 != flag3) goto _L4; else goto _L5
_L5:
            if (UZ != null) goto _L7; else goto _L6
_L6:
            String s;
            s = d1.UZ;
            flag1 = false;
            if (s != null) goto _L4; else goto _L8
_L8:
            int i;
            i = amR != d1.amR;
            flag1 = false;
            if (i != 0) goto _L4; else goto _L9
_L9:
            int j;
            j = Double.doubleToLongBits(amS) != Double.doubleToLongBits(d1.amS);
            flag1 = false;
            if (j != 0) goto _L4; else goto _L10
_L10:
            c c1;
            if (amT != null)
            {
                break MISSING_BLOCK_LABEL_158;
            }
            c1 = d1.amT;
            flag1 = false;
            if (c1 != null) goto _L4; else goto _L11
_L11:
            return a(d1);
_L7:
            if (!UZ.equals(d1.UZ))
            {
                return false;
            }
              goto _L8
            if (!amT.equals(d1.amT))
            {
                return false;
            }
              goto _L11
        }

        public int hashCode()
        {
            char c1;
            int i;
            int j;
            int k;
            long l;
            int i1;
            c c2;
            int j1;
            if (amQ)
            {
                c1 = '\u04CF';
            } else
            {
                c1 = '\u04D5';
            }
            i = 31 * (c1 + 527);
            if (UZ == null)
            {
                j = 0;
            } else
            {
                j = UZ.hashCode();
            }
            k = 31 * (j + i) + (int)(amR ^ amR >>> 32);
            l = Double.doubleToLongBits(amS);
            i1 = 31 * (k * 31 + (int)(l ^ l >>> 32));
            c2 = amT;
            j1 = 0;
            if (c2 != null)
            {
                j1 = amT.hashCode();
            }
            return 31 * (i1 + j1) + ua();
        }

        public d pl()
        {
            amQ = false;
            UZ = "";
            amR = 0L;
            amS = 0.0D;
            amT = null;
            aGo = null;
            aGz = -1;
            return this;
        }

        public d r(ri ri1)
        {
            do
            {
                int i = ri1.tJ();
                switch (i)
                {
                default:
                    if (a(ri1, i))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 8: // '\b'
                    amQ = ri1.tN();
                    break;

                case 18: // '\022'
                    UZ = ri1.readString();
                    break;

                case 24: // '\030'
                    amR = ri1.tL();
                    break;

                case 33: // '!'
                    amS = ri1.readDouble();
                    break;

                case 42: // '*'
                    if (amT == null)
                    {
                        amT = new c();
                    }
                    ri1.a(amT);
                    break;
                }
            } while (true);
        }

        public d()
        {
            pl();
        }
    }

}
