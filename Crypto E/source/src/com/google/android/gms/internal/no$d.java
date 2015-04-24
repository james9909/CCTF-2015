// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, rj, ri, no, 
//            rq

public static final class pl extends rk
{

    public String UZ;
    public boolean amQ;
    public long amR;
    public double amS;
    public amT amT;

    public void a(rj rj1)
    {
        if (amQ)
        {
            rj1.b(1, amQ);
        }
        if (!UZ.equals(""))
        {
            rj1.b(2, UZ);
        }
        if (amR != 0L)
        {
            rj1.b(3, amR);
        }
        if (Double.doubleToLongBits(amS) != Double.doubleToLongBits(0.0D))
        {
            rj1.a(4, amS);
        }
        if (amT != null)
        {
            rj1.a(5, amT);
        }
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return r(ri1);
    }

    protected int c()
    {
        int i = super.c();
        if (amQ)
        {
            i += rj.c(1, amQ);
        }
        if (!UZ.equals(""))
        {
            i += rj.k(2, UZ);
        }
        if (amR != 0L)
        {
            i += rj.d(3, amR);
        }
        if (Double.doubleToLongBits(amS) != Double.doubleToLongBits(0.0D))
        {
            i += rj.b(4, amS);
        }
        if (amT != null)
        {
            i += rj.c(5, amT);
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
        flag = obj instanceof amT;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        amT amt;
        boolean flag2;
        boolean flag3;
        amt = (amT)obj;
        flag2 = amQ;
        flag3 = amt.amQ;
        flag1 = false;
        if (flag2 != flag3) goto _L4; else goto _L5
_L5:
        if (UZ != null) goto _L7; else goto _L6
_L6:
        String s;
        s = amt.UZ;
        flag1 = false;
        if (s != null) goto _L4; else goto _L8
_L8:
        int i;
        i = amR != amt.amR;
        flag1 = false;
        if (i != 0) goto _L4; else goto _L9
_L9:
        int j;
        j = Double.doubleToLongBits(amS) != Double.doubleToLongBits(amt.amS);
        flag1 = false;
        if (j != 0) goto _L4; else goto _L10
_L10:
        amT amt1;
        if (amT != null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        amt1 = amt.amT;
        flag1 = false;
        if (amt1 != null) goto _L4; else goto _L11
_L11:
        return a(amt);
_L7:
        if (!UZ.equals(amt.UZ))
        {
            return false;
        }
          goto _L8
        if (!amT.equals(amt.amT))
        {
            return false;
        }
          goto _L11
    }

    public int hashCode()
    {
        char c1;
        int i;
        int j;
        int k;
        long l;
        int i1;
        amT amt;
        int j1;
        if (amQ)
        {
            c1 = '\u04CF';
        } else
        {
            c1 = '\u04D5';
        }
        i = 31 * (c1 + 527);
        if (UZ == null)
        {
            j = 0;
        } else
        {
            j = UZ.hashCode();
        }
        k = 31 * (j + i) + (int)(amR ^ amR >>> 32);
        l = Double.doubleToLongBits(amS);
        i1 = 31 * (k * 31 + (int)(l ^ l >>> 32));
        amt = amT;
        j1 = 0;
        if (amt != null)
        {
            j1 = amT.hashCode();
        }
        return 31 * (i1 + j1) + ua();
    }

    public ua pl()
    {
        amQ = false;
        UZ = "";
        amR = 0L;
        amS = 0.0D;
        amT = null;
        aGo = null;
        aGz = -1;
        return this;
    }

    public aGz r(ri ri1)
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
                amQ = ri1.tN();
                break;

            case 18: // '\022'
                UZ = ri1.readString();
                break;

            case 24: // '\030'
                amR = ri1.tL();
                break;

            case 33: // '!'
                amS = ri1.readDouble();
                break;

            case 42: // '*'
                if (amT == null)
                {
                    amT = new <init>();
                }
                ri1.a(amT);
                break;
            }
        } while (true);
    }

    public ()
    {
        pl();
    }
}
