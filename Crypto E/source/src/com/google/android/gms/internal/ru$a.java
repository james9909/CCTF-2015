// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, rj, ro, rt, 
//            ri, ru, rq

public static final class uk extends rk
{

    public String aGJ[];
    public String aGK[];
    public int aGL[];

    public void a(rj rj1)
    {
        if (aGJ != null && aGJ.length > 0)
        {
            for (int l = 0; l < aGJ.length; l++)
            {
                String s1 = aGJ[l];
                if (s1 != null)
                {
                    rj1.b(1, s1);
                }
            }

        }
        if (aGK != null && aGK.length > 0)
        {
            for (int k = 0; k < aGK.length; k++)
            {
                String s = aGK[k];
                if (s != null)
                {
                    rj1.b(2, s);
                }
            }

        }
        if (aGL != null)
        {
            int i = aGL.length;
            int j = 0;
            if (i > 0)
            {
                for (; j < aGL.length; j++)
                {
                    rj1.z(3, aGL[j]);
                }

            }
        }
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return y(ri1);
    }

    protected int c()
    {
        int i = 0;
        int j = super.c();
        int k;
        if (aGJ != null && aGJ.length > 0)
        {
            int l1 = 0;
            int i2 = 0;
            int j2 = 0;
            for (; l1 < aGJ.length; l1++)
            {
                String s1 = aGJ[l1];
                if (s1 != null)
                {
                    j2++;
                    i2 += rj.dr(s1);
                }
            }

            k = j + i2 + j2 * 1;
        } else
        {
            k = j;
        }
        if (aGK != null && aGK.length > 0)
        {
            int i1 = 0;
            int j1 = 0;
            int k1 = 0;
            for (; i1 < aGK.length; i1++)
            {
                String s = aGK[i1];
                if (s != null)
                {
                    k1++;
                    j1 += rj.dr(s);
                }
            }

            k = k + j1 + k1 * 1;
        }
        if (aGL != null && aGL.length > 0)
        {
            int l = 0;
            for (; i < aGL.length; i++)
            {
                l += rj.ie(aGL[i]);
            }

            k = k + l + 1 * aGL.length;
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
            boolean flag = obj instanceof aGL;
            flag1 = false;
            if (flag)
            {
                aGL agl = (aGL)obj;
                boolean flag2 = ro.equals(aGJ, agl.aGJ);
                flag1 = false;
                if (flag2)
                {
                    boolean flag3 = ro.equals(aGK, agl.aGK);
                    flag1 = false;
                    if (flag3)
                    {
                        boolean flag4 = ro.equals(aGL, agl.aGL);
                        flag1 = false;
                        if (flag4)
                        {
                            return a(agl);
                        }
                    }
                }
            }
        }
        return flag1;
    }

    public int hashCode()
    {
        return 31 * (31 * (31 * (527 + ro.hashCode(aGJ)) + ro.hashCode(aGK)) + ro.hashCode(aGL)) + ua();
    }

    public ua uk()
    {
        aGJ = rt.aGG;
        aGK = rt.aGG;
        aGL = rt.aGB;
        aGo = null;
        aGz = -1;
        return this;
    }

    public aGz y(ri ri1)
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
                int j2 = rt.b(ri1, 10);
                int k2;
                String as1[];
                if (aGJ == null)
                {
                    k2 = 0;
                } else
                {
                    k2 = aGJ.length;
                }
                as1 = new String[j2 + k2];
                if (k2 != 0)
                {
                    System.arraycopy(aGJ, 0, as1, 0, k2);
                }
                for (; k2 < -1 + as1.length; k2++)
                {
                    as1[k2] = ri1.readString();
                    ri1.tJ();
                }

                as1[k2] = ri1.readString();
                aGJ = as1;
                break;

            case 18: // '\022'
                int l1 = rt.b(ri1, 18);
                int i2;
                String as[];
                if (aGK == null)
                {
                    i2 = 0;
                } else
                {
                    i2 = aGK.length;
                }
                as = new String[l1 + i2];
                if (i2 != 0)
                {
                    System.arraycopy(aGK, 0, as, 0, i2);
                }
                for (; i2 < -1 + as.length; i2++)
                {
                    as[i2] = ri1.readString();
                    ri1.tJ();
                }

                as[i2] = ri1.readString();
                aGK = as;
                break;

            case 24: // '\030'
                int j1 = rt.b(ri1, 24);
                int k1;
                int ai1[];
                if (aGL == null)
                {
                    k1 = 0;
                } else
                {
                    k1 = aGL.length;
                }
                ai1 = new int[j1 + k1];
                if (k1 != 0)
                {
                    System.arraycopy(aGL, 0, ai1, 0, k1);
                }
                for (; k1 < -1 + ai1.length; k1++)
                {
                    ai1[k1] = ri1.tM();
                    ri1.tJ();
                }

                ai1[k1] = ri1.tM();
                aGL = ai1;
                break;

            case 26: // '\032'
                int j = ri1.hX(ri1.tQ());
                int k = ri1.getPosition();
                int l;
                for (l = 0; ri1.tV() > 0; l++)
                {
                    ri1.tM();
                }

                ri1.hZ(k);
                int i1;
                int ai[];
                if (aGL == null)
                {
                    i1 = 0;
                } else
                {
                    i1 = aGL.length;
                }
                ai = new int[l + i1];
                if (i1 != 0)
                {
                    System.arraycopy(aGL, 0, ai, 0, i1);
                }
                for (; i1 < ai.length; i1++)
                {
                    ai[i1] = ri1.tM();
                }

                aGL = ai;
                ri1.hY(j);
                break;
            }
        } while (true);
    }

    public ()
    {
        uk();
    }
}
