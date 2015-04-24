// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            kg

public class kh
    implements android.os.Parcelable.Creator
{

    public kh()
    {
    }

    static void a(kg kg1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, kg1.versionCode);
        b.c(parcel, 2, kg1.statusCode);
        b.a(parcel, 3, kg1.Px, i, false);
        b.I(parcel, j);
    }

    public kg ab(Parcel parcel)
    {
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        DataHolder dataholder = null;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int l = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(l))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 3: // '\003'
                    dataholder = (DataHolder)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, DataHolder.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new kg(k, i, dataholder);
            }
        } while (true);
    }

    public kg[] bm(int i)
    {
        return new kg[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ab(parcel);
    }

    public Object[] newArray(int i)
    {
        return bm(i);
    }
}
