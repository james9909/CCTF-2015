// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.r;

// Referenced classes of package com.google.android.gms.internal:
//            lc

public final class kt extends lc
{
    public static final class a
    {

        public final int TJ;
        public final int TK;

        public boolean equals(Object obj)
        {
            boolean flag = true;
            if (!(obj instanceof a))
            {
                flag = false;
            } else
            if (this != obj)
            {
                a a1 = (a)obj;
                if (a1.TJ != TJ || a1.TK != TK)
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

        public a(int i, int j)
        {
            TJ = i;
            TK = j;
        }
    }


    public kt()
    {
        super(10);
    }
}
