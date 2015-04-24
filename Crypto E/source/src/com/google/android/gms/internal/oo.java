// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            on, ot, ox

public class oo
    implements android.os.Parcelable.Creator
{

    public oo()
    {
    }

    static void a(on on1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, on1.aoC, false);
        b.c(parcel, 1000, on1.DN);
        b.a(parcel, 2, on1.pD(), false);
        b.a(parcel, 3, on1.pE());
        b.c(parcel, 4, on1.aoI, false);
        b.b(parcel, 6, on1.aoJ, false);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return du(parcel);
    }

    public on du(Parcel parcel)
    {
        boolean flag = false;
        java.util.ArrayList arraylist = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        java.util.ArrayList arraylist1 = null;
        String s = null;
        java.util.ArrayList arraylist2 = null;
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
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, ot.CREATOR);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k);
                    break;

                case 3: // '\003'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 4: // '\004'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, ox.CREATOR);
                    break;

                case 6: // '\006'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.D(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new on(j, arraylist2, s, flag, arraylist1, arraylist);
            }
        } while (true);
    }

    public on[] fS(int i)
    {
        return new on[i];
    }

    public Object[] newArray(int i)
    {
        return fS(i);
    }
}
