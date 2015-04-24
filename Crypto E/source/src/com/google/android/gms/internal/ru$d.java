// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, ro, ri, rj, 
//            ru, rq

public static final class uo extends rk
{

    private static volatile aGz aHa[];
    public String fv;
    public String value;

    public static uo[] un()
    {
        if (aHa == null)
        {
            synchronized (ro.aGy)
            {
                if (aHa == null)
                {
                    aHa = new aHa[0];
                }
            }
        }
        return aHa;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public aHa B(ri ri1)
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

            case 18: // '\022'
                value = ri1.readString();
                break;
            }
        } while (true);
    }

    public void a(rj rj1)
    {
        if (!fv.equals(""))
        {
            rj1.b(1, fv);
        }
        if (!value.equals(""))
        {
            rj1.b(2, value);
        }
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return B(ri1);
    }

    protected int c()
    {
        int i = super.c();
        if (!fv.equals(""))
        {
            i += rj.k(1, fv);
        }
        if (!value.equals(""))
        {
            i += rj.k(2, value);
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
        flag = obj instanceof value;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        value value1 = (value)obj;
        if (fv != null) goto _L6; else goto _L5
_L5:
        String s1;
        s1 = value1.fv;
        flag1 = false;
        if (s1 != null) goto _L4; else goto _L7
_L7:
        String s;
        if (value != null)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        s = value1.value;
        flag1 = false;
        if (s != null) goto _L4; else goto _L8
_L8:
        return a(value1);
_L6:
        if (!fv.equals(value1.fv))
        {
            return false;
        }
          goto _L7
        if (!value.equals(value1.value))
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
        if (fv == null)
        {
            i = 0;
        } else
        {
            i = fv.hashCode();
        }
        j = 31 * (i + 527);
        s = value;
        k = 0;
        if (s != null)
        {
            k = value.hashCode();
        }
        return 31 * (j + k) + ua();
    }

    public ua uo()
    {
        fv = "";
        value = "";
        aGo = null;
        aGz = -1;
        return this;
    }

    public ()
    {
        uo();
    }
}
