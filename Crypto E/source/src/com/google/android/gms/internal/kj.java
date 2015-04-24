// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ki

public class kj
    implements android.os.Parcelable.Creator
{

    public kj()
    {
    }

    static void a(ki ki1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, ki1.versionCode);
        b.a(parcel, 2, ki1.PL, i, false);
        b.c(parcel, 3, ki1.PM);
        b.c(parcel, 4, ki1.PN);
        b.a(parcel, 5, ki1.PO);
        b.a(parcel, 6, ki1.PP, i, false);
        b.a(parcel, 7, ki1.PQ);
        b.a(parcel, 8, ki1.PR);
        b.a(parcel, 9, ki1.PS, i, false);
        b.I(parcel, j);
    }

    public ki ac(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        DataHolder dataholder = null;
        int k = 0;
        int l = 0;
        long l1 = 0L;
        com.google.android.gms.cloudsave.Entity.Key key = null;
        long l2 = 0L;
        long l3 = 0L;
        DataHolder dataholder1 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int i1 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(i1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    dataholder = (DataHolder)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, DataHolder.CREATOR);
                    break;

                case 3: // '\003'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 4: // '\004'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 5: // '\005'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 6: // '\006'
                    key = (com.google.android.gms.cloudsave.Entity.Key)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, com.google.android.gms.cloudsave.Entity.Key.CREATOR);
                    break;

                case 7: // '\007'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 8: // '\b'
                    l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 9: // '\t'
                    dataholder1 = (DataHolder)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, DataHolder.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new ki(j, dataholder, k, l, l1, key, l2, l3, dataholder1);
            }
        } while (true);
    }

    public ki[] bn(int i)
    {
        return new ki[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ac(parcel);
    }

    public Object[] newArray(int i)
    {
        return bn(i);
    }
}
