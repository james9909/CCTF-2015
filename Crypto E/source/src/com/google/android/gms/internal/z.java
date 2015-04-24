// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            y

public class z
    implements android.os.Parcelable.Creator
{

    public z()
    {
    }

    static void a(y y1, Parcel parcel, int i)
    {
        int j = com.google.android.gms.common.internal.safeparcel.b.am(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, y1.versionCode);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, y1.mb);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, y1.mn);
        com.google.android.gms.common.internal.safeparcel.b.I(parcel, j);
    }

    public y a(Parcel parcel)
    {
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        boolean flag1 = false;
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
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;

                case 3: // '\003'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new y(j, flag1, flag);
            }
        } while (true);
    }

    public y[] b(int i)
    {
        return new y[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int i)
    {
        return b(i);
    }
}
