// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            hz, ih

public class ia
    implements android.os.Parcelable.Creator
{

    public ia()
    {
    }

    static void a(hz hz1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.a(parcel, 1, hz1.Ea, false);
        b.c(parcel, 1000, hz1.DN);
        b.a(parcel, 3, hz1.Eb, i, false);
        b.c(parcel, 4, hz1.Ec);
        b.a(parcel, 5, hz1.Ed, false);
        b.I(parcel, j);
    }

    public hz[] N(int i)
    {
        return new hz[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return n(parcel);
    }

    public hz n(Parcel parcel)
    {
        byte abyte0[] = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        int k = -1;
        ih ih1 = null;
        String s = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(l))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 3: // '\003'
                    ih1 = (ih)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ih.CREATOR);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 5: // '\005'
                    abyte0 = com.google.android.gms.common.internal.safeparcel.a.s(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new hz(j, s, ih1, k, abyte0);
            }
        } while (true);
    }

    public Object[] newArray(int i)
    {
        return N(i);
    }
}
