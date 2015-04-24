// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.location:
//            d

public class e
    implements android.os.Parcelable.Creator
{

    public e()
    {
    }

    static void a(d d1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, d1.anL);
        b.c(parcel, 1000, d1.getVersionCode());
        b.c(parcel, 2, d1.anM);
        b.a(parcel, 3, d1.anN);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return _mthdo(parcel);
    }

    public d _mthdo(Parcel parcel)
    {
        int i = 1;
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int k = 0;
        long l = 0L;
        int i1 = i;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int j1 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(j1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new d(k, i1, i, l);
            }
        } while (true);
    }

    public d[] fK(int i)
    {
        return new d[i];
    }

    public Object[] newArray(int i)
    {
        return fK(i);
    }
}
