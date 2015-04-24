// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.cloudsave.Query;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            jt

public class ju
    implements android.os.Parcelable.Creator
{

    public ju()
    {
    }

    static void a(jt jt1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, jt1.versionCode);
        b.a(parcel, 2, jt1.Px, i, false);
        b.a(parcel, 3, jt1.Py, i, false);
        b.I(parcel, j);
    }

    public jt W(Parcel parcel)
    {
        Query query;
        int i;
        int j;
        DataHolder dataholder;
        query = null;
        i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        j = 0;
        dataholder = null;
_L6:
        int k;
        if (parcel.dataPosition() >= i)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
        com.google.android.gms.common.internal.safeparcel.a.bO(k);
        JVM INSTR tableswitch 1 3: default 60
    //                   1 91
    //                   2 117
    //                   3 145;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_145;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        Query query1;
        DataHolder dataholder1;
        int l;
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        query1 = query;
        dataholder1 = dataholder;
        l = j;
_L7:
        j = l;
        dataholder = dataholder1;
        query = query1;
        if (true) goto _L6; else goto _L5
_L5:
        int i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        Query query2 = query;
        dataholder1 = dataholder;
        l = i1;
        query1 = query2;
          goto _L7
_L3:
        DataHolder dataholder2 = (DataHolder)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DataHolder.CREATOR);
        l = j;
        query1 = query;
        dataholder1 = dataholder2;
          goto _L7
        query1 = (Query)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Query.CREATOR);
        dataholder1 = dataholder;
        l = j;
          goto _L7
        if (parcel.dataPosition() != i)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
        } else
        {
            return new jt(j, dataholder, query);
        }
    }

    public jt[] bg(int i)
    {
        return new jt[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return W(parcel);
    }

    public Object[] newArray(int i)
    {
        return bg(i);
    }
}
