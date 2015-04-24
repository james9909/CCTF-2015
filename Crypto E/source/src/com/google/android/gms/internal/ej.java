// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ek

public class ej
    implements android.os.Parcelable.Creator
{

    public ej()
    {
    }

    static void a(ek ek1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, ek1.versionCode);
        b.a(parcel, 3, ek1.cD(), false);
        b.a(parcel, 4, ek1.cE(), false);
        b.a(parcel, 5, ek1.cF(), false);
        b.a(parcel, 6, ek1.cC(), false);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return g(parcel);
    }

    public ek g(Parcel parcel)
    {
        android.os.IBinder ibinder = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        android.os.IBinder ibinder1 = null;
        android.os.IBinder ibinder2 = null;
        android.os.IBinder ibinder3 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(k))
                {
                case 2: // '\002'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 3: // '\003'
                    ibinder3 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, k);
                    break;

                case 4: // '\004'
                    ibinder2 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, k);
                    break;

                case 5: // '\005'
                    ibinder1 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, k);
                    break;

                case 6: // '\006'
                    ibinder = com.google.android.gms.common.internal.safeparcel.a.q(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new ek(j, ibinder3, ibinder2, ibinder1, ibinder);
            }
        } while (true);
    }

    public Object[] newArray(int i)
    {
        return o(i);
    }

    public ek[] o(int i)
    {
        return new ek[i];
    }
}
