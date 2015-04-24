// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, ro, rj, ri, 
//            no, rq

public static final class pj extends rk
{

    private static volatile aGz amN[];
    public aGz amO;
    public String name;

    public static pj[] pi()
    {
        if (amN == null)
        {
            synchronized (ro.aGy)
            {
                if (amN == null)
                {
                    amN = new amN[0];
                }
            }
        }
        return amN;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(rj rj1)
    {
        if (!name.equals(""))
        {
            rj1.b(1, name);
        }
        if (amO != null)
        {
            rj1.a(2, amO);
        }
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return p(ri1);
    }

    protected int c()
    {
        int i = super.c();
        if (!name.equals(""))
        {
            i += rj.k(1, name);
        }
        if (amO != null)
        {
            i += rj.c(2, amO);
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
        flag = obj instanceof amO;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        amO amo = (amO)obj;
        if (name != null) goto _L6; else goto _L5
_L5:
        String s;
        s = amo.name;
        flag1 = false;
        if (s != null) goto _L4; else goto _L7
_L7:
        amO amo1;
        if (amO != null)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        amo1 = amo.amO;
        flag1 = false;
        if (amo1 != null) goto _L4; else goto _L8
_L8:
        return a(amo);
_L6:
        if (!name.equals(amo.name))
        {
            return false;
        }
          goto _L7
        if (!amO.equals(amo.amO))
        {
            return false;
        }
          goto _L8
    }

    public int hashCode()
    {
        int i;
        int j;
        amO amo;
        int k;
        if (name == null)
        {
            i = 0;
        } else
        {
            i = name.hashCode();
        }
        j = 31 * (i + 527);
        amo = amO;
        k = 0;
        if (amo != null)
        {
            k = amO.hashCode();
        }
        return 31 * (j + k) + ua();
    }

    public ua p(ri ri1)
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
                name = ri1.readString();
                break;

            case 18: // '\022'
                if (amO == null)
                {
                    amO = new <init>();
                }
                ri1.a(amO);
                break;
            }
        } while (true);
    }

    public amO pj()
    {
        name = "";
        amO = null;
        aGo = null;
        aGz = -1;
        return this;
    }

    public ()
    {
        pj();
    }
}
