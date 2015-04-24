// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

public class qd
    implements android.os.Parcelable.Creator
{

    public qd()
    {
    }

    static void a(qb.a a1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        Set set = a1.avz;
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, a1.DN);
        }
        if (set.contains(Integer.valueOf(2)))
        {
            b.c(parcel, 2, a1.awQ);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            b.c(parcel, 3, a1.awR);
        }
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ee(parcel);
    }

    public qb.a ee(Parcel parcel)
    {
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        HashSet hashset = new HashSet();
        int k = 0;
        int l = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int i1 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(i1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 2: // '\002'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    hashset.add(Integer.valueOf(2));
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    hashset.add(Integer.valueOf(3));
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != j)
                {
                    throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
                }
                return new qb.a(hashset, l, k, i);
            }
        } while (true);
    }

    public qb.a[] gE(int i)
    {
        return new qb.a[i];
    }

    public Object[] newArray(int i)
    {
        return gE(i);
    }
}
