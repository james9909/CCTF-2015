// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, rj, ri, rt, 
//            ro, c, rq

public static final class h extends rk
{

    public ua fA[];
    public ua fB[];
    public ua fC[];

    public void a(rj rj1)
    {
        if (fA != null && fA.length > 0)
        {
            for (int l = 0; l < fA.length; l++)
            {
                h h3 = fA[l];
                if (h3 != null)
                {
                    rj1.a(1, h3);
                }
            }

        }
        if (fB != null && fB.length > 0)
        {
            for (int k = 0; k < fB.length; k++)
            {
                h h2 = fB[k];
                if (h2 != null)
                {
                    rj1.a(2, h2);
                }
            }

        }
        if (fC != null)
        {
            int i = fC.length;
            int j = 0;
            if (i > 0)
            {
                for (; j < fC.length; j++)
                {
                    h h1 = fC[j];
                    if (h1 != null)
                    {
                        rj1.a(3, h1);
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
        int i = super.c();
        if (fA != null && fA.length > 0)
        {
            int j1 = i;
            for (int k1 = 0; k1 < fA.length; k1++)
            {
                e e3 = fA[k1];
                if (e3 != null)
                {
                    j1 += rj.c(1, e3);
                }
            }

            i = j1;
        }
        if (fB != null && fB.length > 0)
        {
            int l = i;
            for (int i1 = 0; i1 < fB.length; i1++)
            {
                e e2 = fB[i1];
                if (e2 != null)
                {
                    l += rj.c(2, e2);
                }
            }

            i = l;
        }
        if (fC != null)
        {
            int j = fC.length;
            int k = 0;
            if (j > 0)
            {
                for (; k < fC.length; k++)
                {
                    e e1 = fC[k];
                    if (e1 != null)
                    {
                        i += rj.c(3, e1);
                    }
                }

            }
        }
        return i;
    }

    public  e(ri ri1)
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
                int j1 = rt.b(ri1, 10);
                int k1;
                 a3[];
                if (fA == null)
                {
                    k1 = 0;
                } else
                {
                    k1 = fA.length;
                }
                a3 = new fA[j1 + k1];
                if (k1 != 0)
                {
                    System.arraycopy(fA, 0, a3, 0, k1);
                }
                for (; k1 < -1 + a3.length; k1++)
                {
                    a3[k1] = new <init>();
                    ri1.a(a3[k1]);
                    ri1.tJ();
                }

                a3[k1] = new <init>();
                ri1.a(a3[k1]);
                fA = a3;
                break;

            case 18: // '\022'
                int l = rt.b(ri1, 18);
                int i1;
                 a2[];
                if (fB == null)
                {
                    i1 = 0;
                } else
                {
                    i1 = fB.length;
                }
                a2 = new fB[l + i1];
                if (i1 != 0)
                {
                    System.arraycopy(fB, 0, a2, 0, i1);
                }
                for (; i1 < -1 + a2.length; i1++)
                {
                    a2[i1] = new <init>();
                    ri1.a(a2[i1]);
                    ri1.tJ();
                }

                a2[i1] = new <init>();
                ri1.a(a2[i1]);
                fB = a2;
                break;

            case 26: // '\032'
                int j = rt.b(ri1, 26);
                int k;
                 a1[];
                if (fC == null)
                {
                    k = 0;
                } else
                {
                    k = fC.length;
                }
                a1 = new fC[j + k];
                if (k != 0)
                {
                    System.arraycopy(fC, 0, a1, 0, k);
                }
                for (; k < -1 + a1.length; k++)
                {
                    a1[k] = new <init>();
                    ri1.a(a1[k]);
                    ri1.tJ();
                }

                a1[k] = new <init>();
                ri1.a(a1[k]);
                fC = a1;
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
            boolean flag = obj instanceof fC;
            flag1 = false;
            if (flag)
            {
                fC fc = (fC)obj;
                boolean flag2 = ro.equals(fA, fc.fA);
                flag1 = false;
                if (flag2)
                {
                    boolean flag3 = ro.equals(fB, fc.fB);
                    flag1 = false;
                    if (flag3)
                    {
                        boolean flag4 = ro.equals(fC, fc.fC);
                        flag1 = false;
                        if (flag4)
                        {
                            return a(fc);
                        }
                    }
                }
            }
        }
        return flag1;
    }

    public a h()
    {
        fA = r();
        fB = r();
        fC = f();
        aGo = null;
        aGz = -1;
        return this;
    }

    public int hashCode()
    {
        return 31 * (31 * (31 * (527 + ro.hashCode(fA)) + ro.hashCode(fB)) + ro.hashCode(fC)) + ua();
    }

    public ()
    {
        h();
    }
}
