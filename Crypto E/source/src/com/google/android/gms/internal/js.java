// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            jr

public class js
    implements android.os.Parcelable.Creator
{

    public js()
    {
    }

    static void a(jr jr1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, jr1.DN);
        b.c(parcel, 2, jr1.Pu);
        b.a(parcel, 3, jr1.Pv);
        b.a(parcel, 4, jr1.Pw, i, false);
        b.I(parcel, j);
    }

    public jr V(Parcel parcel)
    {
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        com.google.android.gms.cloudsave.Entity.Key key = null;
        int j = 0;
        int k = 0;
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
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 3: // '\003'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;

                case 4: // '\004'
                    key = (com.google.android.gms.cloudsave.Entity.Key)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, com.google.android.gms.cloudsave.Entity.Key.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new jr(k, j, flag, key);
            }
        } while (true);
    }

    public jr[] bf(int i)
    {
        return new jr[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return V(parcel);
    }

    public Object[] newArray(int i)
    {
        return bf(i);
    }
}
