// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Arrays;

// Referenced classes of package com.google.android.gms.internal:
//            rk, ro, rj, ri, 
//            rf, rq, rt

public static final class tE extends rk
{
    public static final class a extends rk
    {

        public byte aFE[];
        public String aFF;
        public double aFG;
        public float aFH;
        public long aFI;
        public int aFJ;
        public int aFK;
        public boolean aFL;
        public rf.a aFM[];
        public rf.a.a aFN[];
        public String aFO[];
        public long aFP[];
        public float aFQ[];
        public long aFR;

        public void a(rj rj1)
        {
            if (!Arrays.equals(aFE, rt.aGI))
            {
                rj1.a(1, aFE);
            }
            if (!aFF.equals(""))
            {
                rj1.b(2, aFF);
            }
            if (Double.doubleToLongBits(aFG) != Double.doubleToLongBits(0.0D))
            {
                rj1.a(3, aFG);
            }
            if (Float.floatToIntBits(aFH) != Float.floatToIntBits(0.0F))
            {
                rj1.b(4, aFH);
            }
            if (aFI != 0L)
            {
                rj1.b(5, aFI);
            }
            if (aFJ != 0)
            {
                rj1.z(6, aFJ);
            }
            if (aFK != 0)
            {
                rj1.A(7, aFK);
            }
            if (aFL)
            {
                rj1.b(8, aFL);
            }
            if (aFM != null && aFM.length > 0)
            {
                for (int j1 = 0; j1 < aFM.length; j1++)
                {
                    rf.a a2 = aFM[j1];
                    if (a2 != null)
                    {
                        rj1.a(9, a2);
                    }
                }

            }
            if (aFN != null && aFN.length > 0)
            {
                for (int i1 = 0; i1 < aFN.length; i1++)
                {
                    rf.a.a a1 = aFN[i1];
                    if (a1 != null)
                    {
                        rj1.a(10, a1);
                    }
                }

            }
            if (aFO != null && aFO.length > 0)
            {
                for (int l = 0; l < aFO.length; l++)
                {
                    String s = aFO[l];
                    if (s != null)
                    {
                        rj1.b(11, s);
                    }
                }

            }
            if (aFP != null && aFP.length > 0)
            {
                for (int k = 0; k < aFP.length; k++)
                {
                    rj1.b(12, aFP[k]);
                }

            }
            if (aFR != 0L)
            {
                rj1.b(13, aFR);
            }
            if (aFQ != null)
            {
                int i = aFQ.length;
                int j = 0;
                if (i > 0)
                {
                    for (; j < aFQ.length; j++)
                    {
                        rj1.b(14, aFQ[j]);
                    }

                }
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return w(ri1);
        }

        protected int c()
        {
            int i = 0;
            int j = super.c();
            if (!Arrays.equals(aFE, rt.aGI))
            {
                j += rj.b(1, aFE);
            }
            if (!aFF.equals(""))
            {
                j += rj.k(2, aFF);
            }
            if (Double.doubleToLongBits(aFG) != Double.doubleToLongBits(0.0D))
            {
                j += rj.b(3, aFG);
            }
            if (Float.floatToIntBits(aFH) != Float.floatToIntBits(0.0F))
            {
                j += rj.c(4, aFH);
            }
            if (aFI != 0L)
            {
                j += rj.d(5, aFI);
            }
            if (aFJ != 0)
            {
                j += rj.B(6, aFJ);
            }
            if (aFK != 0)
            {
                j += rj.C(7, aFK);
            }
            if (aFL)
            {
                j += rj.c(8, aFL);
            }
            if (aFM != null && aFM.length > 0)
            {
                int i2 = j;
                for (int j2 = 0; j2 < aFM.length; j2++)
                {
                    rf.a a2 = aFM[j2];
                    if (a2 != null)
                    {
                        i2 += rj.c(9, a2);
                    }
                }

                j = i2;
            }
            if (aFN != null && aFN.length > 0)
            {
                int k1 = j;
                for (int l1 = 0; l1 < aFN.length; l1++)
                {
                    rf.a.a a1 = aFN[l1];
                    if (a1 != null)
                    {
                        k1 += rj.c(10, a1);
                    }
                }

                j = k1;
            }
            if (aFO != null && aFO.length > 0)
            {
                int l = 0;
                int i1 = 0;
                int j1 = 0;
                for (; l < aFO.length; l++)
                {
                    String s = aFO[l];
                    if (s != null)
                    {
                        j1++;
                        i1 += rj.dr(s);
                    }
                }

                j = j + i1 + j1 * 1;
            }
            if (aFP != null && aFP.length > 0)
            {
                int k = 0;
                for (; i < aFP.length; i++)
                {
                    k += rj.E(aFP[i]);
                }

                j = j + k + 1 * aFP.length;
            }
            if (aFR != 0L)
            {
                j += rj.d(13, aFR);
            }
            if (aFQ != null && aFQ.length > 0)
            {
                j = j + 4 * aFQ.length + 1 * aFQ.length;
            }
            return j;
        }

        public boolean equals(Object obj)
        {
            if (obj != this) goto _L2; else goto _L1
_L1:
            boolean flag1 = true;
_L4:
            return flag1;
_L2:
            a a1;
            boolean flag = obj instanceof a;
            flag1 = false;
            if (!flag)
            {
                continue; /* Loop/switch isn't completed */
            }
            a1 = (a)obj;
            boolean flag2 = Arrays.equals(aFE, a1.aFE);
            flag1 = false;
            if (!flag2)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (aFF != null)
            {
                break; /* Loop/switch isn't completed */
            }
            String s = a1.aFF;
            flag1 = false;
            if (s != null)
            {
                continue; /* Loop/switch isn't completed */
            }
_L5:
            int i = Double.doubleToLongBits(aFG) != Double.doubleToLongBits(a1.aFG);
            flag1 = false;
            if (i == 0)
            {
                int j = Float.floatToIntBits(aFH);
                int k = Float.floatToIntBits(a1.aFH);
                flag1 = false;
                if (j == k)
                {
                    int l = aFI != a1.aFI;
                    flag1 = false;
                    if (l == 0)
                    {
                        int i1 = aFJ;
                        int j1 = a1.aFJ;
                        flag1 = false;
                        if (i1 == j1)
                        {
                            int k1 = aFK;
                            int l1 = a1.aFK;
                            flag1 = false;
                            if (k1 == l1)
                            {
                                boolean flag3 = aFL;
                                boolean flag4 = a1.aFL;
                                flag1 = false;
                                if (flag3 == flag4)
                                {
                                    boolean flag5 = ro.equals(aFM, a1.aFM);
                                    flag1 = false;
                                    if (flag5)
                                    {
                                        boolean flag6 = ro.equals(aFN, a1.aFN);
                                        flag1 = false;
                                        if (flag6)
                                        {
                                            boolean flag7 = ro.equals(aFO, a1.aFO);
                                            flag1 = false;
                                            if (flag7)
                                            {
                                                boolean flag8 = ro.equals(aFP, a1.aFP);
                                                flag1 = false;
                                                if (flag8)
                                                {
                                                    boolean flag9 = ro.equals(aFQ, a1.aFQ);
                                                    flag1 = false;
                                                    if (flag9)
                                                    {
                                                        int i2 = aFR != a1.aFR;
                                                        flag1 = false;
                                                        if (i2 == 0)
                                                        {
                                                            return a(a1);
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
            if (true) goto _L4; else goto _L3
_L3:
            if (!aFF.equals(a1.aFF))
            {
                return false;
            }
              goto _L5
            if (true) goto _L4; else goto _L6
_L6:
        }

        public int hashCode()
        {
            int i = 31 * (527 + Arrays.hashCode(aFE));
            int j;
            int k;
            long l;
            int i1;
            char c1;
            if (aFF == null)
            {
                j = 0;
            } else
            {
                j = aFF.hashCode();
            }
            k = j + i;
            l = Double.doubleToLongBits(aFG);
            i1 = 31 * (31 * (31 * (31 * (31 * (k * 31 + (int)(l ^ l >>> 32)) + Float.floatToIntBits(aFH)) + (int)(aFI ^ aFI >>> 32)) + aFJ) + aFK);
            if (aFL)
            {
                c1 = '\u04CF';
            } else
            {
                c1 = '\u04D5';
            }
            return 31 * (31 * (31 * (31 * (31 * (31 * (31 * (c1 + i1) + ro.hashCode(aFM)) + ro.hashCode(aFN)) + ro.hashCode(aFO)) + ro.hashCode(aFP)) + ro.hashCode(aFQ)) + (int)(aFR ^ aFR >>> 32)) + ua();
        }

        public a tF()
        {
            aFE = rt.aGI;
            aFF = "";
            aFG = 0.0D;
            aFH = 0.0F;
            aFI = 0L;
            aFJ = 0;
            aFK = 0;
            aFL = false;
            aFM = rf.a.tB();
            aFN = rf.a.a.tD();
            aFO = rt.aGG;
            aFP = rt.aGC;
            aFQ = rt.aGD;
            aFR = 0L;
            aGo = null;
            aGz = -1;
            return this;
        }

        public a w(ri ri1)
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
                    aFE = ri1.readBytes();
                    break;

                case 18: // '\022'
                    aFF = ri1.readString();
                    break;

                case 25: // '\031'
                    aFG = ri1.readDouble();
                    break;

                case 37: // '%'
                    aFH = ri1.readFloat();
                    break;

                case 40: // '('
                    aFI = ri1.tL();
                    break;

                case 48: // '0'
                    aFJ = ri1.tM();
                    break;

                case 56: // '8'
                    aFK = ri1.tO();
                    break;

                case 64: // '@'
                    aFL = ri1.tN();
                    break;

                case 74: // 'J'
                    int j4 = rt.b(ri1, 74);
                    int k4;
                    rf.a aa1[];
                    if (aFM == null)
                    {
                        k4 = 0;
                    } else
                    {
                        k4 = aFM.length;
                    }
                    aa1 = new rf.a[j4 + k4];
                    if (k4 != 0)
                    {
                        System.arraycopy(aFM, 0, aa1, 0, k4);
                    }
                    for (; k4 < -1 + aa1.length; k4++)
                    {
                        aa1[k4] = new rf.a();
                        ri1.a(aa1[k4]);
                        ri1.tJ();
                    }

                    aa1[k4] = new rf.a();
                    ri1.a(aa1[k4]);
                    aFM = aa1;
                    break;

                case 82: // 'R'
                    int l3 = rt.b(ri1, 82);
                    int i4;
                    rf.a.a aa[];
                    if (aFN == null)
                    {
                        i4 = 0;
                    } else
                    {
                        i4 = aFN.length;
                    }
                    aa = new rf.a.a[l3 + i4];
                    if (i4 != 0)
                    {
                        System.arraycopy(aFN, 0, aa, 0, i4);
                    }
                    for (; i4 < -1 + aa.length; i4++)
                    {
                        aa[i4] = new rf.a.a();
                        ri1.a(aa[i4]);
                        ri1.tJ();
                    }

                    aa[i4] = new rf.a.a();
                    ri1.a(aa[i4]);
                    aFN = aa;
                    break;

                case 90: // 'Z'
                    int j3 = rt.b(ri1, 90);
                    int k3;
                    String as[];
                    if (aFO == null)
                    {
                        k3 = 0;
                    } else
                    {
                        k3 = aFO.length;
                    }
                    as = new String[j3 + k3];
                    if (k3 != 0)
                    {
                        System.arraycopy(aFO, 0, as, 0, k3);
                    }
                    for (; k3 < -1 + as.length; k3++)
                    {
                        as[k3] = ri1.readString();
                        ri1.tJ();
                    }

                    as[k3] = ri1.readString();
                    aFO = as;
                    break;

                case 96: // '`'
                    int l2 = rt.b(ri1, 96);
                    int i3;
                    long al1[];
                    if (aFP == null)
                    {
                        i3 = 0;
                    } else
                    {
                        i3 = aFP.length;
                    }
                    al1 = new long[l2 + i3];
                    if (i3 != 0)
                    {
                        System.arraycopy(aFP, 0, al1, 0, i3);
                    }
                    for (; i3 < -1 + al1.length; i3++)
                    {
                        al1[i3] = ri1.tL();
                        ri1.tJ();
                    }

                    al1[i3] = ri1.tL();
                    aFP = al1;
                    break;

                case 98: // 'b'
                    int l1 = ri1.hX(ri1.tQ());
                    int i2 = ri1.getPosition();
                    int j2;
                    for (j2 = 0; ri1.tV() > 0; j2++)
                    {
                        ri1.tL();
                    }

                    ri1.hZ(i2);
                    int k2;
                    long al[];
                    if (aFP == null)
                    {
                        k2 = 0;
                    } else
                    {
                        k2 = aFP.length;
                    }
                    al = new long[j2 + k2];
                    if (k2 != 0)
                    {
                        System.arraycopy(aFP, 0, al, 0, k2);
                    }
                    for (; k2 < al.length; k2++)
                    {
                        al[k2] = ri1.tL();
                    }

                    aFP = al;
                    ri1.hY(l1);
                    break;

                case 104: // 'h'
                    aFR = ri1.tL();
                    break;

                case 117: // 'u'
                    int j1 = rt.b(ri1, 117);
                    int k1;
                    float af1[];
                    if (aFQ == null)
                    {
                        k1 = 0;
                    } else
                    {
                        k1 = aFQ.length;
                    }
                    af1 = new float[j1 + k1];
                    if (k1 != 0)
                    {
                        System.arraycopy(aFQ, 0, af1, 0, k1);
                    }
                    for (; k1 < -1 + af1.length; k1++)
                    {
                        af1[k1] = ri1.readFloat();
                        ri1.tJ();
                    }

                    af1[k1] = ri1.readFloat();
                    aFQ = af1;
                    break;

                case 114: // 'r'
                    int j = ri1.tQ();
                    int k = ri1.hX(j);
                    int l = j / 4;
                    int i1;
                    float af[];
                    if (aFQ == null)
                    {
                        i1 = 0;
                    } else
                    {
                        i1 = aFQ.length;
                    }
                    af = new float[l + i1];
                    if (i1 != 0)
                    {
                        System.arraycopy(aFQ, 0, af, 0, i1);
                    }
                    for (; i1 < af.length; i1++)
                    {
                        af[i1] = ri1.readFloat();
                    }

                    aFQ = af;
                    ri1.hY(k);
                    break;
                }
            } while (true);
        }

        public a()
        {
            tF();
        }
    }


    private static volatile aFD aFC[];
    public a aFD;
    public int type;

    public static a.aFQ[] tD()
    {
        if (aFC == null)
        {
            synchronized (ro.aGy)
            {
                if (aFC == null)
                {
                    aFC = new aFC[0];
                }
            }
        }
        return aFC;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(rj rj1)
    {
        rj1.z(1, type);
        if (aFD != null)
        {
            rj1.a(2, aFD);
        }
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return v(ri1);
    }

    protected int c()
    {
        int i = super.c() + rj.B(1, type);
        if (aFD != null)
        {
            i += rj.c(2, aFD);
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
        aFD afd;
        int i;
        int j;
        afd = (a)obj;
        i = type;
        j = afd.type;
        flag1 = false;
        if (i != j) goto _L4; else goto _L5
_L5:
        if (aFD != null) goto _L7; else goto _L6
_L6:
        a a1;
        a1 = afd.aFD;
        flag1 = false;
        if (a1 != null) goto _L4; else goto _L8
_L8:
        return a(afd);
_L7:
        if (!aFD.equals(afd.aFD))
        {
            return false;
        }
        if (true) goto _L8; else goto _L9
_L9:
    }

    public int hashCode()
    {
        int i = 31 * (527 + type);
        int j;
        if (aFD == null)
        {
            j = 0;
        } else
        {
            j = aFD.hashCode();
        }
        return 31 * (j + i) + ua();
    }

    public ua tE()
    {
        type = 1;
        aFD = null;
        aGo = null;
        aGz = -1;
        return this;
    }

    public aGz v(ri ri1)
    {
_L5:
        int i = ri1.tJ();
        i;
        JVM INSTR lookupswitch 3: default 40
    //                   0: 49
    //                   8: 51
    //                   18: 143;
           goto _L1 _L2 _L3 _L4
_L1:
        if (a(ri1, i)) goto _L5; else goto _L2
_L2:
        return this;
_L3:
        int j = ri1.tM();
        switch (j)
        {
        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
        case 7: // '\007'
        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
        case 11: // '\013'
        case 12: // '\f'
        case 13: // '\r'
        case 14: // '\016'
        case 15: // '\017'
            type = j;
            break;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (aFD == null)
        {
            aFD = new a();
        }
        ri1.a(aFD);
        if (true) goto _L5; else goto _L6
_L6:
    }

    public a.tF()
    {
        tE();
    }
}
