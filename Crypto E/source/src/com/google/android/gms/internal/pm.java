// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            pk

public class pm
    implements android.os.Parcelable.Creator
{

    public pm()
    {
    }

    static void a(pk pk1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, pk1.versionCode);
        b.a(parcel, 2, pk1.auj);
        b.a(parcel, 3, pk1.tag, false);
        b.a(parcel, 4, pk1.auk, false);
        b.a(parcel, 5, pk1.aul, false);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return dX(parcel);
    }

    public pk dX(Parcel parcel)
    {
        android.os.Bundle bundle = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        long l = 0L;
        byte abyte0[] = null;
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
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    break;

                case 4: // '\004'
                    abyte0 = com.google.android.gms.common.internal.safeparcel.a.s(parcel, k);
                    break;

                case 5: // '\005'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.r(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new pk(j, l, s, abyte0, bundle);
            }
        } while (true);
    }

    public pk[] gw(int i)
    {
        return new pk[i];
    }

    public Object[] newArray(int i)
    {
        return gw(i);
    }
}
