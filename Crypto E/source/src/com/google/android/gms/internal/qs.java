// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            qr

public class qs
    implements android.os.Parcelable.Creator
{

    public qs()
    {
    }

    static void a(qr qr1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, qr1.getVersionCode());
        b.a(parcel, 2, qr1.aDi, false);
        b.a(parcel, 3, qr1.aDj, false);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return eC(parcel);
    }

    public qr eC(Parcel parcel)
    {
        String as[] = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        byte abyte0[][] = (byte[][])null;
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
                    as = com.google.android.gms.common.internal.safeparcel.a.B(parcel, k);
                    break;

                case 3: // '\003'
                    abyte0 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new qr(j, as, abyte0);
            }
        } while (true);
    }

    public qr[] hl(int i)
    {
        return new qr[i];
    }

    public Object[] newArray(int i)
    {
        return hl(i);
    }
}
