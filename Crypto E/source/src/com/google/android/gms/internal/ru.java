// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Arrays;

// Referenced classes of package com.google.android.gms.internal:
//            rk, rj, ro, rt, 
//            ri, rq

public interface ru
{
    public static final class a extends rk
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
                boolean flag = obj instanceof a;
                flag1 = false;
                if (flag)
                {
                    a a1 = (a)obj;
                    boolean flag2 = ro.equals(aGJ, a1.aGJ);
                    flag1 = false;
                    if (flag2)
                    {
                        boolean flag3 = ro.equals(aGK, a1.aGK);
                        flag1 = false;
                        if (flag3)
                        {
                            boolean flag4 = ro.equals(aGL, a1.aGL);
                            flag1 = false;
                            if (flag4)
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
            return 31 * (31 * (31 * (527 + ro.hashCode(aGJ)) + ro.hashCode(aGK)) + ro.hashCode(aGL)) + ua();
        }

        public a uk()
        {
            aGJ = rt.aGG;
            aGK = rt.aGG;
            aGL = rt.aGB;
            aGo = null;
            aGz = -1;
            return this;
        }

        public a y(ri ri1)
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

        public a()
        {
            uk();
        }
    }

    public static final class b extends rk
    {

        public int aGM;
        public String aGN;
        public String version;

        public void a(rj rj1)
        {
            if (aGM != 0)
            {
                rj1.z(1, aGM);
            }
            if (!aGN.equals(""))
            {
                rj1.b(2, aGN);
            }
            if (!version.equals(""))
            {
                rj1.b(3, version);
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return z(ri1);
        }

        protected int c()
        {
            int i = super.c();
            if (aGM != 0)
            {
                i += rj.B(1, aGM);
            }
            if (!aGN.equals(""))
            {
                i += rj.k(2, aGN);
            }
            if (!version.equals(""))
            {
                i += rj.k(3, version);
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
            b b1;
            int i;
            int j;
            b1 = (b)obj;
            i = aGM;
            j = b1.aGM;
            flag1 = false;
            if (i != j) goto _L4; else goto _L5
_L5:
            if (aGN != null) goto _L7; else goto _L6
_L6:
            String s1;
            s1 = b1.aGN;
            flag1 = false;
            if (s1 != null) goto _L4; else goto _L8
_L8:
            String s;
            if (version != null)
            {
                break MISSING_BLOCK_LABEL_114;
            }
            s = b1.version;
            flag1 = false;
            if (s != null) goto _L4; else goto _L9
_L9:
            return a(b1);
_L7:
            if (!aGN.equals(b1.aGN))
            {
                return false;
            }
              goto _L8
            if (!version.equals(b1.version))
            {
                return false;
            }
              goto _L9
        }

        public int hashCode()
        {
            int i = 31 * (527 + aGM);
            int j;
            int k;
            String s;
            int l;
            if (aGN == null)
            {
                j = 0;
            } else
            {
                j = aGN.hashCode();
            }
            k = 31 * (j + i);
            s = version;
            l = 0;
            if (s != null)
            {
                l = version.hashCode();
            }
            return 31 * (k + l) + ua();
        }

        public b ul()
        {
            aGM = 0;
            aGN = "";
            version = "";
            aGo = null;
            aGz = -1;
            return this;
        }

        public b z(ri ri1)
        {
_L6:
            int i = ri1.tJ();
            i;
            JVM INSTR lookupswitch 4: default 48
        //                       0: 57
        //                       8: 59
        //                       18: 183
        //                       26: 194;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            if (a(ri1, i)) goto _L6; else goto _L2
_L2:
            return this;
_L3:
            int j = ri1.tM();
            switch (j)
            {
            case 0: // '\0'
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
            case 16: // '\020'
            case 17: // '\021'
            case 18: // '\022'
            case 19: // '\023'
            case 20: // '\024'
            case 21: // '\025'
            case 22: // '\026'
                aGM = j;
                break;
            }
            continue; /* Loop/switch isn't completed */
_L4:
            aGN = ri1.readString();
            continue; /* Loop/switch isn't completed */
_L5:
            version = ri1.readString();
            if (true) goto _L6; else goto _L7
_L7:
        }

        public b()
        {
            ul();
        }
    }

    public static final class c extends rk
    {

        public long aGO;
        public int aGP;
        public int aGQ;
        public boolean aGR;
        public d aGS[];
        public b aGT;
        public byte aGU[];
        public byte aGV[];
        public byte aGW[];
        public a aGX;
        public String aGY;
        public long aGZ;
        public String tag;

        public c A(ri ri1)
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
                    aGO = ri1.tL();
                    break;

                case 18: // '\022'
                    tag = ri1.readString();
                    break;

                case 26: // '\032'
                    int j = rt.b(ri1, 26);
                    int k;
                    d ad[];
                    if (aGS == null)
                    {
                        k = 0;
                    } else
                    {
                        k = aGS.length;
                    }
                    ad = new d[j + k];
                    if (k != 0)
                    {
                        System.arraycopy(aGS, 0, ad, 0, k);
                    }
                    for (; k < -1 + ad.length; k++)
                    {
                        ad[k] = new d();
                        ri1.a(ad[k]);
                        ri1.tJ();
                    }

                    ad[k] = new d();
                    ri1.a(ad[k]);
                    aGS = ad;
                    break;

                case 50: // '2'
                    aGU = ri1.readBytes();
                    break;

                case 58: // ':'
                    if (aGX == null)
                    {
                        aGX = new a();
                    }
                    ri1.a(aGX);
                    break;

                case 66: // 'B'
                    aGV = ri1.readBytes();
                    break;

                case 74: // 'J'
                    if (aGT == null)
                    {
                        aGT = new b();
                    }
                    ri1.a(aGT);
                    break;

                case 80: // 'P'
                    aGR = ri1.tN();
                    break;

                case 88: // 'X'
                    aGP = ri1.tM();
                    break;

                case 96: // '`'
                    aGQ = ri1.tM();
                    break;

                case 106: // 'j'
                    aGW = ri1.readBytes();
                    break;

                case 114: // 'r'
                    aGY = ri1.readString();
                    break;

                case 120: // 'x'
                    aGZ = ri1.tP();
                    break;
                }
            } while (true);
        }

        public void a(rj rj1)
        {
            if (aGO != 0L)
            {
                rj1.b(1, aGO);
            }
            if (!tag.equals(""))
            {
                rj1.b(2, tag);
            }
            if (aGS != null && aGS.length > 0)
            {
                for (int i = 0; i < aGS.length; i++)
                {
                    d d1 = aGS[i];
                    if (d1 != null)
                    {
                        rj1.a(3, d1);
                    }
                }

            }
            if (!Arrays.equals(aGU, rt.aGI))
            {
                rj1.a(6, aGU);
            }
            if (aGX != null)
            {
                rj1.a(7, aGX);
            }
            if (!Arrays.equals(aGV, rt.aGI))
            {
                rj1.a(8, aGV);
            }
            if (aGT != null)
            {
                rj1.a(9, aGT);
            }
            if (aGR)
            {
                rj1.b(10, aGR);
            }
            if (aGP != 0)
            {
                rj1.z(11, aGP);
            }
            if (aGQ != 0)
            {
                rj1.z(12, aGQ);
            }
            if (!Arrays.equals(aGW, rt.aGI))
            {
                rj1.a(13, aGW);
            }
            if (!aGY.equals(""))
            {
                rj1.b(14, aGY);
            }
            if (aGZ != 0L)
            {
                rj1.c(15, aGZ);
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return A(ri1);
        }

        protected int c()
        {
            int i = super.c();
            if (aGO != 0L)
            {
                i += rj.d(1, aGO);
            }
            if (!tag.equals(""))
            {
                i += rj.k(2, tag);
            }
            if (aGS != null && aGS.length > 0)
            {
                int j = i;
                for (int k = 0; k < aGS.length; k++)
                {
                    d d1 = aGS[k];
                    if (d1 != null)
                    {
                        j += rj.c(3, d1);
                    }
                }

                i = j;
            }
            if (!Arrays.equals(aGU, rt.aGI))
            {
                i += rj.b(6, aGU);
            }
            if (aGX != null)
            {
                i += rj.c(7, aGX);
            }
            if (!Arrays.equals(aGV, rt.aGI))
            {
                i += rj.b(8, aGV);
            }
            if (aGT != null)
            {
                i += rj.c(9, aGT);
            }
            if (aGR)
            {
                i += rj.c(10, aGR);
            }
            if (aGP != 0)
            {
                i += rj.B(11, aGP);
            }
            if (aGQ != 0)
            {
                i += rj.B(12, aGQ);
            }
            if (!Arrays.equals(aGW, rt.aGI))
            {
                i += rj.b(13, aGW);
            }
            if (!aGY.equals(""))
            {
                i += rj.k(14, aGY);
            }
            if (aGZ != 0L)
            {
                i += rj.e(15, aGZ);
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
            flag = obj instanceof c;
            flag1 = false;
            if (!flag) goto _L4; else goto _L3
_L3:
            c c1;
            int i;
            c1 = (c)obj;
            i = aGO != c1.aGO;
            flag1 = false;
            if (i != 0) goto _L4; else goto _L5
_L5:
            if (tag != null) goto _L7; else goto _L6
_L6:
            String s1;
            s1 = c1.tag;
            flag1 = false;
            if (s1 != null) goto _L4; else goto _L8
_L8:
            int j;
            int k;
            j = aGP;
            k = c1.aGP;
            flag1 = false;
            if (j != k) goto _L4; else goto _L9
_L9:
            int l;
            int i1;
            l = aGQ;
            i1 = c1.aGQ;
            flag1 = false;
            if (l != i1) goto _L4; else goto _L10
_L10:
            boolean flag2;
            boolean flag3;
            flag2 = aGR;
            flag3 = c1.aGR;
            flag1 = false;
            if (flag2 != flag3) goto _L4; else goto _L11
_L11:
            boolean flag4;
            flag4 = ro.equals(aGS, c1.aGS);
            flag1 = false;
            if (!flag4) goto _L4; else goto _L12
_L12:
            if (aGT != null) goto _L14; else goto _L13
_L13:
            b b1;
            b1 = c1.aGT;
            flag1 = false;
            if (b1 != null) goto _L4; else goto _L15
_L15:
            boolean flag5;
            flag5 = Arrays.equals(aGU, c1.aGU);
            flag1 = false;
            if (!flag5) goto _L4; else goto _L16
_L16:
            boolean flag6;
            flag6 = Arrays.equals(aGV, c1.aGV);
            flag1 = false;
            if (!flag6) goto _L4; else goto _L17
_L17:
            boolean flag7;
            flag7 = Arrays.equals(aGW, c1.aGW);
            flag1 = false;
            if (!flag7) goto _L4; else goto _L18
_L18:
            if (aGX != null) goto _L20; else goto _L19
_L19:
            a a1;
            a1 = c1.aGX;
            flag1 = false;
            if (a1 != null) goto _L4; else goto _L21
_L21:
            String s;
            if (aGY != null)
            {
                break MISSING_BLOCK_LABEL_356;
            }
            s = c1.aGY;
            flag1 = false;
            if (s != null) goto _L4; else goto _L22
_L22:
            int j1 = aGZ != c1.aGZ;
            flag1 = false;
            if (j1 == 0)
            {
                return a(c1);
            }
              goto _L4
_L7:
            if (!tag.equals(c1.tag))
            {
                return false;
            }
              goto _L8
_L14:
            if (!aGT.equals(c1.aGT))
            {
                return false;
            }
              goto _L15
_L20:
            if (!aGX.equals(c1.aGX))
            {
                return false;
            }
              goto _L21
            if (!aGY.equals(c1.aGY))
            {
                return false;
            }
              goto _L22
        }

        public int hashCode()
        {
            int i = 31 * (527 + (int)(aGO ^ aGO >>> 32));
            int j;
            int k;
            char c1;
            int l;
            int i1;
            int j1;
            int k1;
            int l1;
            String s;
            int i2;
            if (tag == null)
            {
                j = 0;
            } else
            {
                j = tag.hashCode();
            }
            k = 31 * (31 * (31 * (j + i) + aGP) + aGQ);
            if (aGR)
            {
                c1 = '\u04CF';
            } else
            {
                c1 = '\u04D5';
            }
            l = 31 * (31 * (c1 + k) + ro.hashCode(aGS));
            if (aGT == null)
            {
                i1 = 0;
            } else
            {
                i1 = aGT.hashCode();
            }
            j1 = 31 * (31 * (31 * (31 * (i1 + l) + Arrays.hashCode(aGU)) + Arrays.hashCode(aGV)) + Arrays.hashCode(aGW));
            if (aGX == null)
            {
                k1 = 0;
            } else
            {
                k1 = aGX.hashCode();
            }
            l1 = 31 * (k1 + j1);
            s = aGY;
            i2 = 0;
            if (s != null)
            {
                i2 = aGY.hashCode();
            }
            return 31 * (31 * (l1 + i2) + (int)(aGZ ^ aGZ >>> 32)) + ua();
        }

        public c um()
        {
            aGO = 0L;
            tag = "";
            aGP = 0;
            aGQ = 0;
            aGR = false;
            aGS = d.un();
            aGT = null;
            aGU = rt.aGI;
            aGV = rt.aGI;
            aGW = rt.aGI;
            aGX = null;
            aGY = "";
            aGZ = 0L;
            aGo = null;
            aGz = -1;
            return this;
        }

        public c()
        {
            um();
        }
    }

    public static final class d extends rk
    {

        private static volatile d aHa[];
        public String fv;
        public String value;

        public static d[] un()
        {
            if (aHa == null)
            {
                synchronized (ro.aGy)
                {
                    if (aHa == null)
                    {
                        aHa = new d[0];
                    }
                }
            }
            return aHa;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public d B(ri ri1)
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
                    fv = ri1.readString();
                    break;

                case 18: // '\022'
                    value = ri1.readString();
                    break;
                }
            } while (true);
        }

        public void a(rj rj1)
        {
            if (!fv.equals(""))
            {
                rj1.b(1, fv);
            }
            if (!value.equals(""))
            {
                rj1.b(2, value);
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return B(ri1);
        }

        protected int c()
        {
            int i = super.c();
            if (!fv.equals(""))
            {
                i += rj.k(1, fv);
            }
            if (!value.equals(""))
            {
                i += rj.k(2, value);
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
            d d1 = (d)obj;
            if (fv != null) goto _L6; else goto _L5
_L5:
            String s1;
            s1 = d1.fv;
            flag1 = false;
            if (s1 != null) goto _L4; else goto _L7
_L7:
            String s;
            if (value != null)
            {
                break MISSING_BLOCK_LABEL_92;
            }
            s = d1.value;
            flag1 = false;
            if (s != null) goto _L4; else goto _L8
_L8:
            return a(d1);
_L6:
            if (!fv.equals(d1.fv))
            {
                return false;
            }
              goto _L7
            if (!value.equals(d1.value))
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
            if (fv == null)
            {
                i = 0;
            } else
            {
                i = fv.hashCode();
            }
            j = 31 * (i + 527);
            s = value;
            k = 0;
            if (s != null)
            {
                k = value.hashCode();
            }
            return 31 * (j + k) + ua();
        }

        public d uo()
        {
            fv = "";
            value = "";
            aGo = null;
            aGz = -1;
            return this;
        }

        public d()
        {
            uo();
        }
    }

}
