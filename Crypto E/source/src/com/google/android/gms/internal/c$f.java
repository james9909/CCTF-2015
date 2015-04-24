// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, rq, rj, ro, 
//            ri, rt, c

public static final class k extends rk
{

    public String fE[];
    public String fF[];
    public aGz fG[];
    public aGz fH[];
    public aGz fI[];
    public aGz fJ[];
    public aGz fK[];
    public aGz fL[];
    public String fM;
    public String fN;
    public String fO;
    public aGz fP;
    public float fQ;
    public boolean fR;
    public String fS[];
    public int fT;
    public String version;

    public static k a(byte abyte0[])
    {
        return (k)rq.a(new <init>(), abyte0);
    }

    public void a(rj rj1)
    {
        if (fF != null && fF.length > 0)
        {
            for (int k2 = 0; k2 < fF.length; k2++)
            {
                String s2 = fF[k2];
                if (s2 != null)
                {
                    rj1.b(1, s2);
                }
            }

        }
        if (fG != null && fG.length > 0)
        {
            for (int j2 = 0; j2 < fG.length; j2++)
            {
                <init> <init>6 = fG[j2];
                if (<init>6 != null)
                {
                    rj1.a(2, <init>6);
                }
            }

        }
        if (fH != null && fH.length > 0)
        {
            for (int i2 = 0; i2 < fH.length; i2++)
            {
                <init> <init>5 = fH[i2];
                if (<init>5 != null)
                {
                    rj1.a(3, <init>5);
                }
            }

        }
        if (fI != null && fI.length > 0)
        {
            for (int l1 = 0; l1 < fI.length; l1++)
            {
                <init> <init>4 = fI[l1];
                if (<init>4 != null)
                {
                    rj1.a(4, <init>4);
                }
            }

        }
        if (fJ != null && fJ.length > 0)
        {
            for (int k1 = 0; k1 < fJ.length; k1++)
            {
                <init> <init>3 = fJ[k1];
                if (<init>3 != null)
                {
                    rj1.a(5, <init>3);
                }
            }

        }
        if (fK != null && fK.length > 0)
        {
            for (int j1 = 0; j1 < fK.length; j1++)
            {
                <init> <init>2 = fK[j1];
                if (<init>2 != null)
                {
                    rj1.a(6, <init>2);
                }
            }

        }
        if (fL != null && fL.length > 0)
        {
            for (int i1 = 0; i1 < fL.length; i1++)
            {
                <init> <init>1 = fL[i1];
                if (<init>1 != null)
                {
                    rj1.a(7, <init>1);
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
            for (int l = 0; l < fS.length; l++)
            {
                String s1 = fS[l];
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
            int i = fE.length;
            int j = 0;
            if (i > 0)
            {
                for (; j < fE.length; j++)
                {
                    String s = fE[j];
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
        int i = 0;
        int j = super.c();
        int l;
        if (fF != null && fF.length > 0)
        {
            int j5 = 0;
            int k5 = 0;
            int l5 = 0;
            for (; j5 < fF.length; j5++)
            {
                String s2 = fF[j5];
                if (s2 != null)
                {
                    l5++;
                    k5 += rj.dr(s2);
                }
            }

            l = j + k5 + l5 * 1;
        } else
        {
            l = j;
        }
        if (fG != null && fG.length > 0)
        {
            int l4 = l;
            for (int i5 = 0; i5 < fG.length; i5++)
            {
                g g6 = fG[i5];
                if (g6 != null)
                {
                    l4 += rj.c(2, g6);
                }
            }

            l = l4;
        }
        if (fH != null && fH.length > 0)
        {
            int j4 = l;
            for (int k4 = 0; k4 < fH.length; k4++)
            {
                g g5 = fH[k4];
                if (g5 != null)
                {
                    j4 += rj.c(3, g5);
                }
            }

            l = j4;
        }
        if (fI != null && fI.length > 0)
        {
            int l3 = l;
            for (int i4 = 0; i4 < fI.length; i4++)
            {
                g g4 = fI[i4];
                if (g4 != null)
                {
                    l3 += rj.c(4, g4);
                }
            }

            l = l3;
        }
        if (fJ != null && fJ.length > 0)
        {
            int j3 = l;
            for (int k3 = 0; k3 < fJ.length; k3++)
            {
                g g3 = fJ[k3];
                if (g3 != null)
                {
                    j3 += rj.c(5, g3);
                }
            }

            l = j3;
        }
        if (fK != null && fK.length > 0)
        {
            int l2 = l;
            for (int i3 = 0; i3 < fK.length; i3++)
            {
                g g2 = fK[i3];
                if (g2 != null)
                {
                    l2 += rj.c(6, g2);
                }
            }

            l = l2;
        }
        if (fL != null && fL.length > 0)
        {
            int j2 = l;
            for (int k2 = 0; k2 < fL.length; k2++)
            {
                g g1 = fL[k2];
                if (g1 != null)
                {
                    j2 += rj.c(7, g1);
                }
            }

            l = j2;
        }
        if (!fM.equals(""))
        {
            l += rj.k(9, fM);
        }
        if (!fN.equals(""))
        {
            l += rj.k(10, fN);
        }
        if (!fO.equals("0"))
        {
            l += rj.k(12, fO);
        }
        if (!version.equals(""))
        {
            l += rj.k(13, version);
        }
        if (fP != null)
        {
            l += rj.c(14, fP);
        }
        if (Float.floatToIntBits(fQ) != Float.floatToIntBits(0.0F))
        {
            l += rj.c(15, fQ);
        }
        if (fS != null && fS.length > 0)
        {
            int k1 = 0;
            int l1 = 0;
            int i2 = 0;
            for (; k1 < fS.length; k1++)
            {
                String s1 = fS[k1];
                if (s1 != null)
                {
                    i2++;
                    l1 += rj.dr(s1);
                }
            }

            l = l + l1 + i2 * 2;
        }
        if (fT != 0)
        {
            l += rj.B(17, fT);
        }
        if (fR)
        {
            l += rj.c(18, fR);
        }
        if (fE != null && fE.length > 0)
        {
            int i1 = 0;
            int j1 = 0;
            for (; i < fE.length; i++)
            {
                String s = fE[i];
                if (s != null)
                {
                    j1++;
                    i1 += rj.dr(s);
                }
            }

            l = l + i1 + j1 * 2;
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
        flag = obj instanceof r;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        r r;
        boolean flag2;
        r = (r)obj;
        flag2 = ro.equals(fE, r.fE);
        flag1 = false;
        if (!flag2) goto _L4; else goto _L5
_L5:
        boolean flag3;
        flag3 = ro.equals(fF, r.fF);
        flag1 = false;
        if (!flag3) goto _L4; else goto _L6
_L6:
        boolean flag4;
        flag4 = ro.equals(fG, r.fG);
        flag1 = false;
        if (!flag4) goto _L4; else goto _L7
_L7:
        boolean flag5;
        flag5 = ro.equals(fH, r.fH);
        flag1 = false;
        if (!flag5) goto _L4; else goto _L8
_L8:
        boolean flag6;
        flag6 = ro.equals(fI, r.fI);
        flag1 = false;
        if (!flag6) goto _L4; else goto _L9
_L9:
        boolean flag7;
        flag7 = ro.equals(fJ, r.fJ);
        flag1 = false;
        if (!flag7) goto _L4; else goto _L10
_L10:
        boolean flag8;
        flag8 = ro.equals(fK, r.fK);
        flag1 = false;
        if (!flag8) goto _L4; else goto _L11
_L11:
        boolean flag9;
        flag9 = ro.equals(fL, r.fL);
        flag1 = false;
        if (!flag9) goto _L4; else goto _L12
_L12:
        if (fM != null) goto _L14; else goto _L13
_L13:
        String s3;
        s3 = r.fM;
        flag1 = false;
        if (s3 != null) goto _L4; else goto _L15
_L15:
        if (fN != null) goto _L17; else goto _L16
_L16:
        String s2;
        s2 = r.fN;
        flag1 = false;
        if (s2 != null) goto _L4; else goto _L18
_L18:
        if (fO != null) goto _L20; else goto _L19
_L19:
        String s1;
        s1 = r.fO;
        flag1 = false;
        if (s1 != null) goto _L4; else goto _L21
_L21:
        if (version != null) goto _L23; else goto _L22
_L22:
        String s;
        s = r.version;
        flag1 = false;
        if (s != null) goto _L4; else goto _L24
_L24:
        r r1;
        if (fP != null)
        {
            break MISSING_BLOCK_LABEL_467;
        }
        r1 = r.fP;
        flag1 = false;
        if (r1 != null) goto _L4; else goto _L25
_L25:
        int i = Float.floatToIntBits(fQ);
        int j = Float.floatToIntBits(r.fQ);
        flag1 = false;
        if (i == j)
        {
            boolean flag10 = fR;
            boolean flag11 = r.fR;
            flag1 = false;
            if (flag10 == flag11)
            {
                boolean flag12 = ro.equals(fS, r.fS);
                flag1 = false;
                if (flag12)
                {
                    int l = fT;
                    int i1 = r.fT;
                    flag1 = false;
                    if (l == i1)
                    {
                        return a(r);
                    }
                }
            }
        }
          goto _L4
_L14:
        if (!fM.equals(r.fM))
        {
            return false;
        }
          goto _L15
_L17:
        if (!fN.equals(r.fN))
        {
            return false;
        }
          goto _L18
_L20:
        if (!fO.equals(r.fO))
        {
            return false;
        }
          goto _L21
_L23:
        if (!version.equals(r.version))
        {
            return false;
        }
          goto _L24
        if (!fP.equals(r.fP))
        {
            return false;
        }
          goto _L25
    }

    public fP g(ri ri1)
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
                int k4 = rt.b(ri1, 10);
                int l4;
                String as2[];
                if (fF == null)
                {
                    l4 = 0;
                } else
                {
                    l4 = fF.length;
                }
                as2 = new String[k4 + l4];
                if (l4 != 0)
                {
                    System.arraycopy(fF, 0, as2, 0, l4);
                }
                for (; l4 < -1 + as2.length; l4++)
                {
                    as2[l4] = ri1.readString();
                    ri1.tJ();
                }

                as2[l4] = ri1.readString();
                fF = as2;
                break;

            case 18: // '\022'
                int i4 = rt.b(ri1, 18);
                int j4;
                fP afp5[];
                if (fG == null)
                {
                    j4 = 0;
                } else
                {
                    j4 = fG.length;
                }
                afp5 = new fG[i4 + j4];
                if (j4 != 0)
                {
                    System.arraycopy(fG, 0, afp5, 0, j4);
                }
                for (; j4 < -1 + afp5.length; j4++)
                {
                    afp5[j4] = new <init>();
                    ri1.a(afp5[j4]);
                    ri1.tJ();
                }

                afp5[j4] = new <init>();
                ri1.a(afp5[j4]);
                fG = afp5;
                break;

            case 26: // '\032'
                int k3 = rt.b(ri1, 26);
                int l3;
                fP afp4[];
                if (fH == null)
                {
                    l3 = 0;
                } else
                {
                    l3 = fH.length;
                }
                afp4 = new fH[k3 + l3];
                if (l3 != 0)
                {
                    System.arraycopy(fH, 0, afp4, 0, l3);
                }
                for (; l3 < -1 + afp4.length; l3++)
                {
                    afp4[l3] = new <init>();
                    ri1.a(afp4[l3]);
                    ri1.tJ();
                }

                afp4[l3] = new <init>();
                ri1.a(afp4[l3]);
                fH = afp4;
                break;

            case 34: // '"'
                int i3 = rt.b(ri1, 34);
                int j3;
                fP afp3[];
                if (fI == null)
                {
                    j3 = 0;
                } else
                {
                    j3 = fI.length;
                }
                afp3 = new fI[i3 + j3];
                if (j3 != 0)
                {
                    System.arraycopy(fI, 0, afp3, 0, j3);
                }
                for (; j3 < -1 + afp3.length; j3++)
                {
                    afp3[j3] = new <init>();
                    ri1.a(afp3[j3]);
                    ri1.tJ();
                }

                afp3[j3] = new <init>();
                ri1.a(afp3[j3]);
                fI = afp3;
                break;

            case 42: // '*'
                int k2 = rt.b(ri1, 42);
                int l2;
                fP afp2[];
                if (fJ == null)
                {
                    l2 = 0;
                } else
                {
                    l2 = fJ.length;
                }
                afp2 = new fJ[k2 + l2];
                if (l2 != 0)
                {
                    System.arraycopy(fJ, 0, afp2, 0, l2);
                }
                for (; l2 < -1 + afp2.length; l2++)
                {
                    afp2[l2] = new <init>();
                    ri1.a(afp2[l2]);
                    ri1.tJ();
                }

                afp2[l2] = new <init>();
                ri1.a(afp2[l2]);
                fJ = afp2;
                break;

            case 50: // '2'
                int i2 = rt.b(ri1, 50);
                int j2;
                fP afp1[];
                if (fK == null)
                {
                    j2 = 0;
                } else
                {
                    j2 = fK.length;
                }
                afp1 = new fK[i2 + j2];
                if (j2 != 0)
                {
                    System.arraycopy(fK, 0, afp1, 0, j2);
                }
                for (; j2 < -1 + afp1.length; j2++)
                {
                    afp1[j2] = new <init>();
                    ri1.a(afp1[j2]);
                    ri1.tJ();
                }

                afp1[j2] = new <init>();
                ri1.a(afp1[j2]);
                fK = afp1;
                break;

            case 58: // ':'
                int k1 = rt.b(ri1, 58);
                int l1;
                fP afp[];
                if (fL == null)
                {
                    l1 = 0;
                } else
                {
                    l1 = fL.length;
                }
                afp = new fL[k1 + l1];
                if (l1 != 0)
                {
                    System.arraycopy(fL, 0, afp, 0, l1);
                }
                for (; l1 < -1 + afp.length; l1++)
                {
                    afp[l1] = new <init>();
                    ri1.a(afp[l1]);
                    ri1.tJ();
                }

                afp[l1] = new <init>();
                ri1.a(afp[l1]);
                fL = afp;
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
                    fP = new <init>();
                }
                ri1.a(fP);
                break;

            case 125: // '}'
                fQ = ri1.readFloat();
                break;

            case 130: 
                int i1 = rt.b(ri1, 130);
                int j1;
                String as1[];
                if (fS == null)
                {
                    j1 = 0;
                } else
                {
                    j1 = fS.length;
                }
                as1 = new String[i1 + j1];
                if (j1 != 0)
                {
                    System.arraycopy(fS, 0, as1, 0, j1);
                }
                for (; j1 < -1 + as1.length; j1++)
                {
                    as1[j1] = ri1.readString();
                    ri1.tJ();
                }

                as1[j1] = ri1.readString();
                fS = as1;
                break;

            case 136: 
                fT = ri1.tM();
                break;

            case 144: 
                fR = ri1.tN();
                break;

            case 154: 
                int j = rt.b(ri1, 154);
                int l;
                String as[];
                if (fE == null)
                {
                    l = 0;
                } else
                {
                    l = fE.length;
                }
                as = new String[j + l];
                if (l != 0)
                {
                    System.arraycopy(fE, 0, as, 0, l);
                }
                for (; l < -1 + as.length; l++)
                {
                    as[l] = ri1.readString();
                    ri1.tJ();
                }

                as[l] = ri1.readString();
                fE = as;
                break;
            }
        } while (true);
    }

    public int hashCode()
    {
        int i = 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (527 + ro.hashCode(fE)) + ro.hashCode(fF)) + ro.hashCode(fG)) + ro.hashCode(fH)) + ro.hashCode(fI)) + ro.hashCode(fJ)) + ro.hashCode(fK)) + ro.hashCode(fL));
        int j;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        fE fe;
        int k2;
        int l2;
        char c1;
        if (fM == null)
        {
            j = 0;
        } else
        {
            j = fM.hashCode();
        }
        l = 31 * (j + i);
        if (fN == null)
        {
            i1 = 0;
        } else
        {
            i1 = fN.hashCode();
        }
        j1 = 31 * (i1 + l);
        if (fO == null)
        {
            k1 = 0;
        } else
        {
            k1 = fO.hashCode();
        }
        l1 = 31 * (k1 + j1);
        if (version == null)
        {
            i2 = 0;
        } else
        {
            i2 = version.hashCode();
        }
        j2 = 31 * (i2 + l1);
        fe = fP;
        k2 = 0;
        if (fe != null)
        {
            k2 = fP.hashCode();
        }
        l2 = 31 * (31 * (j2 + k2) + Float.floatToIntBits(fQ));
        if (fR)
        {
            c1 = '\u04CF';
        } else
        {
            c1 = '\u04D5';
        }
        return 31 * (31 * (31 * (c1 + l2) + ro.hashCode(fS)) + fT) + ua();
    }

    public ua k()
    {
        fE = rt.aGG;
        fF = rt.aGG;
        fG = r();
        fH = i();
        fI = d();
        fJ = d();
        fK = d();
        fL = l();
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

    public ()
    {
        k();
    }
}
