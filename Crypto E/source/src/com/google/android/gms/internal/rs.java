// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Arrays;

// Referenced classes of package com.google.android.gms.internal:
//            rj

final class rs
{

    final byte aGA[];
    final int tag;

    rs(int i, byte abyte0[])
    {
        tag = i;
        aGA = abyte0;
    }

    void a(rj rj1)
    {
        rj1.ii(tag);
        rj1.t(aGA);
    }

    int c()
    {
        return 0 + rj.ij(tag) + aGA.length;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof rs))
            {
                return false;
            }
            rs rs1 = (rs)obj;
            if (tag != rs1.tag || !Arrays.equals(aGA, rs1.aGA))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * (527 + tag) + Arrays.hashCode(aGA);
    }
}
