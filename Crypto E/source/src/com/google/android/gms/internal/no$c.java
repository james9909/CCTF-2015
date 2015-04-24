// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, rj, ro, ri, 
//            rt, no, rq

public static final class pk extends rk
{

    public amP amP[];
    public String type;

    public void a(rj rj1)
    {
        if (!type.equals(""))
        {
            rj1.b(1, type);
        }
        if (amP != null && amP.length > 0)
        {
            for (int i = 0; i < amP.length; i++)
            {
                pk pk1 = amP[i];
                if (pk1 != null)
                {
                    rj1.a(2, pk1);
                }
            }

        }
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return q(ri1);
    }

    protected int c()
    {
        int i = super.c();
        if (!type.equals(""))
        {
            i += rj.k(1, type);
        }
        if (amP != null && amP.length > 0)
        {
            int j = i;
            for (int k = 0; k < amP.length; k++)
            {
                q q1 = amP[k];
                if (q1 != null)
                {
                    j += rj.c(2, q1);
                }
            }

            i = j;
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
        amP amp;
        boolean flag = obj instanceof amP;
        flag1 = false;
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        amp = (amP)obj;
        if (type != null)
        {
            break; /* Loop/switch isn't completed */
        }
        String s = amp.type;
        flag1 = false;
        if (s != null)
        {
            continue; /* Loop/switch isn't completed */
        }
_L5:
        boolean flag2 = ro.equals(amP, amp.amP);
        flag1 = false;
        if (flag2)
        {
            return a(amp);
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!type.equals(amp.type))
        {
            return false;
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    public int hashCode()
    {
        int i;
        if (type == null)
        {
            i = 0;
        } else
        {
            i = type.hashCode();
        }
        return 31 * (31 * (i + 527) + ro.hashCode(amP)) + ua();
    }

    public ua pk()
    {
        type = "";
        amP = pi();
        aGo = null;
        aGz = -1;
        return this;
    }

    public aGz q(ri ri1)
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
                type = ri1.readString();
                break;

            case 18: // '\022'
                int j = rt.b(ri1, 18);
                int k;
                aGz aagz[];
                if (amP == null)
                {
                    k = 0;
                } else
                {
                    k = amP.length;
                }
                aagz = new amP[j + k];
                if (k != 0)
                {
                    System.arraycopy(amP, 0, aagz, 0, k);
                }
                for (; k < -1 + aagz.length; k++)
                {
                    aagz[k] = new <init>();
                    ri1.a(aagz[k]);
                    ri1.tJ();
                }

                aagz[k] = new <init>();
                ri1.a(aagz[k]);
                amP = aagz;
                break;
            }
        } while (true);
    }

    public ()
    {
        pk();
    }
}
