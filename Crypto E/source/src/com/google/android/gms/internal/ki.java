// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            kj

public class ki
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new kj();
    public final DataHolder PL;
    public final int PM;
    public final int PN;
    public final long PO;
    public com.google.android.gms.cloudsave.Entity.Key PP;
    public long PQ;
    public long PR;
    public final DataHolder PS;
    public final int versionCode;

    ki(int i, DataHolder dataholder, int j, int k, long l, com.google.android.gms.cloudsave.Entity.Key key, 
            long l1, long l2, DataHolder dataholder1)
    {
        versionCode = i;
        PL = dataholder;
        PM = j;
        PN = k;
        PO = l;
        PP = key;
        PQ = l1;
        PR = l2;
        PS = dataholder1;
    }

    public ki(DataHolder dataholder, int i, int j, long l, com.google.android.gms.cloudsave.Entity.Key key, long l1, long l2, DataHolder dataholder1)
    {
        this(1, dataholder, i, j, l, key, l1, l2, dataholder1);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        kj.a(this, parcel, i);
    }

}
