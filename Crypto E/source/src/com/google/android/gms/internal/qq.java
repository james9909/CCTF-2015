// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            qp

public class qq
    implements android.os.Parcelable.Creator
{

    public qq()
    {
    }

    static void a(qp qp1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, qp1.getVersionCode());
        b.a(parcel, 2, qp1.aDh, false);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return eB(parcel);
    }

    public qp eB(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        int ai[] = null;
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
                    ai = com.google.android.gms.common.internal.safeparcel.a.v(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new qp(j, ai);
            }
        } while (true);
    }

    public qp[] hk(int i)
    {
        return new qp[i];
    }

    public Object[] newArray(int i)
    {
        return hk(i);
    }
}
