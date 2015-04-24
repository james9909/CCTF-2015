// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            hv, hz

public class hw
    implements android.os.Parcelable.Creator
{

    public hw()
    {
    }

    static void a(hv hv1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.a(parcel, 1, hv1.DO, i, false);
        b.c(parcel, 1000, hv1.DN);
        b.a(parcel, 2, hv1.DP, false);
        b.a(parcel, 3, hv1.DQ);
        b.a(parcel, 4, hv1.account, i, false);
        b.I(parcel, j);
    }

    public hv[] L(int i)
    {
        return new hv[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return l(parcel);
    }

    public hv l(Parcel parcel)
    {
        boolean flag = false;
        Account account = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        String s = null;
        hz ahz[] = null;
        int j = 0;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(k))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    ahz = (hz[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, k, hz.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    break;

                case 3: // '\003'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 4: // '\004'
                    account = (Account)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Account.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new hv(j, ahz, s, flag, account);
            }
        } while (true);
    }

    public Object[] newArray(int i)
    {
        return L(i);
    }
}
