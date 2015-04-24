// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ij, hx, hv

public class ik
    implements android.os.Parcelable.Creator
{

    public ik()
    {
    }

    static void a(ij ij1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.a(parcel, 1, ij1.Ez, i, false);
        b.c(parcel, 1000, ij1.DN);
        b.a(parcel, 2, ij1.EA);
        b.c(parcel, 3, ij1.EB);
        b.a(parcel, 4, ij1.pm, false);
        b.a(parcel, 5, ij1.EC, i, false);
        b.I(parcel, j);
    }

    public ij[] U(int i)
    {
        return new ij[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return s(parcel);
    }

    public Object[] newArray(int i)
    {
        return U(i);
    }

    public ij s(Parcel parcel)
    {
        int i = 0;
        hv hv1 = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        long l = 0L;
        String s1 = null;
        hx hx1 = null;
        int k = 0;
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
                    hx1 = (hx)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, hx.CREATOR);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 4: // '\004'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
                    break;

                case 5: // '\005'
                    hv1 = (hv)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, hv.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new ij(k, hx1, l, i, s1, hv1);
            }
        } while (true);
    }
}
