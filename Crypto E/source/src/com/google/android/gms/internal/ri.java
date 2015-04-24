// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rp, rq, rt

public final class ri
{

    private int aGe;
    private int aGf;
    private int aGg;
    private int aGh;
    private int aGi;
    private int aGj;
    private int aGk;
    private int aGl;
    private int aGm;
    private final byte buffer[];

    private ri(byte abyte0[], int i, int j)
    {
        aGj = 0x7fffffff;
        aGl = 64;
        aGm = 0x4000000;
        buffer = abyte0;
        aGe = i;
        aGf = i + j;
        aGh = i;
    }

    public static long B(long l)
    {
        return l >>> 1 ^ -(1L & l);
    }

    public static ri a(byte abyte0[], int i, int j)
    {
        return new ri(abyte0, i, j);
    }

    public static int hW(int i)
    {
        return i >>> 1 ^ -(i & 1);
    }

    public static ri p(byte abyte0[])
    {
        return a(abyte0, 0, abyte0.length);
    }

    private void tU()
    {
        aGf = aGf + aGg;
        int i = aGf;
        if (i > aGj)
        {
            aGg = i - aGj;
            aGf = aGf - aGg;
            return;
        } else
        {
            aGg = 0;
            return;
        }
    }

    public void a(rq rq1)
    {
        int i = tQ();
        if (aGk >= aGl)
        {
            throw rp.uh();
        } else
        {
            int j = hX(i);
            aGk = 1 + aGk;
            rq1.b(this);
            hU(0);
            aGk = -1 + aGk;
            hY(j);
            return;
        }
    }

    public void a(rq rq1, int i)
    {
        if (aGk >= aGl)
        {
            throw rp.uh();
        } else
        {
            aGk = 1 + aGk;
            rq1.b(this);
            hU(rt.E(i, 4));
            aGk = -1 + aGk;
            return;
        }
    }

    public int getPosition()
    {
        return aGh - aGe;
    }

    public void hU(int i)
    {
        if (aGi != i)
        {
            throw rp.uf();
        } else
        {
            return;
        }
    }

    public boolean hV(int i)
    {
        switch (rt.ip(i))
        {
        default:
            throw rp.ug();

        case 0: // '\0'
            tM();
            return true;

        case 1: // '\001'
            tT();
            return true;

        case 2: // '\002'
            ib(tQ());
            return true;

        case 3: // '\003'
            tK();
            hU(rt.E(rt.iq(i), 4));
            return true;

        case 4: // '\004'
            return false;

        case 5: // '\005'
            tS();
            break;
        }
        return true;
    }

    public int hX(int i)
    {
        if (i < 0)
        {
            throw rp.uc();
        }
        int j = i + aGh;
        int k = aGj;
        if (j > k)
        {
            throw rp.ub();
        } else
        {
            aGj = j;
            tU();
            return k;
        }
    }

    public void hY(int i)
    {
        aGj = i;
        tU();
    }

    public void hZ(int i)
    {
        if (i > aGh - aGe)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Position ").append(i).append(" is beyond current ").append(aGh - aGe).toString());
        }
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad position ").append(i).toString());
        } else
        {
            aGh = i + aGe;
            return;
        }
    }

    public byte[] ia(int i)
    {
        if (i < 0)
        {
            throw rp.uc();
        }
        if (i + aGh > aGj)
        {
            ib(aGj - aGh);
            throw rp.ub();
        }
        if (i <= aGf - aGh)
        {
            byte abyte0[] = new byte[i];
            System.arraycopy(buffer, aGh, abyte0, 0, i);
            aGh = i + aGh;
            return abyte0;
        } else
        {
            throw rp.ub();
        }
    }

    public void ib(int i)
    {
        if (i < 0)
        {
            throw rp.uc();
        }
        if (i + aGh > aGj)
        {
            ib(aGj - aGh);
            throw rp.ub();
        }
        if (i <= aGf - aGh)
        {
            aGh = i + aGh;
            return;
        } else
        {
            throw rp.ub();
        }
    }

    public byte[] readBytes()
    {
        int i = tQ();
        if (i <= aGf - aGh && i > 0)
        {
            byte abyte0[] = new byte[i];
            System.arraycopy(buffer, aGh, abyte0, 0, i);
            aGh = i + aGh;
            return abyte0;
        } else
        {
            return ia(i);
        }
    }

    public double readDouble()
    {
        return Double.longBitsToDouble(tT());
    }

    public float readFloat()
    {
        return Float.intBitsToFloat(tS());
    }

    public String readString()
    {
        int i = tQ();
        if (i <= aGf - aGh && i > 0)
        {
            String s = new String(buffer, aGh, i, "UTF-8");
            aGh = i + aGh;
            return s;
        } else
        {
            return new String(ia(i), "UTF-8");
        }
    }

    public int tJ()
    {
        if (tW())
        {
            aGi = 0;
            return 0;
        }
        aGi = tQ();
        if (aGi == 0)
        {
            throw rp.ue();
        } else
        {
            return aGi;
        }
    }

    public void tK()
    {
        int i;
        do
        {
            i = tJ();
        } while (i != 0 && hV(i));
    }

    public long tL()
    {
        return tR();
    }

    public int tM()
    {
        return tQ();
    }

    public boolean tN()
    {
        return tQ() != 0;
    }

    public int tO()
    {
        return hW(tQ());
    }

    public long tP()
    {
        return B(tR());
    }

    public int tQ()
    {
        int i = tX();
        if (i < 0) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        int j = i & 0x7f;
        byte byte0 = tX();
        if (byte0 >= 0)
        {
            return j | byte0 << 7;
        }
        int k = j | (byte0 & 0x7f) << 7;
        byte byte1 = tX();
        if (byte1 >= 0)
        {
            return k | byte1 << 14;
        }
        int l = k | (byte1 & 0x7f) << 14;
        byte byte2 = tX();
        if (byte2 >= 0)
        {
            return l | byte2 << 21;
        }
        int i1 = l | (byte2 & 0x7f) << 21;
        byte byte3 = tX();
        i = i1 | byte3 << 28;
        if (byte3 < 0)
        {
            int j1 = 0;
label0:
            do
            {
label1:
                {
                    if (j1 >= 5)
                    {
                        break label1;
                    }
                    if (tX() >= 0)
                    {
                        break label0;
                    }
                    j1++;
                }
            } while (true);
        }
        if (true) goto _L1; else goto _L3
_L3:
        throw rp.ud();
    }

    public long tR()
    {
        int i = 0;
        long l = 0L;
        for (; i < 64; i += 7)
        {
            byte byte0 = tX();
            l |= (long)(byte0 & 0x7f) << i;
            if ((byte0 & 0x80) == 0)
            {
                return l;
            }
        }

        throw rp.ud();
    }

    public int tS()
    {
        byte byte0 = tX();
        byte byte1 = tX();
        byte byte2 = tX();
        byte byte3 = tX();
        return byte0 & 0xff | (byte1 & 0xff) << 8 | (byte2 & 0xff) << 16 | (byte3 & 0xff) << 24;
    }

    public long tT()
    {
        int i = tX();
        int j = tX();
        int k = tX();
        int l = tX();
        int i1 = tX();
        int j1 = tX();
        int k1 = tX();
        int l1 = tX();
        return 255L & (long)i | (255L & (long)j) << 8 | (255L & (long)k) << 16 | (255L & (long)l) << 24 | (255L & (long)i1) << 32 | (255L & (long)j1) << 40 | (255L & (long)k1) << 48 | (255L & (long)l1) << 56;
    }

    public int tV()
    {
        if (aGj == 0x7fffffff)
        {
            return -1;
        } else
        {
            int i = aGh;
            return aGj - i;
        }
    }

    public boolean tW()
    {
        return aGh == aGf;
    }

    public byte tX()
    {
        if (aGh == aGf)
        {
            throw rp.ub();
        } else
        {
            byte abyte0[] = buffer;
            int i = aGh;
            aGh = i + 1;
            return abyte0[i];
        }
    }

    public byte[] y(int i, int j)
    {
        if (j == 0)
        {
            return rt.aGI;
        } else
        {
            byte abyte0[] = new byte[j];
            int k = i + aGe;
            System.arraycopy(buffer, k, abyte0, 0, j);
            return abyte0;
        }
    }
}
