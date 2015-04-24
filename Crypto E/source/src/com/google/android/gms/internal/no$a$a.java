// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, ro, rj, ri, 
//            no, rq

public static final class ph extends rk
{

    private static volatile aGz amK[];
    public String amL;
    public String amM;
    public int viewId;

    public static ph[] pg()
    {
        if (amK == null)
        {
            synchronized (ro.aGy)
            {
                if (amK == null)
                {
                    amK = new amK[0];
                }
            }
        }
        return amK;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(rj rj1)
    {
        if (!amL.equals(""))
        {
            rj1.b(1, amL);
        }
        if (!amM.equals(""))
        {
            rj1.b(2, amM);
        }
        if (viewId != 0)
        {
            rj1.z(3, viewId);
        }
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return o(ri1);
    }

    protected int c()
    {
        int i = super.c();
        if (!amL.equals(""))
        {
            i += rj.k(1, amL);
        }
        if (!amM.equals(""))
        {
            i += rj.k(2, amM);
        }
        if (viewId != 0)
        {
            i += rj.B(3, viewId);
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
        flag = obj instanceof viewId;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        viewId viewid = (viewId)obj;
        if (amL != null) goto _L6; else goto _L5
_L5:
        String s1;
        s1 = viewid.amL;
        flag1 = false;
        if (s1 != null) goto _L4; else goto _L7
_L7:
        String s;
        if (amM != null)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        s = viewid.amM;
        flag1 = false;
        if (s != null) goto _L4; else goto _L8
_L8:
        int i = viewId;
        int j = viewid.viewId;
        flag1 = false;
        if (i == j)
        {
            return a(viewid);
        }
          goto _L4
_L6:
        if (!amL.equals(viewid.amL))
        {
            return false;
        }
          goto _L7
        if (!amM.equals(viewid.amM))
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
        if (amL == null)
        {
            i = 0;
        } else
        {
            i = amL.hashCode();
        }
        j = 31 * (i + 527);
        s = amM;
        k = 0;
        if (s != null)
        {
            k = amM.hashCode();
        }
        return 31 * (31 * (j + k) + viewId) + ua();
    }

    public ua o(ri ri1)
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
                amL = ri1.readString();
                break;

            case 18: // '\022'
                amM = ri1.readString();
                break;

            case 24: // '\030'
                viewId = ri1.tM();
                break;
            }
        } while (true);
    }

    public viewId ph()
    {
        amL = "";
        amM = "";
        viewId = 0;
        aGo = null;
        aGz = -1;
        return this;
    }

    public ()
    {
        ph();
    }
}
