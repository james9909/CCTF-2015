// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, ro, rj, ri, 
//            rt, c, rq

public static final class e extends rk
{

    private static volatile ua fp[];
    public int fq[];
    public int fr;
    public boolean fs;
    public boolean ft;
    public int name;

    public static e[] d()
    {
        if (fp == null)
        {
            synchronized (ro.aGy)
            {
                if (fp == null)
                {
                    fp = new fp[0];
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
            for (int i = 0; i < fq.length; i++)
            {
                rj1.z(3, fq[i]);
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
        int i = 0;
        int j = super.c();
        if (ft)
        {
            j += rj.c(1, ft);
        }
        int k = j + rj.B(2, fr);
        int l;
        if (fq != null && fq.length > 0)
        {
            for (int i1 = 0; i1 < fq.length; i1++)
            {
                i += rj.ie(fq[i1]);
            }

            l = k + i + 1 * fq.length;
        } else
        {
            l = k;
        }
        if (name != 0)
        {
            l += rj.B(4, name);
        }
        if (fs)
        {
            l += rj.c(6, fs);
        }
        return l;
    }

    public fs c(ri ri1)
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
                ft = ri1.tN();
                break;

            case 16: // '\020'
                fr = ri1.tM();
                break;

            case 24: // '\030'
                int j1 = rt.b(ri1, 24);
                int k1;
                int ai1[];
                if (fq == null)
                {
                    k1 = 0;
                } else
                {
                    k1 = fq.length;
                }
                ai1 = new int[j1 + k1];
                if (k1 != 0)
                {
                    System.arraycopy(fq, 0, ai1, 0, k1);
                }
                for (; k1 < -1 + ai1.length; k1++)
                {
                    ai1[k1] = ri1.tM();
                    ri1.tJ();
                }

                ai1[k1] = ri1.tM();
                fq = ai1;
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
                if (fq == null)
                {
                    i1 = 0;
                } else
                {
                    i1 = fq.length;
                }
                ai = new int[l + i1];
                if (i1 != 0)
                {
                    System.arraycopy(fq, 0, ai, 0, i1);
                }
                for (; i1 < ai.length; i1++)
                {
                    ai[i1] = ri1.tM();
                }

                fq = ai;
                ri1.hY(j);
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

    public N e()
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
            boolean flag = obj instanceof aGz;
            flag1 = false;
            if (flag)
            {
                aGz agz = (aGz)obj;
                boolean flag2 = ro.equals(fq, agz.fq);
                flag1 = false;
                if (flag2)
                {
                    int i = fr;
                    int j = agz.fr;
                    flag1 = false;
                    if (i == j)
                    {
                        int k = name;
                        int l = agz.name;
                        flag1 = false;
                        if (k == l)
                        {
                            boolean flag3 = fs;
                            boolean flag4 = agz.fs;
                            flag1 = false;
                            if (flag3 == flag4)
                            {
                                boolean flag5 = ft;
                                boolean flag6 = agz.ft;
                                flag1 = false;
                                if (flag5 == flag6)
                                {
                                    return a(agz);
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
        int i = 31 * (31 * (31 * (527 + ro.hashCode(fq)) + fr) + name);
        char c2;
        int j;
        if (fs)
        {
            c2 = c1;
        } else
        {
            c2 = '\u04D5';
        }
        j = 31 * (c2 + i);
        if (!ft)
        {
            c1 = '\u04D5';
        }
        return 31 * (j + c1) + ua();
    }

    public ()
    {
        e();
    }
}
