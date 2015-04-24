// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, rq, rj, ri, 
//            qn

public static final class tk extends rk
{

    public long aBL;
    public aGz aBM;
    public aGz gs;

    public static tk l(byte abyte0[])
    {
        return (tk)rq.a(new <init>(), abyte0);
    }

    public void a(rj rj1)
    {
        rj1.b(1, aBL);
        if (gs != null)
        {
            rj1.a(2, gs);
        }
        if (aBM != null)
        {
            rj1.a(3, aBM);
        }
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return s(ri1);
    }

    protected int c()
    {
        int i = super.c() + rj.d(1, aBL);
        if (gs != null)
        {
            i += rj.c(2, gs);
        }
        if (aBM != null)
        {
            i += rj.c(3, aBM);
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
        flag = obj instanceof aBM;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        aBM abm;
        int i;
        abm = (aBM)obj;
        i = aBL != abm.aBL;
        flag1 = false;
        if (i != 0) goto _L4; else goto _L5
_L5:
        if (gs != null) goto _L7; else goto _L6
_L6:
        aBM abm2;
        abm2 = abm.gs;
        flag1 = false;
        if (abm2 != null) goto _L4; else goto _L8
_L8:
        aBM abm1;
        if (aBM != null)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        abm1 = abm.aBM;
        flag1 = false;
        if (abm1 != null) goto _L4; else goto _L9
_L9:
        return a(abm);
_L7:
        if (!gs.quals(abm.gs))
        {
            return false;
        }
          goto _L8
        if (!aBM.quals(abm.aBM))
        {
            return false;
        }
          goto _L9
    }

    public int hashCode()
    {
        int i = 31 * (527 + (int)(aBL ^ aBL >>> 32));
        int j;
        int k;
        aBM abm;
        int i1;
        if (gs == null)
        {
            j = 0;
        } else
        {
            j = gs.ashCode();
        }
        k = 31 * (j + i);
        abm = aBM;
        i1 = 0;
        if (abm != null)
        {
            i1 = aBM.ashCode();
        }
        return 31 * (k + i1) + ua();
    }

    public ua s(ri ri1)
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
                aBL = ri1.tL();
                break;

            case 18: // '\022'
                if (gs == null)
                {
                    gs = new init>();
                }
                ri1.a(gs);
                break;

            case 26: // '\032'
                if (aBM == null)
                {
                    aBM = new init>();
                }
                ri1.a(aBM);
                break;
            }
        } while (true);
    }

    public aBM tk()
    {
        aBL = 0L;
        gs = null;
        aBM = null;
        aGo = null;
        aGz = -1;
        return this;
    }

    public ()
    {
        tk();
    }
}
