// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.cloudsave.Entity;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            kk

public class kl
    implements android.os.Parcelable.Creator
{

    public kl()
    {
    }

    static void a(kk kk1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, kk1.versionCode);
        b.c(parcel, 2, kk1.statusCode);
        b.a(parcel, 3, kk1.PT, i, false);
        b.a(parcel, 4, kk1.PU);
        b.a(parcel, 5, kk1.PP, i, false);
        b.I(parcel, j);
    }

    public kk ad(Parcel parcel)
    {
        com.google.android.gms.cloudsave.Entity.Key key = null;
        boolean flag = false;
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        Entity entity = null;
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
                    entity = (Entity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Entity.CREATOR);
                    break;

                case 4: // '\004'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;

                case 5: // '\005'
                    key = (com.google.android.gms.cloudsave.Entity.Key)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, com.google.android.gms.cloudsave.Entity.Key.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new kk(k, j, entity, flag, key);
            }
        } while (true);
    }

    public kk[] bo(int i)
    {
        return new kk[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ad(parcel);
    }

    public Object[] newArray(int i)
    {
        return bo(i);
    }
}
