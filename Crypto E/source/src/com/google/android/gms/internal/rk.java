// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rq, rl, rt, rm, 
//            rn, ri, rs, rj

public abstract class rk extends rq
{

    protected rm aGo;

    public rk()
    {
    }

    public final Object a(rl rl1)
    {
        rn rn1;
        if (aGo != null)
        {
            if ((rn1 = aGo.im(rt.iq(rl1.tag))) != null)
            {
                return rn1.b(rl1);
            }
        }
        return null;
    }

    public void a(rj rj)
    {
        if (aGo != null)
        {
            int i = 0;
            while (i < aGo.size()) 
            {
                aGo.in(i).a(rj);
                i++;
            }
        }
    }

    protected final boolean a(ri ri1, int i)
    {
        int j = ri1.getPosition();
        if (!ri1.hV(i))
        {
            return false;
        }
        int k = rt.iq(i);
        rs rs1 = new rs(i, ri1.y(j, ri1.getPosition() - j));
        rn rn1 = null;
        if (aGo == null)
        {
            aGo = new rm();
        } else
        {
            rn1 = aGo.im(k);
        }
        if (rn1 == null)
        {
            rn1 = new rn();
            aGo.a(k, rn1);
        }
        rn1.a(rs1);
        return true;
    }

    protected final boolean a(rk rk1)
    {
        if (aGo == null || aGo.isEmpty())
        {
            return rk1.aGo == null || rk1.aGo.isEmpty();
        } else
        {
            return aGo.equals(rk1.aGo);
        }
    }

    protected int c()
    {
        int i = 0;
        int j;
        if (aGo != null)
        {
            j = 0;
            for (; i < aGo.size(); i++)
            {
                j += aGo.in(i).c();
            }

        } else
        {
            j = 0;
        }
        return j;
    }

    protected final int ua()
    {
        if (aGo == null || aGo.isEmpty())
        {
            return 0;
        } else
        {
            return aGo.hashCode();
        }
    }
}
