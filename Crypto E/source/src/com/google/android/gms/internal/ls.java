// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            lr, lo

public class ls
    implements android.os.Parcelable.Creator
{

    public ls()
    {
    }

    static void a(lr lr1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, lr1.getVersionCode());
        b.a(parcel, 2, lr1.km(), false);
        b.a(parcel, 3, lr1.kn(), i, false);
        b.I(parcel, j);
    }

    public lr av(Parcel parcel)
    {
        lo lo1 = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        Parcel parcel1 = null;
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
                    parcel1 = com.google.android.gms.common.internal.safeparcel.a.E(parcel, k);
                    break;

                case 3: // '\003'
                    lo1 = (lo)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, lo.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new lr(j, parcel1, lo1);
            }
        } while (true);
    }

    public lr[] bY(int i)
    {
        return new lr[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return av(parcel);
    }

    public Object[] newArray(int i)
    {
        return bY(i);
    }
}
