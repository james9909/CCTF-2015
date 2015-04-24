// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, rq, rj, ro, 
//            ri, rt, c

public static final class q extends rk
{

    public aGz gr[];
    public aGz gs;
    public String gt;

    public static q b(byte abyte0[])
    {
        return (q)rq.a(new <init>(), abyte0);
    }

    public void a(rj rj1)
    {
        if (gr != null && gr.length > 0)
        {
            for (int i = 0; i < gr.length; i++)
            {
                <init> <init>1 = gr[i];
                if (<init>1 != null)
                {
                    rj1.a(1, <init>1);
                }
            }

        }
        if (gs != null)
        {
            rj1.a(2, gs);
        }
        if (!gt.equals(""))
        {
            rj1.b(3, gt);
        }
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return k(ri1);
    }

    protected int c()
    {
        int i = super.c();
        if (gr != null && gr.length > 0)
        {
            for (int l = 0; l < gr.length; l++)
            {
                k k1 = gr[l];
                if (k1 != null)
                {
                    i += rj.c(1, k1);
                }
            }

        }
        if (gs != null)
        {
            i += rj.c(2, gs);
        }
        if (!gt.equals(""))
        {
            i += rj.k(3, gt);
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
        flag = obj instanceof gt;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        gt gt1;
        boolean flag2;
        gt1 = (gt)obj;
        flag2 = ro.equals(gr, gt1.gr);
        flag1 = false;
        if (!flag2) goto _L4; else goto _L5
_L5:
        if (gs != null) goto _L7; else goto _L6
_L6:
        gt gt2;
        gt2 = gt1.gs;
        flag1 = false;
        if (gt2 != null) goto _L4; else goto _L8
_L8:
        String s;
        if (gt != null)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        s = gt1.gt;
        flag1 = false;
        if (s != null) goto _L4; else goto _L9
_L9:
        return a(gt1);
_L7:
        if (!gs.equals(gt1.gs))
        {
            return false;
        }
          goto _L8
        if (!gt.equals(gt1.gt))
        {
            return false;
        }
          goto _L9
    }

    public int hashCode()
    {
        int i = 31 * (527 + ro.hashCode(gr));
        int l;
        int i1;
        String s;
        int j1;
        if (gs == null)
        {
            l = 0;
        } else
        {
            l = gs.hashCode();
        }
        i1 = 31 * (l + i);
        s = gt;
        j1 = 0;
        if (s != null)
        {
            j1 = gt.hashCode();
        }
        return 31 * (i1 + j1) + ua();
    }

    public ua k(ri ri1)
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
                int l = rt.b(ri1, 10);
                int i1;
                ua aua[];
                if (gr == null)
                {
                    i1 = 0;
                } else
                {
                    i1 = gr.length;
                }
                aua = new gr[l + i1];
                if (i1 != 0)
                {
                    System.arraycopy(gr, 0, aua, 0, i1);
                }
                for (; i1 < -1 + aua.length; i1++)
                {
                    aua[i1] = new <init>();
                    ri1.a(aua[i1]);
                    ri1.tJ();
                }

                aua[i1] = new <init>();
                ri1.a(aua[i1]);
                gr = aua;
                break;

            case 18: // '\022'
                if (gs == null)
                {
                    gs = new <init>();
                }
                ri1.a(gs);
                break;

            case 26: // '\032'
                gt = ri1.readString();
                break;
            }
        } while (true);
    }

    public eadString q()
    {
        gr = o();
        gs = null;
        gt = "";
        aGo = null;
        aGz = -1;
        return this;
    }

    public ()
    {
        q();
    }
}
