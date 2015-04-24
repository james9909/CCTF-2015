// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.DataSource;

// Referenced classes of package com.google.android.gms.internal:
//            nl

public class nm
    implements android.os.Parcelable.Creator
{

    public nm()
    {
    }

    static void a(nl nl1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.a(parcel, 1, nl1.getDataSource(), i, false);
        b.c(parcel, 1000, nl1.getVersionCode());
        b.I(parcel, j);
    }

    public nl cm(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        DataSource datasource = null;
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
                    datasource = (DataSource)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataSource.CREATOR);
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
                return new nl(j, datasource);
            }
        } while (true);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return cm(parcel);
    }

    public nl[] ei(int i)
    {
        return new nl[i];
    }

    public Object[] newArray(int i)
    {
        return ei(i);
    }
}
