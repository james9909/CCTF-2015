// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, ro, rj, ri, 
//            c, rq

public static final class p extends rk
{

    private static volatile aGz go[];
    public aGz gp;
    public aGz gq;
    public String name;

    public static p[] o()
    {
        if (go == null)
        {
            synchronized (ro.aGy)
            {
                if (go == null)
                {
                    go = new go[0];
                }
            }
        }
        return go;
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
        if (gp != null)
        {
            rj1.a(2, gp);
        }
        if (gq != null)
        {
            rj1.a(3, gq);
        }
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return j(ri1);
    }

    protected int c()
    {
        int k = super.c();
        if (!name.equals(""))
        {
            k += rj.k(1, name);
        }
        if (gp != null)
        {
            k += rj.c(2, gp);
        }
        if (gq != null)
        {
            k += rj.c(3, gq);
        }
        return k;
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
        flag = obj instanceof gq;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        gq gq1 = (gq)obj;
        if (name != null) goto _L6; else goto _L5
_L5:
        String s;
        s = gq1.name;
        flag1 = false;
        if (s != null) goto _L4; else goto _L7
_L7:
        if (gp != null) goto _L9; else goto _L8
_L8:
        gq gq3;
        gq3 = gq1.gp;
        flag1 = false;
        if (gq3 != null) goto _L4; else goto _L10
_L10:
        gq gq2;
        if (gq != null)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        gq2 = gq1.gq;
        flag1 = false;
        if (gq2 != null) goto _L4; else goto _L11
_L11:
        return a(gq1);
_L6:
        if (!name.equals(gq1.name))
        {
            return false;
        }
          goto _L7
_L9:
        if (!gp.equals(gq1.gp))
        {
            return false;
        }
          goto _L10
        if (!gq.equals(gq1.gq))
        {
            return false;
        }
          goto _L11
    }

    public int hashCode()
    {
        int k;
        int l;
        int i1;
        int j1;
        gq gq1;
        int k1;
        if (name == null)
        {
            k = 0;
        } else
        {
            k = name.hashCode();
        }
        l = 31 * (k + 527);
        if (gp == null)
        {
            i1 = 0;
        } else
        {
            i1 = gp.hashCode();
        }
        j1 = 31 * (i1 + l);
        gq1 = gq;
        k1 = 0;
        if (gq1 != null)
        {
            k1 = gq.hashCode();
        }
        return 31 * (j1 + k1) + ua();
    }

    public ua j(ri ri1)
    {
        do
        {
            int k = ri1.tJ();
            switch (k)
            {
            default:
                if (a(ri1, k))
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
                if (gp == null)
                {
                    gp = new <init>();
                }
                ri1.a(gp);
                break;

            case 26: // '\032'
                if (gq == null)
                {
                    gq = new <init>();
                }
                ri1.a(gq);
                break;
            }
        } while (true);
    }

    public gq p()
    {
        name = "";
        gp = null;
        gq = null;
        aGo = null;
        aGz = -1;
        return this;
    }

    public ()
    {
        p();
    }
}
