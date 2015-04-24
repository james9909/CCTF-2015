// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, ri, rj, c, 
//            rq

public static final class b extends rk
{

    public int fn;
    public int fo;
    public int level;

    public b a(ri ri1)
    {
_L6:
        int i = ri1.tJ();
        i;
        JVM INSTR lookupswitch 4: default 48
    //                   0: 57
    //                   8: 59
    //                   16: 103
    //                   24: 114;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        if (a(ri1, i)) goto _L6; else goto _L2
_L2:
        return this;
_L3:
        int j = ri1.tM();
        switch (j)
        {
        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
            level = j;
            break;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        fn = ri1.tM();
        continue; /* Loop/switch isn't completed */
_L5:
        fo = ri1.tM();
        if (true) goto _L6; else goto _L7
_L7:
    }

    public void a(rj rj1)
    {
        if (level != 1)
        {
            rj1.z(1, level);
        }
        if (fn != 0)
        {
            rj1.z(2, fn);
        }
        if (fo != 0)
        {
            rj1.z(3, fo);
        }
        super.a(rj1);
    }

    public  b()
    {
        level = 1;
        fn = 0;
        fo = 0;
        aGo = null;
        aGz = -1;
        return this;
    }

    public rq b(ri ri1)
    {
        return a(ri1);
    }

    protected int c()
    {
        int i = super.c();
        if (level != 1)
        {
            i += rj.B(1, level);
        }
        if (fn != 0)
        {
            i += rj.B(2, fn);
        }
        if (fo != 0)
        {
            i += rj.B(3, fo);
        }
        return i;
    }

    public boolean equals(Object obj)
    {
        boolean flag1;
        if (obj == this)
        {
            flag1 = true;
        } else
        {
            boolean flag = obj instanceof fo;
            flag1 = false;
            if (flag)
            {
                fo fo1 = (fo)obj;
                int i = level;
                int j = fo1.level;
                flag1 = false;
                if (i == j)
                {
                    int k = fn;
                    int l = fo1.fn;
                    flag1 = false;
                    if (k == l)
                    {
                        int i1 = fo;
                        int j1 = fo1.fo;
                        flag1 = false;
                        if (i1 == j1)
                        {
                            return a(fo1);
                        }
                    }
                }
            }
        }
        return flag1;
    }

    public int hashCode()
    {
        return 31 * (31 * (31 * (527 + level) + fn) + fo) + ua();
    }

    public ()
    {
        b();
    }
}
