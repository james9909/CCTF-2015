// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

public class qk
    implements android.os.Parcelable.Creator
{

    public qk()
    {
    }

    static void a(qb.g g, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        Set set = g.avz;
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, g.DN);
        }
        if (set.contains(Integer.valueOf(2)))
        {
            b.a(parcel, 2, g.axd);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            b.a(parcel, 3, g.mValue, true);
        }
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return el(parcel);
    }

    public qb.g el(Parcel parcel)
    {
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        HashSet hashset = new HashSet();
        String s = null;
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
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 2: // '\002'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    hashset.add(Integer.valueOf(2));
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    hashset.add(Integer.valueOf(3));
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != i)
                {
                    throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
                }
                return new qb.g(hashset, j, flag, s);
            }
        } while (true);
    }

    public qb.g[] gL(int i)
    {
        return new qb.g[i];
    }

    public Object[] newArray(int i)
    {
        return gL(i);
    }
}
