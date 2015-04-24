// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            jy

public class jz
    implements android.os.Parcelable.Creator
{

    public jz()
    {
    }

    static void a(jy jy1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, jy1.versionCode);
        b.c(parcel, 2, jy1.PK, false);
        b.I(parcel, j);
    }

    public jy Y(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        java.util.ArrayList arraylist = null;
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
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, com.google.android.gms.cloudsave.Entity.Key.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new jy(j, arraylist);
            }
        } while (true);
    }

    public jy[] bj(int i)
    {
        return new jy[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return Y(parcel);
    }

    public Object[] newArray(int i)
    {
        return bj(i);
    }
}
