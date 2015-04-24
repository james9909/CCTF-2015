// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth.api;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.auth.api:
//            GoogleAuthApiResponse

public class GoogleAuthApiResponseCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION;

    public GoogleAuthApiResponseCreator()
    {
    }

    static void a(GoogleAuthApiResponse googleauthapiresponse, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, googleauthapiresponse.responseCode);
        b.c(parcel, 1000, googleauthapiresponse.versionCode);
        b.a(parcel, 2, googleauthapiresponse.FI, false);
        b.a(parcel, 3, googleauthapiresponse.FJ, false);
        b.I(parcel, j);
    }

    public GoogleAuthApiResponse createFromParcel(Parcel parcel)
    {
        byte abyte0[] = null;
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        android.os.Bundle bundle = null;
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
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.r(parcel, l);
                    break;

                case 3: // '\003'
                    abyte0 = com.google.android.gms.common.internal.safeparcel.a.s(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new GoogleAuthApiResponse(k, i, bundle, abyte0);
            }
        } while (true);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public GoogleAuthApiResponse[] newArray(int i)
    {
        return new GoogleAuthApiResponse[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
