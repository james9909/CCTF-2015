// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ih, ib

public static final class Et
{

    private String Er;
    private boolean Es;
    private int Et;
    private boolean Eu;
    private String Ev;
    private final List Ew = new ArrayList();
    private BitSet Ex;
    private String Ey;
    private final String mName;

    public Et G(boolean flag)
    {
        Es = flag;
        return this;
    }

    public Es H(boolean flag)
    {
        Eu = flag;
        return this;
    }

    public Eu S(int i)
    {
        if (Ex == null)
        {
            Ex = new BitSet();
        }
        Ex.set(i);
        return this;
    }

    public Ex av(String s)
    {
        Er = s;
        return this;
    }

    public Er aw(String s)
    {
        Ey = s;
        return this;
    }

    public ih fP()
    {
        int i = 0;
        BitSet bitset = Ex;
        int ai[] = null;
        if (bitset != null)
        {
            ai = new int[Ex.cardinality()];
            for (int j = Ex.nextSetBit(0); j >= 0;)
            {
                int k = i + 1;
                ai[i] = j;
                j = Ex.nextSetBit(j + 1);
                i = k;
            }

        }
        return new ih(mName, Er, Es, Et, Eu, Ev, (ib[])Ew.toArray(new ib[Ew.size()]), ai, Ey);
    }

    public (String s)
    {
        mName = s;
        Et = 1;
    }
}
