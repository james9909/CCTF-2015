// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            oj, ot

public class ok
    implements android.os.Parcelable.Creator
{

    public ok()
    {
    }

    static void a(oj oj1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.a(parcel, 1, oj1.pA());
        b.c(parcel, 1000, oj1.DN);
        b.c(parcel, 2, oj1.aoC, false);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ds(parcel);
    }

    public oj ds(Parcel parcel)
    {
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        java.util.ArrayList arraylist = null;
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
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, ot.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new oj(j, flag, arraylist);
            }
        } while (true);
    }

    public oj[] fQ(int i)
    {
        return new oj[i];
    }

    public Object[] newArray(int i)
    {
        return fQ(i);
    }
}
