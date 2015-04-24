// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, ro, rj, ri, 
//            rt, c, rq

public static final class m extends rk
{

    private static volatile aGz fU[];
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

    public static m[] l()
    {
        if (fU == null)
        {
            synchronized (ro.aGy)
            {
                if (fU == null)
                {
                    fU = new fU[0];
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
            for (int l2 = 0; l2 < fV.length; l2++)
            {
                rj1.z(1, fV[l2]);
            }

        }
        if (fW != null && fW.length > 0)
        {
            for (int k2 = 0; k2 < fW.length; k2++)
            {
                rj1.z(2, fW[k2]);
            }

        }
        if (fX != null && fX.length > 0)
        {
            for (int j2 = 0; j2 < fX.length; j2++)
            {
                rj1.z(3, fX[j2]);
            }

        }
        if (fY != null && fY.length > 0)
        {
            for (int i2 = 0; i2 < fY.length; i2++)
            {
                rj1.z(4, fY[i2]);
            }

        }
        if (fZ != null && fZ.length > 0)
        {
            for (int l1 = 0; l1 < fZ.length; l1++)
            {
                rj1.z(5, fZ[l1]);
            }

        }
        if (ga != null && ga.length > 0)
        {
            for (int k1 = 0; k1 < ga.length; k1++)
            {
                rj1.z(6, ga[k1]);
            }

        }
        if (gb != null && gb.length > 0)
        {
            for (int j1 = 0; j1 < gb.length; j1++)
            {
                rj1.z(7, gb[j1]);
            }

        }
        if (gc != null && gc.length > 0)
        {
            for (int i1 = 0; i1 < gc.length; i1++)
            {
                rj1.z(8, gc[i1]);
            }

        }
        if (gd != null && gd.length > 0)
        {
            for (int k = 0; k < gd.length; k++)
            {
                rj1.z(9, gd[k]);
            }

        }
        if (ge != null)
        {
            int i = ge.length;
            int j = 0;
            if (i > 0)
            {
                for (; j < ge.length; j++)
                {
                    rj1.z(10, ge[j]);
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
        int i = 0;
        int j = super.c();
        int k;
        if (fV != null && fV.length > 0)
        {
            int j5 = 0;
            int k5 = 0;
            for (; j5 < fV.length; j5++)
            {
                k5 += rj.ie(fV[j5]);
            }

            k = j + k5 + 1 * fV.length;
        } else
        {
            k = j;
        }
        if (fW != null && fW.length > 0)
        {
            int l4 = 0;
            int i5 = 0;
            for (; l4 < fW.length; l4++)
            {
                i5 += rj.ie(fW[l4]);
            }

            k = k + i5 + 1 * fW.length;
        }
        if (fX != null && fX.length > 0)
        {
            int j4 = 0;
            int k4 = 0;
            for (; j4 < fX.length; j4++)
            {
                k4 += rj.ie(fX[j4]);
            }

            k = k + k4 + 1 * fX.length;
        }
        if (fY != null && fY.length > 0)
        {
            int l3 = 0;
            int i4 = 0;
            for (; l3 < fY.length; l3++)
            {
                i4 += rj.ie(fY[l3]);
            }

            k = k + i4 + 1 * fY.length;
        }
        if (fZ != null && fZ.length > 0)
        {
            int j3 = 0;
            int k3 = 0;
            for (; j3 < fZ.length; j3++)
            {
                k3 += rj.ie(fZ[j3]);
            }

            k = k + k3 + 1 * fZ.length;
        }
        if (ga != null && ga.length > 0)
        {
            int l2 = 0;
            int i3 = 0;
            for (; l2 < ga.length; l2++)
            {
                i3 += rj.ie(ga[l2]);
            }

            k = k + i3 + 1 * ga.length;
        }
        if (gb != null && gb.length > 0)
        {
            int j2 = 0;
            int k2 = 0;
            for (; j2 < gb.length; j2++)
            {
                k2 += rj.ie(gb[j2]);
            }

            k = k + k2 + 1 * gb.length;
        }
        if (gc != null && gc.length > 0)
        {
            int l1 = 0;
            int i2 = 0;
            for (; l1 < gc.length; l1++)
            {
                i2 += rj.ie(gc[l1]);
            }

            k = k + i2 + 1 * gc.length;
        }
        if (gd != null && gd.length > 0)
        {
            int j1 = 0;
            int k1 = 0;
            for (; j1 < gd.length; j1++)
            {
                k1 += rj.ie(gd[j1]);
            }

            k = k + k1 + 1 * gd.length;
        }
        if (ge != null && ge.length > 0)
        {
            int i1 = 0;
            for (; i < ge.length; i++)
            {
                i1 += rj.ie(ge[i]);
            }

            k = k + i1 + 1 * ge.length;
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
            boolean flag = obj instanceof ge;
            flag1 = false;
            if (flag)
            {
                ge ge1 = (ge)obj;
                boolean flag2 = ro.equals(fV, ge1.fV);
                flag1 = false;
                if (flag2)
                {
                    boolean flag3 = ro.equals(fW, ge1.fW);
                    flag1 = false;
                    if (flag3)
                    {
                        boolean flag4 = ro.equals(fX, ge1.fX);
                        flag1 = false;
                        if (flag4)
                        {
                            boolean flag5 = ro.equals(fY, ge1.fY);
                            flag1 = false;
                            if (flag5)
                            {
                                boolean flag6 = ro.equals(fZ, ge1.fZ);
                                flag1 = false;
                                if (flag6)
                                {
                                    boolean flag7 = ro.equals(ga, ge1.ga);
                                    flag1 = false;
                                    if (flag7)
                                    {
                                        boolean flag8 = ro.equals(gb, ge1.gb);
                                        flag1 = false;
                                        if (flag8)
                                        {
                                            boolean flag9 = ro.equals(gc, ge1.gc);
                                            flag1 = false;
                                            if (flag9)
                                            {
                                                boolean flag10 = ro.equals(gd, ge1.gd);
                                                flag1 = false;
                                                if (flag10)
                                                {
                                                    boolean flag11 = ro.equals(ge, ge1.ge);
                                                    flag1 = false;
                                                    if (flag11)
                                                    {
                                                        return a(ge1);
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

    public a h(ri ri1)
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
                int i15 = rt.b(ri1, 8);
                int j15;
                int ai19[];
                if (fV == null)
                {
                    j15 = 0;
                } else
                {
                    j15 = fV.length;
                }
                ai19 = new int[i15 + j15];
                if (j15 != 0)
                {
                    System.arraycopy(fV, 0, ai19, 0, j15);
                }
                for (; j15 < -1 + ai19.length; j15++)
                {
                    ai19[j15] = ri1.tM();
                    ri1.tJ();
                }

                ai19[j15] = ri1.tM();
                fV = ai19;
                break;

            case 10: // '\n'
                int i14 = ri1.hX(ri1.tQ());
                int j14 = ri1.getPosition();
                int k14;
                for (k14 = 0; ri1.tV() > 0; k14++)
                {
                    ri1.tM();
                }

                ri1.hZ(j14);
                int l14;
                int ai18[];
                if (fV == null)
                {
                    l14 = 0;
                } else
                {
                    l14 = fV.length;
                }
                ai18 = new int[k14 + l14];
                if (l14 != 0)
                {
                    System.arraycopy(fV, 0, ai18, 0, l14);
                }
                for (; l14 < ai18.length; l14++)
                {
                    ai18[l14] = ri1.tM();
                }

                fV = ai18;
                ri1.hY(i14);
                break;

            case 16: // '\020'
                int k13 = rt.b(ri1, 16);
                int l13;
                int ai17[];
                if (fW == null)
                {
                    l13 = 0;
                } else
                {
                    l13 = fW.length;
                }
                ai17 = new int[k13 + l13];
                if (l13 != 0)
                {
                    System.arraycopy(fW, 0, ai17, 0, l13);
                }
                for (; l13 < -1 + ai17.length; l13++)
                {
                    ai17[l13] = ri1.tM();
                    ri1.tJ();
                }

                ai17[l13] = ri1.tM();
                fW = ai17;
                break;

            case 18: // '\022'
                int k12 = ri1.hX(ri1.tQ());
                int l12 = ri1.getPosition();
                int i13;
                for (i13 = 0; ri1.tV() > 0; i13++)
                {
                    ri1.tM();
                }

                ri1.hZ(l12);
                int j13;
                int ai16[];
                if (fW == null)
                {
                    j13 = 0;
                } else
                {
                    j13 = fW.length;
                }
                ai16 = new int[i13 + j13];
                if (j13 != 0)
                {
                    System.arraycopy(fW, 0, ai16, 0, j13);
                }
                for (; j13 < ai16.length; j13++)
                {
                    ai16[j13] = ri1.tM();
                }

                fW = ai16;
                ri1.hY(k12);
                break;

            case 24: // '\030'
                int i12 = rt.b(ri1, 24);
                int j12;
                int ai15[];
                if (fX == null)
                {
                    j12 = 0;
                } else
                {
                    j12 = fX.length;
                }
                ai15 = new int[i12 + j12];
                if (j12 != 0)
                {
                    System.arraycopy(fX, 0, ai15, 0, j12);
                }
                for (; j12 < -1 + ai15.length; j12++)
                {
                    ai15[j12] = ri1.tM();
                    ri1.tJ();
                }

                ai15[j12] = ri1.tM();
                fX = ai15;
                break;

            case 26: // '\032'
                int i11 = ri1.hX(ri1.tQ());
                int j11 = ri1.getPosition();
                int k11;
                for (k11 = 0; ri1.tV() > 0; k11++)
                {
                    ri1.tM();
                }

                ri1.hZ(j11);
                int l11;
                int ai14[];
                if (fX == null)
                {
                    l11 = 0;
                } else
                {
                    l11 = fX.length;
                }
                ai14 = new int[k11 + l11];
                if (l11 != 0)
                {
                    System.arraycopy(fX, 0, ai14, 0, l11);
                }
                for (; l11 < ai14.length; l11++)
                {
                    ai14[l11] = ri1.tM();
                }

                fX = ai14;
                ri1.hY(i11);
                break;

            case 32: // ' '
                int k10 = rt.b(ri1, 32);
                int l10;
                int ai13[];
                if (fY == null)
                {
                    l10 = 0;
                } else
                {
                    l10 = fY.length;
                }
                ai13 = new int[k10 + l10];
                if (l10 != 0)
                {
                    System.arraycopy(fY, 0, ai13, 0, l10);
                }
                for (; l10 < -1 + ai13.length; l10++)
                {
                    ai13[l10] = ri1.tM();
                    ri1.tJ();
                }

                ai13[l10] = ri1.tM();
                fY = ai13;
                break;

            case 34: // '"'
                int k9 = ri1.hX(ri1.tQ());
                int l9 = ri1.getPosition();
                int i10;
                for (i10 = 0; ri1.tV() > 0; i10++)
                {
                    ri1.tM();
                }

                ri1.hZ(l9);
                int j10;
                int ai12[];
                if (fY == null)
                {
                    j10 = 0;
                } else
                {
                    j10 = fY.length;
                }
                ai12 = new int[i10 + j10];
                if (j10 != 0)
                {
                    System.arraycopy(fY, 0, ai12, 0, j10);
                }
                for (; j10 < ai12.length; j10++)
                {
                    ai12[j10] = ri1.tM();
                }

                fY = ai12;
                ri1.hY(k9);
                break;

            case 40: // '('
                int i9 = rt.b(ri1, 40);
                int j9;
                int ai11[];
                if (fZ == null)
                {
                    j9 = 0;
                } else
                {
                    j9 = fZ.length;
                }
                ai11 = new int[i9 + j9];
                if (j9 != 0)
                {
                    System.arraycopy(fZ, 0, ai11, 0, j9);
                }
                for (; j9 < -1 + ai11.length; j9++)
                {
                    ai11[j9] = ri1.tM();
                    ri1.tJ();
                }

                ai11[j9] = ri1.tM();
                fZ = ai11;
                break;

            case 42: // '*'
                int i8 = ri1.hX(ri1.tQ());
                int j8 = ri1.getPosition();
                int k8;
                for (k8 = 0; ri1.tV() > 0; k8++)
                {
                    ri1.tM();
                }

                ri1.hZ(j8);
                int l8;
                int ai10[];
                if (fZ == null)
                {
                    l8 = 0;
                } else
                {
                    l8 = fZ.length;
                }
                ai10 = new int[k8 + l8];
                if (l8 != 0)
                {
                    System.arraycopy(fZ, 0, ai10, 0, l8);
                }
                for (; l8 < ai10.length; l8++)
                {
                    ai10[l8] = ri1.tM();
                }

                fZ = ai10;
                ri1.hY(i8);
                break;

            case 48: // '0'
                int k7 = rt.b(ri1, 48);
                int l7;
                int ai9[];
                if (ga == null)
                {
                    l7 = 0;
                } else
                {
                    l7 = ga.length;
                }
                ai9 = new int[k7 + l7];
                if (l7 != 0)
                {
                    System.arraycopy(ga, 0, ai9, 0, l7);
                }
                for (; l7 < -1 + ai9.length; l7++)
                {
                    ai9[l7] = ri1.tM();
                    ri1.tJ();
                }

                ai9[l7] = ri1.tM();
                ga = ai9;
                break;

            case 50: // '2'
                int k6 = ri1.hX(ri1.tQ());
                int l6 = ri1.getPosition();
                int i7;
                for (i7 = 0; ri1.tV() > 0; i7++)
                {
                    ri1.tM();
                }

                ri1.hZ(l6);
                int j7;
                int ai8[];
                if (ga == null)
                {
                    j7 = 0;
                } else
                {
                    j7 = ga.length;
                }
                ai8 = new int[i7 + j7];
                if (j7 != 0)
                {
                    System.arraycopy(ga, 0, ai8, 0, j7);
                }
                for (; j7 < ai8.length; j7++)
                {
                    ai8[j7] = ri1.tM();
                }

                ga = ai8;
                ri1.hY(k6);
                break;

            case 56: // '8'
                int i6 = rt.b(ri1, 56);
                int j6;
                int ai7[];
                if (gb == null)
                {
                    j6 = 0;
                } else
                {
                    j6 = gb.length;
                }
                ai7 = new int[i6 + j6];
                if (j6 != 0)
                {
                    System.arraycopy(gb, 0, ai7, 0, j6);
                }
                for (; j6 < -1 + ai7.length; j6++)
                {
                    ai7[j6] = ri1.tM();
                    ri1.tJ();
                }

                ai7[j6] = ri1.tM();
                gb = ai7;
                break;

            case 58: // ':'
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
                if (gb == null)
                {
                    l5 = 0;
                } else
                {
                    l5 = gb.length;
                }
                ai6 = new int[k5 + l5];
                if (l5 != 0)
                {
                    System.arraycopy(gb, 0, ai6, 0, l5);
                }
                for (; l5 < ai6.length; l5++)
                {
                    ai6[l5] = ri1.tM();
                }

                gb = ai6;
                ri1.hY(i5);
                break;

            case 64: // '@'
                int k4 = rt.b(ri1, 64);
                int l4;
                int ai5[];
                if (gc == null)
                {
                    l4 = 0;
                } else
                {
                    l4 = gc.length;
                }
                ai5 = new int[k4 + l4];
                if (l4 != 0)
                {
                    System.arraycopy(gc, 0, ai5, 0, l4);
                }
                for (; l4 < -1 + ai5.length; l4++)
                {
                    ai5[l4] = ri1.tM();
                    ri1.tJ();
                }

                ai5[l4] = ri1.tM();
                gc = ai5;
                break;

            case 66: // 'B'
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
                if (gc == null)
                {
                    j4 = 0;
                } else
                {
                    j4 = gc.length;
                }
                ai4 = new int[i4 + j4];
                if (j4 != 0)
                {
                    System.arraycopy(gc, 0, ai4, 0, j4);
                }
                for (; j4 < ai4.length; j4++)
                {
                    ai4[j4] = ri1.tM();
                }

                gc = ai4;
                ri1.hY(k3);
                break;

            case 72: // 'H'
                int i3 = rt.b(ri1, 72);
                int j3;
                int ai3[];
                if (gd == null)
                {
                    j3 = 0;
                } else
                {
                    j3 = gd.length;
                }
                ai3 = new int[i3 + j3];
                if (j3 != 0)
                {
                    System.arraycopy(gd, 0, ai3, 0, j3);
                }
                for (; j3 < -1 + ai3.length; j3++)
                {
                    ai3[j3] = ri1.tM();
                    ri1.tJ();
                }

                ai3[j3] = ri1.tM();
                gd = ai3;
                break;

            case 74: // 'J'
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
                if (gd == null)
                {
                    l2 = 0;
                } else
                {
                    l2 = gd.length;
                }
                ai2 = new int[k2 + l2];
                if (l2 != 0)
                {
                    System.arraycopy(gd, 0, ai2, 0, l2);
                }
                for (; l2 < ai2.length; l2++)
                {
                    ai2[l2] = ri1.tM();
                }

                gd = ai2;
                ri1.hY(i2);
                break;

            case 80: // 'P'
                int k1 = rt.b(ri1, 80);
                int l1;
                int ai1[];
                if (ge == null)
                {
                    l1 = 0;
                } else
                {
                    l1 = ge.length;
                }
                ai1 = new int[k1 + l1];
                if (l1 != 0)
                {
                    System.arraycopy(ge, 0, ai1, 0, l1);
                }
                for (; l1 < -1 + ai1.length; l1++)
                {
                    ai1[l1] = ri1.tM();
                    ri1.tJ();
                }

                ai1[l1] = ri1.tM();
                ge = ai1;
                break;

            case 82: // 'R'
                int j = ri1.hX(ri1.tQ());
                int k = ri1.getPosition();
                int i1;
                for (i1 = 0; ri1.tV() > 0; i1++)
                {
                    ri1.tM();
                }

                ri1.hZ(k);
                int j1;
                int ai[];
                if (ge == null)
                {
                    j1 = 0;
                } else
                {
                    j1 = ge.length;
                }
                ai = new int[i1 + j1];
                if (j1 != 0)
                {
                    System.arraycopy(ge, 0, ai, 0, j1);
                }
                for (; j1 < ai.length; j1++)
                {
                    ai[j1] = ri1.tM();
                }

                ge = ai;
                ri1.hY(j);
                break;
            }
        } while (true);
    }

    public int hashCode()
    {
        return 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (527 + ro.hashCode(fV)) + ro.hashCode(fW)) + ro.hashCode(fX)) + ro.hashCode(fY)) + ro.hashCode(fZ)) + ro.hashCode(ga)) + ro.hashCode(gb)) + ro.hashCode(gc)) + ro.hashCode(gd)) + ro.hashCode(ge)) + ua();
    }

    public ua m()
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

    public ()
    {
        m();
    }
}
