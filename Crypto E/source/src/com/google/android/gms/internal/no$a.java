// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, rj, ro, ri, 
//            rt, no, rq

public static final class pf extends rk
{
    public static final class a extends rk
    {

        private static volatile a amK[];
        public String amL;
        public String amM;
        public int viewId;

        public static a[] pg()
        {
            if (amK == null)
            {
                synchronized (ro.aGy)
                {
                    if (amK == null)
                    {
                        amK = new a[0];
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
            flag = obj instanceof a;
            flag1 = false;
            if (!flag) goto _L4; else goto _L3
_L3:
            a a1 = (a)obj;
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

        public a o(ri ri1)
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

        public a ph()
        {
            amL = "";
            amM = "";
            viewId = 0;
            aGo = null;
            aGz = -1;
            return this;
        }

        public a()
        {
            ph();
        }
    }


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
            boolean flag = obj instanceof amJ;
            flag1 = false;
            if (flag)
            {
                amJ amj = (amJ)obj;
                boolean flag2 = ro.equals(amJ, amj.amJ);
                flag1 = false;
                if (flag2)
                {
                    return a(amj);
                }
            }
        }
        return flag1;
    }

    public int hashCode()
    {
        return 31 * (527 + ro.hashCode(amJ)) + ua();
    }

    public ua n(ri ri1)
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

    public amJ pf()
    {
        amJ = a.pg();
        aGo = null;
        aGz = -1;
        return this;
    }

    public a.ph()
    {
        pf();
    }
}
