// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, ro, rj, ri, 
//            c, rq

public static final class g extends rk
{

    private static volatile ua fu[];
    public String fv;
    public long fw;
    public long fx;
    public boolean fy;
    public long fz;

    public static g[] f()
    {
        if (fu == null)
        {
            synchronized (ro.aGy)
            {
                if (fu == null)
                {
                    fu = new fu[0];
                }
            }
        }
        return fu;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(rj rj1)
    {
        if (!fv.equals(""))
        {
            rj1.b(1, fv);
        }
        if (fw != 0L)
        {
            rj1.b(2, fw);
        }
        if (fx != 0x7fffffffL)
        {
            rj1.b(3, fx);
        }
        if (fy)
        {
            rj1.b(4, fy);
        }
        if (fz != 0L)
        {
            rj1.b(5, fz);
        }
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return d(ri1);
    }

    protected int c()
    {
        int i = super.c();
        if (!fv.equals(""))
        {
            i += rj.k(1, fv);
        }
        if (fw != 0L)
        {
            i += rj.d(2, fw);
        }
        if (fx != 0x7fffffffL)
        {
            i += rj.d(3, fx);
        }
        if (fy)
        {
            i += rj.c(4, fy);
        }
        if (fz != 0L)
        {
            i += rj.d(5, fz);
        }
        return i;
    }

    public fz d(ri ri1)
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
                fv = ri1.readString();
                break;

            case 16: // '\020'
                fw = ri1.tL();
                break;

            case 24: // '\030'
                fx = ri1.tL();
                break;

            case 32: // ' '
                fy = ri1.tN();
                break;

            case 40: // '('
                fz = ri1.tL();
                break;
            }
        } while (true);
    }

    public boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        boolean flag1 = true;
_L4:
        return flag1;
_L2:
        L l;
        boolean flag = obj instanceof L;
        flag1 = false;
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        l = (L)obj;
        if (fv != null)
        {
            break; /* Loop/switch isn't completed */
        }
        String s = l.fv;
        flag1 = false;
        if (s != null)
        {
            continue; /* Loop/switch isn't completed */
        }
_L5:
        int i = fw != l.fw;
        flag1 = false;
        if (i == 0)
        {
            int j = fx != l.fx;
            flag1 = false;
            if (j == 0)
            {
                boolean flag2 = fy;
                boolean flag3 = l.fy;
                flag1 = false;
                if (flag2 == flag3)
                {
                    int k = fz != l.fz;
                    flag1 = false;
                    if (k == 0)
                    {
                        return a(l);
                    }
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!fv.equals(l.fv))
        {
            return false;
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    public fv g()
    {
        fv = "";
        fw = 0L;
        fx = 0x7fffffffL;
        fy = false;
        fz = 0L;
        aGo = null;
        aGz = -1;
        return this;
    }

    public int hashCode()
    {
        int i;
        int j;
        char c1;
        if (fv == null)
        {
            i = 0;
        } else
        {
            i = fv.hashCode();
        }
        j = 31 * (31 * (31 * (i + 527) + (int)(fw ^ fw >>> 32)) + (int)(fx ^ fx >>> 32));
        if (fy)
        {
            c1 = '\u04CF';
        } else
        {
            c1 = '\u04D5';
        }
        return 31 * (31 * (c1 + j) + (int)(fz ^ fz >>> 32)) + ua();
    }

    public ()
    {
        g();
    }
}
