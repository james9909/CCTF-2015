// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

public class ql
    implements android.os.Parcelable.Creator
{

    public ql()
    {
    }

    static void a(qb.h h, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        Set set = h.avz;
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, h.DN);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            b.c(parcel, 3, h.rc());
        }
        if (set.contains(Integer.valueOf(4)))
        {
            b.a(parcel, 4, h.mValue, true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            b.a(parcel, 5, h.afa, true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            b.c(parcel, 6, h.Ml);
        }
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return em(parcel);
    }

    public qb.h em(Parcel parcel)
    {
        String s = null;
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        HashSet hashset = new HashSet();
        int k = 0;
        String s1 = null;
        int l = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int i1 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(i1))
                {
                case 2: // '\002'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    hashset.add(Integer.valueOf(3));
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    hashset.add(Integer.valueOf(4));
                    break;

                case 5: // '\005'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    hashset.add(Integer.valueOf(5));
                    break;

                case 6: // '\006'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    hashset.add(Integer.valueOf(6));
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != j)
                {
                    throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
                }
                return new qb.h(hashset, l, s1, k, s, i);
            }
        } while (true);
    }

    public qb.h[] gM(int i)
    {
        return new qb.h[i];
    }

    public Object[] newArray(int i)
    {
        return gM(i);
    }
}
