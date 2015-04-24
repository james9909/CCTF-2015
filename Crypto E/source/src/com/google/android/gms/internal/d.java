// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, ro, rj, ri, 
//            rt, rq

public interface d
{
    public static final class a extends rk
    {

        private static volatile a gu[];
        public String gA;
        public long gB;
        public boolean gC;
        public a gD[];
        public int gE[];
        public boolean gF;
        public String gv;
        public a gw[];
        public a gx[];
        public a gy[];
        public String gz;
        public int type;

        public static a[] r()
        {
            if (gu == null)
            {
                synchronized (ro.aGy)
                {
                    if (gu == null)
                    {
                        gu = new a[0];
                    }
                }
            }
            return gu;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(rj rj1)
        {
            rj1.z(1, type);
            if (!gv.equals(""))
            {
                rj1.b(2, gv);
            }
            if (gw != null && gw.length > 0)
            {
                for (int k1 = 0; k1 < gw.length; k1++)
                {
                    a a4 = gw[k1];
                    if (a4 != null)
                    {
                        rj1.a(3, a4);
                    }
                }

            }
            if (gx != null && gx.length > 0)
            {
                for (int j1 = 0; j1 < gx.length; j1++)
                {
                    a a3 = gx[j1];
                    if (a3 != null)
                    {
                        rj1.a(4, a3);
                    }
                }

            }
            if (gy != null && gy.length > 0)
            {
                for (int i1 = 0; i1 < gy.length; i1++)
                {
                    a a2 = gy[i1];
                    if (a2 != null)
                    {
                        rj1.a(5, a2);
                    }
                }

            }
            if (!gz.equals(""))
            {
                rj1.b(6, gz);
            }
            if (!gA.equals(""))
            {
                rj1.b(7, gA);
            }
            if (gB != 0L)
            {
                rj1.b(8, gB);
            }
            if (gF)
            {
                rj1.b(9, gF);
            }
            if (gE != null && gE.length > 0)
            {
                for (int k = 0; k < gE.length; k++)
                {
                    rj1.z(10, gE[k]);
                }

            }
            if (gD != null)
            {
                int i = gD.length;
                int j = 0;
                if (i > 0)
                {
                    for (; j < gD.length; j++)
                    {
                        a a1 = gD[j];
                        if (a1 != null)
                        {
                            rj1.a(11, a1);
                        }
                    }

                }
            }
            if (gC)
            {
                rj1.b(12, gC);
            }
            super.a(rj1);
        }

        public rq b(ri ri1)
        {
            return l(ri1);
        }

        protected int c()
        {
            int i = super.c() + rj.B(1, type);
            if (!gv.equals(""))
            {
                i += rj.k(2, gv);
            }
            if (gw != null && gw.length > 0)
            {
                int k2 = i;
                for (int l2 = 0; l2 < gw.length; l2++)
                {
                    a a4 = gw[l2];
                    if (a4 != null)
                    {
                        k2 += rj.c(3, a4);
                    }
                }

                i = k2;
            }
            if (gx != null && gx.length > 0)
            {
                int i2 = i;
                for (int j2 = 0; j2 < gx.length; j2++)
                {
                    a a3 = gx[j2];
                    if (a3 != null)
                    {
                        i2 += rj.c(4, a3);
                    }
                }

                i = i2;
            }
            if (gy != null && gy.length > 0)
            {
                int k1 = i;
                for (int l1 = 0; l1 < gy.length; l1++)
                {
                    a a2 = gy[l1];
                    if (a2 != null)
                    {
                        k1 += rj.c(5, a2);
                    }
                }

                i = k1;
            }
            if (!gz.equals(""))
            {
                i += rj.k(6, gz);
            }
            if (!gA.equals(""))
            {
                i += rj.k(7, gA);
            }
            if (gB != 0L)
            {
                i += rj.d(8, gB);
            }
            if (gF)
            {
                i += rj.c(9, gF);
            }
            if (gE != null && gE.length > 0)
            {
                int i1 = 0;
                int j1 = 0;
                for (; i1 < gE.length; i1++)
                {
                    j1 += rj.ie(gE[i1]);
                }

                i = i + j1 + 1 * gE.length;
            }
            if (gD != null)
            {
                int j = gD.length;
                int k = 0;
                if (j > 0)
                {
                    for (; k < gD.length; k++)
                    {
                        a a1 = gD[k];
                        if (a1 != null)
                        {
                            i += rj.c(11, a1);
                        }
                    }

                }
            }
            if (gC)
            {
                i += rj.c(12, gC);
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
            a a1;
            int i;
            int j;
            a1 = (a)obj;
            i = type;
            j = a1.type;
            flag1 = false;
            if (i != j) goto _L4; else goto _L5
_L5:
            if (gv != null) goto _L7; else goto _L6
_L6:
            String s3;
            s3 = a1.gv;
            flag1 = false;
            if (s3 != null) goto _L4; else goto _L8
_L8:
            boolean flag2;
            flag2 = ro.equals(gw, a1.gw);
            flag1 = false;
            if (!flag2) goto _L4; else goto _L9
_L9:
            boolean flag3;
            flag3 = ro.equals(gx, a1.gx);
            flag1 = false;
            if (!flag3) goto _L4; else goto _L10
_L10:
            boolean flag4;
            flag4 = ro.equals(gy, a1.gy);
            flag1 = false;
            if (!flag4) goto _L4; else goto _L11
_L11:
            if (gz != null) goto _L13; else goto _L12
_L12:
            String s2;
            s2 = a1.gz;
            flag1 = false;
            if (s2 != null) goto _L4; else goto _L14
_L14:
            String s1;
            if (gA != null)
            {
                break MISSING_BLOCK_LABEL_320;
            }
            s1 = a1.gA;
            flag1 = false;
            if (s1 != null) goto _L4; else goto _L15
_L15:
            int k = gB != a1.gB;
            flag1 = false;
            if (k == 0)
            {
                boolean flag5 = gC;
                boolean flag6 = a1.gC;
                flag1 = false;
                if (flag5 == flag6)
                {
                    boolean flag7 = ro.equals(gD, a1.gD);
                    flag1 = false;
                    if (flag7)
                    {
                        boolean flag8 = ro.equals(gE, a1.gE);
                        flag1 = false;
                        if (flag8)
                        {
                            boolean flag9 = gF;
                            boolean flag10 = a1.gF;
                            flag1 = false;
                            if (flag9 == flag10)
                            {
                                return a(a1);
                            }
                        }
                    }
                }
            }
              goto _L4
_L7:
            if (!gv.equals(a1.gv))
            {
                return false;
            }
              goto _L8
_L13:
            if (!gz.equals(a1.gz))
            {
                return false;
            }
              goto _L14
            if (!gA.equals(a1.gA))
            {
                return false;
            }
              goto _L15
        }

        public int hashCode()
        {
            char c1 = '\u04CF';
            int i = 31 * (527 + type);
            int j;
            int k;
            int i1;
            int j1;
            String s1;
            int k1;
            int l1;
            char c2;
            int i2;
            if (gv == null)
            {
                j = 0;
            } else
            {
                j = gv.hashCode();
            }
            k = 31 * (31 * (31 * (31 * (j + i) + ro.hashCode(gw)) + ro.hashCode(gx)) + ro.hashCode(gy));
            if (gz == null)
            {
                i1 = 0;
            } else
            {
                i1 = gz.hashCode();
            }
            j1 = 31 * (i1 + k);
            s1 = gA;
            k1 = 0;
            if (s1 != null)
            {
                k1 = gA.hashCode();
            }
            l1 = 31 * (31 * (j1 + k1) + (int)(gB ^ gB >>> 32));
            if (gC)
            {
                c2 = c1;
            } else
            {
                c2 = '\u04D5';
            }
            i2 = 31 * (31 * (31 * (c2 + l1) + ro.hashCode(gD)) + ro.hashCode(gE));
            if (!gF)
            {
                c1 = '\u04D5';
            }
            return 31 * (i2 + c1) + ua();
        }

        public a l(ri ri1)
        {
_L16:
            int i = ri1.tJ();
            i;
            JVM INSTR lookupswitch 14: default 128
        //                       0: 137
        //                       8: 139
        //                       18: 204
        //                       26: 215
        //                       34: 343
        //                       42: 471
        //                       50: 599
        //                       58: 610
        //                       64: 621
        //                       72: 632
        //                       80: 643
        //                       82: 897
        //                       90: 1212
        //                       96: 1338;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15
_L1:
            if (a(ri1, i)) goto _L16; else goto _L2
_L2:
            return this;
_L3:
            int k5 = ri1.tM();
            switch (k5)
            {
            case 1: // '\001'
            case 2: // '\002'
            case 3: // '\003'
            case 4: // '\004'
            case 5: // '\005'
            case 6: // '\006'
            case 7: // '\007'
            case 8: // '\b'
                type = k5;
                break;
            }
            continue; /* Loop/switch isn't completed */
_L4:
            gv = ri1.readString();
            continue; /* Loop/switch isn't completed */
_L5:
            int i5 = rt.b(ri1, 26);
            int j5;
            a aa3[];
            if (gw == null)
            {
                j5 = 0;
            } else
            {
                j5 = gw.length;
            }
            aa3 = new a[i5 + j5];
            if (j5 != 0)
            {
                System.arraycopy(gw, 0, aa3, 0, j5);
            }
            for (; j5 < -1 + aa3.length; j5++)
            {
                aa3[j5] = new a();
                ri1.a(aa3[j5]);
                ri1.tJ();
            }

            aa3[j5] = new a();
            ri1.a(aa3[j5]);
            gw = aa3;
            continue; /* Loop/switch isn't completed */
_L6:
            int k4 = rt.b(ri1, 34);
            int l4;
            a aa2[];
            if (gx == null)
            {
                l4 = 0;
            } else
            {
                l4 = gx.length;
            }
            aa2 = new a[k4 + l4];
            if (l4 != 0)
            {
                System.arraycopy(gx, 0, aa2, 0, l4);
            }
            for (; l4 < -1 + aa2.length; l4++)
            {
                aa2[l4] = new a();
                ri1.a(aa2[l4]);
                ri1.tJ();
            }

            aa2[l4] = new a();
            ri1.a(aa2[l4]);
            gx = aa2;
            continue; /* Loop/switch isn't completed */
_L7:
            int i4 = rt.b(ri1, 42);
            int j4;
            a aa1[];
            if (gy == null)
            {
                j4 = 0;
            } else
            {
                j4 = gy.length;
            }
            aa1 = new a[i4 + j4];
            if (j4 != 0)
            {
                System.arraycopy(gy, 0, aa1, 0, j4);
            }
            for (; j4 < -1 + aa1.length; j4++)
            {
                aa1[j4] = new a();
                ri1.a(aa1[j4]);
                ri1.tJ();
            }

            aa1[j4] = new a();
            ri1.a(aa1[j4]);
            gy = aa1;
            continue; /* Loop/switch isn't completed */
_L8:
            gz = ri1.readString();
            continue; /* Loop/switch isn't completed */
_L9:
            gA = ri1.readString();
            continue; /* Loop/switch isn't completed */
_L10:
            gB = ri1.tL();
            continue; /* Loop/switch isn't completed */
_L11:
            gF = ri1.tN();
            continue; /* Loop/switch isn't completed */
_L12:
            int k2;
            int ai1[];
            int l2;
            int i3;
            k2 = rt.b(ri1, 80);
            ai1 = new int[k2];
            l2 = 0;
            i3 = 0;
_L21:
            if (l2 >= k2) goto _L18; else goto _L17
_L17:
            int k3;
            if (l2 != 0)
            {
                ri1.tJ();
            }
            k3 = ri1.tM();
            k3;
            JVM INSTR tableswitch 1 17: default 772
        //                       1 786
        //                       2 786
        //                       3 786
        //                       4 786
        //                       5 786
        //                       6 786
        //                       7 786
        //                       8 786
        //                       9 786
        //                       10 786
        //                       11 786
        //                       12 786
        //                       13 786
        //                       14 786
        //                       15 786
        //                       16 786
        //                       17 786;
               goto _L19 _L20 _L20 _L20 _L20 _L20 _L20 _L20 _L20 _L20 _L20 _L20 _L20 _L20 _L20 _L20 _L20 _L20
_L19:
            int l3 = i3;
_L22:
            l2++;
            i3 = l3;
              goto _L21
_L20:
            l3 = i3 + 1;
            ai1[i3] = k3;
              goto _L22
_L18:
            if (i3 != 0)
            {
                int j3;
                if (gE == null)
                {
                    j3 = 0;
                } else
                {
                    j3 = gE.length;
                }
                if (j3 == 0 && i3 == ai1.length)
                {
                    gE = ai1;
                } else
                {
                    int ai2[] = new int[j3 + i3];
                    if (j3 != 0)
                    {
                        System.arraycopy(gE, 0, ai2, 0, j3);
                    }
                    System.arraycopy(ai1, 0, ai2, j3, i3);
                    gE = ai2;
                }
            }
            continue; /* Loop/switch isn't completed */
              goto _L21
_L13:
            int i1;
            int j1;
            int k1;
            i1 = ri1.hX(ri1.tQ());
            j1 = ri1.getPosition();
            k1 = 0;
_L28:
            if (ri1.tV() > 0)
            {
                switch (ri1.tM())
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
                case 16: // '\020'
                case 17: // '\021'
                    k1++;
                    break;
                }
                continue; /* Loop/switch isn't completed */
            }
            if (k1 == 0) goto _L24; else goto _L23
_L23:
            int ai[];
            ri1.hZ(j1);
            int l1;
            int i2;
            int j2;
            if (gE == null)
            {
                l1 = 0;
            } else
            {
                l1 = gE.length;
            }
            ai = new int[k1 + l1];
            if (l1 != 0)
            {
                System.arraycopy(gE, 0, ai, 0, l1);
            }
_L26:
            if (ri1.tV() > 0)
            {
                i2 = ri1.tM();
                switch (i2)
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
                case 16: // '\020'
                case 17: // '\021'
                    j2 = l1 + 1;
                    ai[l1] = i2;
                    l1 = j2;
                    break;
                }
                continue; /* Loop/switch isn't completed */
            }
            gE = ai;
_L24:
            ri1.hY(i1);
            continue; /* Loop/switch isn't completed */
            if (true) goto _L26; else goto _L25
_L25:
            if (true) goto _L28; else goto _L27
_L27:
_L14:
            int j = rt.b(ri1, 90);
            int k;
            a aa[];
            if (gD == null)
            {
                k = 0;
            } else
            {
                k = gD.length;
            }
            aa = new a[j + k];
            if (k != 0)
            {
                System.arraycopy(gD, 0, aa, 0, k);
            }
            for (; k < -1 + aa.length; k++)
            {
                aa[k] = new a();
                ri1.a(aa[k]);
                ri1.tJ();
            }

            aa[k] = new a();
            ri1.a(aa[k]);
            gD = aa;
            continue; /* Loop/switch isn't completed */
_L15:
            gC = ri1.tN();
            if (true) goto _L16; else goto _L29
_L29:
        }

        public a s()
        {
            type = 1;
            gv = "";
            gw = r();
            gx = r();
            gy = r();
            gz = "";
            gA = "";
            gB = 0L;
            gC = false;
            gD = r();
            gE = rt.aGB;
            gF = false;
            aGo = null;
            aGz = -1;
            return this;
        }

        public a()
        {
            s();
        }
    }

}
