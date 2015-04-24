// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, ro, rj, ri, 
//            c, rq

public static final class j extends rk
{

    private static volatile aGz fD[];
    public int key;
    public int value;

    public static j[] i()
    {
        if (fD == null)
        {
            synchronized (ro.aGy)
            {
                if (fD == null)
                {
                    fD = new fD[0];
                }
            }
        }
        return fD;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(rj rj1)
    {
        rj1.z(1, key);
        rj1.z(2, value);
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return f(ri1);
    }

    protected int c()
    {
        return super.c() + rj.B(1, key) + rj.B(2, value);
    }

    public boolean equals(Object obj)
    {
        boolean flag1;
        if (obj == this)
        {
            flag1 = true;
        } else
        {
            boolean flag = obj instanceof value;
            flag1 = false;
            if (flag)
            {
                value value1 = (value)obj;
                int k = key;
                int l = value1.key;
                flag1 = false;
                if (k == l)
                {
                    int i1 = value;
                    int j1 = value1.value;
                    flag1 = false;
                    if (i1 == j1)
                    {
                        return a(value1);
                    }
                }
            }
        }
        return flag1;
    }

    public a f(ri ri1)
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

            case 8: // '\b'
                key = ri1.tM();
                break;

            case 16: // '\020'
                value = ri1.tM();
                break;
            }
        } while (true);
    }

    public int hashCode()
    {
        return 31 * (31 * (527 + key) + value) + ua();
    }

    public ua j()
    {
        key = 0;
        value = 0;
        aGo = null;
        aGz = -1;
        return this;
    }

    public ()
    {
        j();
    }
}
