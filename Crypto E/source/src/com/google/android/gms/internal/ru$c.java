// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Arrays;

// Referenced classes of package com.google.android.gms.internal:
//            rk, ri, rt, rj, 
//            ro, ru, rq

public static final class um extends rk
{

    public long aGO;
    public int aGP;
    public int aGQ;
    public boolean aGR;
    public aGz aGS[];
    public aGz aGT;
    public byte aGU[];
    public byte aGV[];
    public byte aGW[];
    public aGz aGX;
    public String aGY;
    public long aGZ;
    public String tag;

    public um A(ri ri1)
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
                um aum[];
                if (aGS == null)
                {
                    k = 0;
                } else
                {
                    k = aGS.length;
                }
                aum = new aGS[j + k];
                if (k != 0)
                {
                    System.arraycopy(aGS, 0, aum, 0, k);
                }
                for (; k < -1 + aum.length; k++)
                {
                    aum[k] = new <init>();
                    ri1.a(aum[k]);
                    ri1.tJ();
                }

                aum[k] = new <init>();
                ri1.a(aum[k]);
                aGS = aum;
                break;

            case 50: // '2'
                aGU = ri1.readBytes();
                break;

            case 58: // ':'
                if (aGX == null)
                {
                    aGX = new <init>();
                }
                ri1.a(aGX);
                break;

            case 66: // 'B'
                aGV = ri1.readBytes();
                break;

            case 74: // 'J'
                if (aGT == null)
                {
                    aGT = new <init>();
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
                  = aGS[i];
                if ( != null)
                {
                    rj1.a(3, );
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
                A a1 = aGS[k];
                if (a1 != null)
                {
                    j += rj.c(3, a1);
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
        flag = obj instanceof aGZ;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        aGZ agz;
        int i;
        agz = (aGZ)obj;
        i = aGO != agz.aGO;
        flag1 = false;
        if (i != 0) goto _L4; else goto _L5
_L5:
        if (tag != null) goto _L7; else goto _L6
_L6:
        String s1;
        s1 = agz.tag;
        flag1 = false;
        if (s1 != null) goto _L4; else goto _L8
_L8:
        int j;
        int k;
        j = aGP;
        k = agz.aGP;
        flag1 = false;
        if (j != k) goto _L4; else goto _L9
_L9:
        int l;
        int i1;
        l = aGQ;
        i1 = agz.aGQ;
        flag1 = false;
        if (l != i1) goto _L4; else goto _L10
_L10:
        boolean flag2;
        boolean flag3;
        flag2 = aGR;
        flag3 = agz.aGR;
        flag1 = false;
        if (flag2 != flag3) goto _L4; else goto _L11
_L11:
        boolean flag4;
        flag4 = ro.equals(aGS, agz.aGS);
        flag1 = false;
        if (!flag4) goto _L4; else goto _L12
_L12:
        if (aGT != null) goto _L14; else goto _L13
_L13:
        aGZ agz2;
        agz2 = agz.aGT;
        flag1 = false;
        if (agz2 != null) goto _L4; else goto _L15
_L15:
        boolean flag5;
        flag5 = Arrays.equals(aGU, agz.aGU);
        flag1 = false;
        if (!flag5) goto _L4; else goto _L16
_L16:
        boolean flag6;
        flag6 = Arrays.equals(aGV, agz.aGV);
        flag1 = false;
        if (!flag6) goto _L4; else goto _L17
_L17:
        boolean flag7;
        flag7 = Arrays.equals(aGW, agz.aGW);
        flag1 = false;
        if (!flag7) goto _L4; else goto _L18
_L18:
        if (aGX != null) goto _L20; else goto _L19
_L19:
        aGZ agz1;
        agz1 = agz.aGX;
        flag1 = false;
        if (agz1 != null) goto _L4; else goto _L21
_L21:
        String s;
        if (aGY != null)
        {
            break MISSING_BLOCK_LABEL_356;
        }
        s = agz.aGY;
        flag1 = false;
        if (s != null) goto _L4; else goto _L22
_L22:
        int j1 = aGZ != agz.aGZ;
        flag1 = false;
        if (j1 == 0)
        {
            return a(agz);
        }
          goto _L4
_L7:
        if (!tag.equals(agz.tag))
        {
            return false;
        }
          goto _L8
_L14:
        if (!aGT.equals(agz.aGT))
        {
            return false;
        }
          goto _L15
_L20:
        if (!aGX.equals(agz.aGX))
        {
            return false;
        }
          goto _L21
        if (!aGY.equals(agz.aGY))
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

    public ua um()
    {
        aGO = 0L;
        tag = "";
        aGP = 0;
        aGQ = 0;
        aGR = false;
        aGS = un();
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

    public ()
    {
        um();
    }
}
