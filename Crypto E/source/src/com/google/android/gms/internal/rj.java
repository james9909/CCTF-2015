// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

// Referenced classes of package com.google.android.gms.internal:
//            rq, rt

public final class rj
{
    public static class a extends IOException
    {

        a(int i, int j)
        {
            super((new StringBuilder()).append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ").append(i).append(" limit ").append(j).append(").").toString());
        }
    }


    private final int aGn;
    private final byte buffer[];
    private int position;

    private rj(byte abyte0[], int i, int j)
    {
        buffer = abyte0;
        position = i;
        aGn = i + j;
    }

    public static int B(int i, int j)
    {
        return ih(i) + ie(j);
    }

    public static int C(int i, int j)
    {
        return ih(i) + _mthif(j);
    }

    public static int E(long l)
    {
        return H(l);
    }

    public static int F(long l)
    {
        return H(J(l));
    }

    public static int H(long l)
    {
        if ((-128L & l) == 0L)
        {
            return 1;
        }
        if ((-16384L & l) == 0L)
        {
            return 2;
        }
        if ((0xffffffffffe00000L & l) == 0L)
        {
            return 3;
        }
        if ((0xfffffffff0000000L & l) == 0L)
        {
            return 4;
        }
        if ((0xfffffff800000000L & l) == 0L)
        {
            return 5;
        }
        if ((0xfffffc0000000000L & l) == 0L)
        {
            return 6;
        }
        if ((0xfffe000000000000L & l) == 0L)
        {
            return 7;
        }
        if ((0xff00000000000000L & l) == 0L)
        {
            return 8;
        }
        return (0x8000000000000000L & l) != 0L ? 10 : 9;
    }

    public static long J(long l)
    {
        return l << 1 ^ l >> 63;
    }

    public static int Z(boolean flag)
    {
        return 1;
    }

    public static int b(int i, double d1)
    {
        return ih(i) + f(d1);
    }

    public static int b(int i, rq rq1)
    {
        return 2 * ih(i) + d(rq1);
    }

    public static int b(int i, byte abyte0[])
    {
        return ih(i) + s(abyte0);
    }

    public static rj b(byte abyte0[], int i, int j)
    {
        return new rj(abyte0, i, j);
    }

    public static int c(int i, float f1)
    {
        return ih(i) + e(f1);
    }

    public static int c(int i, rq rq1)
    {
        return ih(i) + e(rq1);
    }

    public static int c(int i, boolean flag)
    {
        return ih(i) + Z(flag);
    }

    public static int d(int i, long l)
    {
        return ih(i) + E(l);
    }

    public static int d(rq rq1)
    {
        return rq1.uj();
    }

    public static int dr(String s1)
    {
        int i;
        int j;
        try
        {
            byte abyte0[] = s1.getBytes("UTF-8");
            i = ij(abyte0.length);
            j = abyte0.length;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException("UTF-8 not supported.");
        }
        return j + i;
    }

    public static int e(float f1)
    {
        return 4;
    }

    public static int e(int i, long l)
    {
        return ih(i) + F(l);
    }

    public static int e(rq rq1)
    {
        int i = rq1.uj();
        return i + ij(i);
    }

    public static int f(double d1)
    {
        return 8;
    }

    public static int ie(int i)
    {
        if (i >= 0)
        {
            return ij(i);
        } else
        {
            return 10;
        }
    }

    public static int _mthif(int i)
    {
        return ij(il(i));
    }

    public static int ih(int i)
    {
        return ij(rt.E(i, 0));
    }

    public static int ij(int i)
    {
        if ((i & 0xffffff80) == 0)
        {
            return 1;
        }
        if ((i & 0xffffc000) == 0)
        {
            return 2;
        }
        if ((0xffe00000 & i) == 0)
        {
            return 3;
        }
        return (0xf0000000 & i) != 0 ? 5 : 4;
    }

    public static int il(int i)
    {
        return i << 1 ^ i >> 31;
    }

    public static int k(int i, String s1)
    {
        return ih(i) + dr(s1);
    }

    public static rj q(byte abyte0[])
    {
        return b(abyte0, 0, abyte0.length);
    }

    public static int s(byte abyte0[])
    {
        return ij(abyte0.length) + abyte0.length;
    }

    public void A(int i, int j)
    {
        D(i, 0);
        id(j);
    }

    public void C(long l)
    {
        G(l);
    }

    public void D(int i, int j)
    {
        ii(rt.E(i, j));
    }

    public void D(long l)
    {
        G(J(l));
    }

    public void G(long l)
    {
        do
        {
            if ((-128L & l) == 0L)
            {
                ig((int)l);
                return;
            }
            ig(0x80 | 0x7f & (int)l);
            l >>>= 7;
        } while (true);
    }

    public void I(long l)
    {
        ig(0xff & (int)l);
        ig(0xff & (int)(l >> 8));
        ig(0xff & (int)(l >> 16));
        ig(0xff & (int)(l >> 24));
        ig(0xff & (int)(l >> 32));
        ig(0xff & (int)(l >> 40));
        ig(0xff & (int)(l >> 48));
        ig(0xff & (int)(l >> 56));
    }

    public void Y(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        ig(i);
    }

    public void a(int i, double d1)
    {
        D(i, 1);
        e(d1);
    }

    public void a(int i, rq rq1)
    {
        D(i, 2);
        c(rq1);
    }

    public void a(int i, byte abyte0[])
    {
        D(i, 2);
        r(abyte0);
    }

    public void b(byte byte0)
    {
        if (position == aGn)
        {
            throw new a(position, aGn);
        } else
        {
            byte abyte0[] = buffer;
            int i = position;
            position = i + 1;
            abyte0[i] = byte0;
            return;
        }
    }

    public void b(int i, float f1)
    {
        D(i, 5);
        d(f1);
    }

    public void b(int i, long l)
    {
        D(i, 0);
        C(l);
    }

    public void b(int i, String s1)
    {
        D(i, 2);
        dq(s1);
    }

    public void b(int i, boolean flag)
    {
        D(i, 0);
        Y(flag);
    }

    public void b(rq rq1)
    {
        rq1.a(this);
    }

    public void c(int i, long l)
    {
        D(i, 0);
        D(l);
    }

    public void c(rq rq1)
    {
        ii(rq1.ui());
        rq1.a(this);
    }

    public void c(byte abyte0[], int i, int j)
    {
        if (aGn - position >= j)
        {
            System.arraycopy(abyte0, i, buffer, position, j);
            position = j + position;
            return;
        } else
        {
            throw new a(position, aGn);
        }
    }

    public void d(float f1)
    {
        ik(Float.floatToIntBits(f1));
    }

    public void dq(String s1)
    {
        byte abyte0[] = s1.getBytes("UTF-8");
        ii(abyte0.length);
        t(abyte0);
    }

    public void e(double d1)
    {
        I(Double.doubleToLongBits(d1));
    }

    public void ic(int i)
    {
        if (i >= 0)
        {
            ii(i);
            return;
        } else
        {
            G(i);
            return;
        }
    }

    public void id(int i)
    {
        ii(il(i));
    }

    public void ig(int i)
    {
        b((byte)i);
    }

    public void ii(int i)
    {
        do
        {
            if ((i & 0xffffff80) == 0)
            {
                ig(i);
                return;
            }
            ig(0x80 | i & 0x7f);
            i >>>= 7;
        } while (true);
    }

    public void ik(int i)
    {
        ig(i & 0xff);
        ig(0xff & i >> 8);
        ig(0xff & i >> 16);
        ig(0xff & i >> 24);
    }

    public void r(byte abyte0[])
    {
        ii(abyte0.length);
        t(abyte0);
    }

    public void t(byte abyte0[])
    {
        c(abyte0, 0, abyte0.length);
    }

    public int tY()
    {
        return aGn - position;
    }

    public void tZ()
    {
        if (tY() != 0)
        {
            throw new IllegalStateException("Did not write as much data as expected.");
        } else
        {
            return;
        }
    }

    public void z(int i, int j)
    {
        D(i, 0);
        ic(j);
    }
}
