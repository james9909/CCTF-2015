// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.identity.intents;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.identity.intents.model.CountrySpecification;

// Referenced classes of package com.google.android.gms.identity.intents:
//            UserAddressRequest

public class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(UserAddressRequest useraddressrequest, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, useraddressrequest.getVersionCode());
        b.c(parcel, 2, useraddressrequest.amW, false);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return dk(parcel);
    }

    public UserAddressRequest dk(Parcel parcel)
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
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, CountrySpecification.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new UserAddressRequest(j, arraylist);
            }
        } while (true);
    }

    public UserAddressRequest[] fz(int i)
    {
        return new UserAddressRequest[i];
    }

    public Object[] newArray(int i)
    {
        return fz(i);
    }
}
