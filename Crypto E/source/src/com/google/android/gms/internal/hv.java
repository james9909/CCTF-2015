// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            hw, ig, hz

public class hv
    implements SafeParcelable
{
    public static class a
    {

        private List DR;
        private String DS;
        private boolean DT;
        private Account DU;

        public a F(boolean flag)
        {
            DT = flag;
            return this;
        }

        public a a(hz hz1)
        {
            if (DR == null)
            {
                DR = new ArrayList();
            }
            DR.add(hz1);
            return this;
        }

        public a at(String s)
        {
            DS = s;
            return this;
        }

        public hv fM()
        {
            String s = DS;
            boolean flag = DT;
            Account account1 = DU;
            hz ahz[];
            if (DR != null)
            {
                ahz = (hz[])DR.toArray(new hz[DR.size()]);
            } else
            {
                ahz = null;
            }
            return new hv(s, flag, account1, ahz);
        }

        public a()
        {
        }
    }


    public static final hw CREATOR = new hw();
    final int DN;
    final hz DO[];
    public final String DP;
    public final boolean DQ;
    public final Account account;

    hv(int i, hz ahz[], String s, boolean flag, Account account1)
    {
        DN = i;
        DO = ahz;
        DP = s;
        DQ = flag;
        account = account1;
    }

    transient hv(String s, boolean flag, Account account1, hz ahz[])
    {
        this(1, ahz, s, flag, account1);
        BitSet bitset = new BitSet(ig.fO());
        for (int i = 0; i < ahz.length; i++)
        {
            int j = ahz[i].Ec;
            if (j == -1)
            {
                continue;
            }
            if (bitset.get(j))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Duplicate global search section type ").append(ig.R(j)).toString());
            }
            bitset.set(j);
        }

    }

    public int describeContents()
    {
        hw _tmp = CREATOR;
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        hw _tmp = CREATOR;
        hw.a(this, parcel, i);
    }

}
