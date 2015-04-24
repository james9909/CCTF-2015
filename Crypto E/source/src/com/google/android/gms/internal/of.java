// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationRequest;

// Referenced classes of package com.google.android.gms.internal:
//            oe, nw

public class of
    implements android.os.Parcelable.Creator
{

    public of()
    {
    }

    static void a(oe oe1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.a(parcel, 1, oe1.adt, i, false);
        b.c(parcel, 1000, oe1.getVersionCode());
        b.a(parcel, 2, oe1.aow);
        b.a(parcel, 3, oe1.aox);
        b.a(parcel, 4, oe1.aoy);
        b.c(parcel, 5, oe1.aoz, false);
        b.a(parcel, 6, oe1.mTag, false);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return dq(parcel);
    }

    public oe dq(Parcel parcel)
    {
        String s = null;
        boolean flag = true;
        boolean flag1 = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        Object obj = oe.aov;
        boolean flag2 = flag;
        LocationRequest locationrequest = null;
        int j = 0;
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
                    locationrequest = (LocationRequest)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LocationRequest.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 3: // '\003'
                    flag2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 4: // '\004'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 5: // '\005'
                    obj = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, nw.CREATOR);
                    break;

                case 6: // '\006'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new oe(j, locationrequest, flag1, flag2, flag, ((java.util.List) (obj)), s);
            }
        } while (true);
    }

    public oe[] fM(int i)
    {
        return new oe[i];
    }

    public Object[] newArray(int i)
    {
        return fM(i);
    }
}
