// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.r;

// Referenced classes of package com.google.android.gms.internal:
//            kt

public static final class TK
{

    public final int TJ;
    public final int TK;

    public boolean equals(Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof TK))
        {
            flag = false;
        } else
        if (this != obj)
        {
            TK tk = (TK)obj;
            if (tk.TJ != TJ || tk.TK != TK)
            {
                return false;
            }
        }
        return flag;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(TJ);
        aobj[1] = Integer.valueOf(TK);
        return r.hashCode(aobj);
    }

    public l.r(int i, int j)
    {
        TJ = i;
        TK = j;
    }
}
