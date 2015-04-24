// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ie
    implements android.os.Parcelable.Creator
{

    public ie()
    {
    }

    static void a(id.a a1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.a(parcel, 1, a1.Ef, i, false);
        b.c(parcel, 1000, a1.DN);
        b.I(parcel, j);
    }

    public id.a[] P(int i)
    {
        return new id.a[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return p(parcel);
    }

    public Object[] newArray(int i)
    {
        return P(i);
    }

    public id.a p(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        Account account = null;
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
                    account = (Account)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Account.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new id.a(j, account);
            }
        } while (true);
    }
}
