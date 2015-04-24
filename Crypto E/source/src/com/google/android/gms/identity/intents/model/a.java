// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.identity.intents.model:
//            CountrySpecification

public class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(CountrySpecification countryspecification, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, countryspecification.getVersionCode());
        b.a(parcel, 2, countryspecification.wm, false);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return dl(parcel);
    }

    public CountrySpecification dl(Parcel parcel)
    {
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
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new CountrySpecification(j, s);
            }
        } while (true);
    }

    public CountrySpecification[] fA(int i)
    {
        return new CountrySpecification[i];
    }

    public Object[] newArray(int i)
    {
        return fA(i);
    }
}
