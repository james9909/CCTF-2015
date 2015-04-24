// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, rl, rj, ro, 
//            ri, rt, c, rq

public static final class n extends rk
{

    public static final rl gf = rl.a(11, com/google/android/gms/internal/c$h, 810);
    private static final  gg[] = new [0];
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
            for (int j1 = 0; j1 < gh.length; j1++)
            {
                rj1.z(1, gh[j1]);
            }

        }
        if (gi != null && gi.length > 0)
        {
            for (int i1 = 0; i1 < gi.length; i1++)
            {
                rj1.z(2, gi[i1]);
            }

        }
        if (gj != null && gj.length > 0)
        {
            for (int l = 0; l < gj.length; l++)
            {
                rj1.z(3, gj[l]);
            }

        }
        if (gk != 0)
        {
            rj1.z(4, gk);
        }
        if (gl != null)
        {
            int j = gl.length;
            int k = 0;
            if (j > 0)
            {
                for (; k < gl.length; k++)
                {
                    rj1.z(5, gl[k]);
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
        int j = 0;
        int k = super.c();
        int l;
        if (gh != null && gh.length > 0)
        {
            int j2 = 0;
            int k2 = 0;
            for (; j2 < gh.length; j2++)
            {
                k2 += rj.ie(gh[j2]);
            }

            l = k + k2 + 1 * gh.length;
        } else
        {
            l = k;
        }
        if (gi != null && gi.length > 0)
        {
            int l1 = 0;
            int i2 = 0;
            for (; l1 < gi.length; l1++)
            {
                i2 += rj.ie(gi[l1]);
            }

            l = l + i2 + 1 * gi.length;
        }
        if (gj != null && gj.length > 0)
        {
            int j1 = 0;
            int k1 = 0;
            for (; j1 < gj.length; j1++)
            {
                k1 += rj.ie(gj[j1]);
            }

            l = l + k1 + 1 * gj.length;
        }
        if (gk != 0)
        {
            l += rj.B(4, gk);
        }
        if (gl != null && gl.length > 0)
        {
            int i1 = 0;
            for (; j < gl.length; j++)
            {
                i1 += rj.ie(gl[j]);
            }

            l = l + i1 + 1 * gl.length;
        }
        if (gm != 0)
        {
            l += rj.B(6, gm);
        }
        if (gn != 0)
        {
            l += rj.B(7, gn);
        }
        return l;
    }

    public boolean equals(Object obj)
    {
        boolean flag1;
        if (obj == this)
        {
            flag1 = true;
        } else
        {
            boolean flag = obj instanceof gn;
            flag1 = false;
            if (flag)
            {
                gn gn1 = (gn)obj;
                boolean flag2 = ro.equals(gh, gn1.gh);
                flag1 = false;
                if (flag2)
                {
                    boolean flag3 = ro.equals(gi, gn1.gi);
                    flag1 = false;
                    if (flag3)
                    {
                        boolean flag4 = ro.equals(gj, gn1.gj);
                        flag1 = false;
                        if (flag4)
                        {
                            int j = gk;
                            int k = gn1.gk;
                            flag1 = false;
                            if (j == k)
                            {
                                boolean flag5 = ro.equals(gl, gn1.gl);
                                flag1 = false;
                                if (flag5)
                                {
                                    int l = gm;
                                    int i1 = gn1.gm;
                                    flag1 = false;
                                    if (l == i1)
                                    {
                                        int j1 = gn;
                                        int k1 = gn1.gn;
                                        flag1 = false;
                                        if (j1 == k1)
                                        {
                                            return a(gn1);
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

    public ua i(ri ri1)
    {
        do
        {
            int j = ri1.tJ();
            switch (j)
            {
            default:
                if (a(ri1, j))
                {
                    continue;
                }
                // fall through

            case 0: // '\0'
                return this;

            case 8: // '\b'
                int i6 = rt.b(ri1, 8);
                int j6;
                int ai7[];
                if (gh == null)
                {
                    j6 = 0;
                } else
                {
                    j6 = gh.length;
                }
                ai7 = new int[i6 + j6];
                if (j6 != 0)
                {
                    System.arraycopy(gh, 0, ai7, 0, j6);
                }
                for (; j6 < -1 + ai7.length; j6++)
                {
                    ai7[j6] = ri1.tM();
                    ri1.tJ();
                }

                ai7[j6] = ri1.tM();
                gh = ai7;
                break;

            case 10: // '\n'
                int i5 = ri1.hX(ri1.tQ());
                int j5 = ri1.getPosition();
                int k5;
                for (k5 = 0; ri1.tV() > 0; k5++)
                {
                    ri1.tM();
                }

                ri1.hZ(j5);
                int l5;
                int ai6[];
                if (gh == null)
                {
                    l5 = 0;
                } else
                {
                    l5 = gh.length;
                }
                ai6 = new int[k5 + l5];
                if (l5 != 0)
                {
                    System.arraycopy(gh, 0, ai6, 0, l5);
                }
                for (; l5 < ai6.length; l5++)
                {
                    ai6[l5] = ri1.tM();
                }

                gh = ai6;
                ri1.hY(i5);
                break;

            case 16: // '\020'
                int k4 = rt.b(ri1, 16);
                int l4;
                int ai5[];
                if (gi == null)
                {
                    l4 = 0;
                } else
                {
                    l4 = gi.length;
                }
                ai5 = new int[k4 + l4];
                if (l4 != 0)
                {
                    System.arraycopy(gi, 0, ai5, 0, l4);
                }
                for (; l4 < -1 + ai5.length; l4++)
                {
                    ai5[l4] = ri1.tM();
                    ri1.tJ();
                }

                ai5[l4] = ri1.tM();
                gi = ai5;
                break;

            case 18: // '\022'
                int k3 = ri1.hX(ri1.tQ());
                int l3 = ri1.getPosition();
                int i4;
                for (i4 = 0; ri1.tV() > 0; i4++)
                {
                    ri1.tM();
                }

                ri1.hZ(l3);
                int j4;
                int ai4[];
                if (gi == null)
                {
                    j4 = 0;
                } else
                {
                    j4 = gi.length;
                }
                ai4 = new int[i4 + j4];
                if (j4 != 0)
                {
                    System.arraycopy(gi, 0, ai4, 0, j4);
                }
                for (; j4 < ai4.length; j4++)
                {
                    ai4[j4] = ri1.tM();
                }

                gi = ai4;
                ri1.hY(k3);
                break;

            case 24: // '\030'
                int i3 = rt.b(ri1, 24);
                int j3;
                int ai3[];
                if (gj == null)
                {
                    j3 = 0;
                } else
                {
                    j3 = gj.length;
                }
                ai3 = new int[i3 + j3];
                if (j3 != 0)
                {
                    System.arraycopy(gj, 0, ai3, 0, j3);
                }
                for (; j3 < -1 + ai3.length; j3++)
                {
                    ai3[j3] = ri1.tM();
                    ri1.tJ();
                }

                ai3[j3] = ri1.tM();
                gj = ai3;
                break;

            case 26: // '\032'
                int i2 = ri1.hX(ri1.tQ());
                int j2 = ri1.getPosition();
                int k2;
                for (k2 = 0; ri1.tV() > 0; k2++)
                {
                    ri1.tM();
                }

                ri1.hZ(j2);
                int l2;
                int ai2[];
                if (gj == null)
                {
                    l2 = 0;
                } else
                {
                    l2 = gj.length;
                }
                ai2 = new int[k2 + l2];
                if (l2 != 0)
                {
                    System.arraycopy(gj, 0, ai2, 0, l2);
                }
                for (; l2 < ai2.length; l2++)
                {
                    ai2[l2] = ri1.tM();
                }

                gj = ai2;
                ri1.hY(i2);
                break;

            case 32: // ' '
                gk = ri1.tM();
                break;

            case 40: // '('
                int k1 = rt.b(ri1, 40);
                int l1;
                int ai1[];
                if (gl == null)
                {
                    l1 = 0;
                } else
                {
                    l1 = gl.length;
                }
                ai1 = new int[k1 + l1];
                if (l1 != 0)
                {
                    System.arraycopy(gl, 0, ai1, 0, l1);
                }
                for (; l1 < -1 + ai1.length; l1++)
                {
                    ai1[l1] = ri1.tM();
                    ri1.tJ();
                }

                ai1[l1] = ri1.tM();
                gl = ai1;
                break;

            case 42: // '*'
                int k = ri1.hX(ri1.tQ());
                int l = ri1.getPosition();
                int i1;
                for (i1 = 0; ri1.tV() > 0; i1++)
                {
                    ri1.tM();
                }

                ri1.hZ(l);
                int j1;
                int ai[];
                if (gl == null)
                {
                    j1 = 0;
                } else
                {
                    j1 = gl.length;
                }
                ai = new int[i1 + j1];
                if (j1 != 0)
                {
                    System.arraycopy(gl, 0, ai, 0, j1);
                }
                for (; j1 < ai.length; j1++)
                {
                    ai[j1] = ri1.tM();
                }

                gl = ai;
                ri1.hY(k);
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

    public M n()
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


    public ()
    {
        n();
    }
}
