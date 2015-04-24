// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.cloudsave.Query;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            ju

public class jt
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ju();
    public final DataHolder Px;
    public final Query Py;
    public final int versionCode;

    jt(int i, DataHolder dataholder, Query query)
    {
        versionCode = i;
        Px = dataholder;
        Py = query;
    }

    public jt(Query query)
    {
        this(1, null, query);
    }

    public jt(DataHolder dataholder)
    {
        this(1, dataholder, null);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ju.a(this, parcel, i);
    }

}
