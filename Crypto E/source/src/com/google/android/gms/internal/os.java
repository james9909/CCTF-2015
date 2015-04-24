// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            or, on

public class os
    implements android.os.Parcelable.Creator
{

    public os()
    {
    }

    static void a(or or1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1000, or1.DN);
        b.a(parcel, 2, or1.pC(), i, false);
        b.a(parcel, 3, or1.getInterval());
        b.c(parcel, 4, or1.getPriority());
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return dw(parcel);
    }

    public or dw(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        on on1 = null;
        long l = or.aoO;
        int k = 102;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int i1 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(i1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    on1 = (on)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, on.CREATOR);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new or(j, on1, l, k);
            }
        } while (true);
    }

    public or[] fU(int i)
    {
        return new or[i];
    }

    public Object[] newArray(int i)
    {
        return fU(i);
    }
}
