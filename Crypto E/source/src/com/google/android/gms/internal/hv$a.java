// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.accounts.Account;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            hz, hv

public static class 
{

    private List DR;
    private String DS;
    private boolean DT;
    private Account DU;

    public  F(boolean flag)
    {
        DT = flag;
        return this;
    }

    public DT a(hz hz1)
    {
        if (DR == null)
        {
            DR = new ArrayList();
        }
        DR.add(hz1);
        return this;
    }

    public DR at(String s)
    {
        DS = s;
        return this;
    }

    public hv fM()
    {
        String s = DS;
        boolean flag = DT;
        Account account = DU;
        hz ahz[];
        if (DR != null)
        {
            ahz = (hz[])DR.toArray(new hz[DR.size()]);
        } else
        {
            ahz = null;
        }
        return new hv(s, flag, account, ahz);
    }

    public ()
    {
    }
}
