// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ol, on

public class om
    implements android.os.Parcelable.Creator
{

    public om()
    {
    }

    static void a(ol ol1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, ol1.py());
        b.c(parcel, 1000, ol1.getVersionCode());
        b.c(parcel, 2, ol1.pB());
        b.a(parcel, 3, ol1.pC(), i, false);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return dt(parcel);
    }

    public ol dt(Parcel parcel)
    {
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int k = -1;
        on on1 = null;
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
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 1000: 
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 3: // '\003'
                    on1 = (on)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, on.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new ol(l, i, k, on1);
            }
        } while (true);
    }

    public ol[] fR(int i)
    {
        return new ol[i];
    }

    public Object[] newArray(int i)
    {
        return fR(i);
    }
}
