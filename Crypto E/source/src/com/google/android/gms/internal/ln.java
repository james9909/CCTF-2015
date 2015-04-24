// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ln
    implements android.os.Parcelable.Creator
{

    public ln()
    {
    }

    static void a(lo.b b1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, b1.versionCode);
        b.a(parcel, 2, b1.fv, false);
        b.a(parcel, 3, b1.Vp, i, false);
        b.I(parcel, j);
    }

    public lo.b as(Parcel parcel)
    {
        lk.a a1 = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        String s = null;
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
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    break;

                case 3: // '\003'
                    a1 = (lk.a)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, lk.a.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new lo.b(j, s, a1);
            }
        } while (true);
    }

    public lo.b[] bV(int i)
    {
        return new lo.b[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return as(parcel);
    }

    public Object[] newArray(int i)
    {
        return bV(i);
    }
}
