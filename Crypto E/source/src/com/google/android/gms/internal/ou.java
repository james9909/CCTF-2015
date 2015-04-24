// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ot

public class ou
    implements android.os.Parcelable.Creator
{

    public ou()
    {
    }

    static void a(ot ot1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.a(parcel, 1, ot1.we, false);
        b.c(parcel, 1000, ot1.DN);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return dx(parcel);
    }

    public ot dx(Parcel parcel)
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
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new ot(j, s);
            }
        } while (true);
    }

    public ot[] fV(int i)
    {
        return new ot[i];
    }

    public Object[] newArray(int i)
    {
        return fV(i);
    }
}
