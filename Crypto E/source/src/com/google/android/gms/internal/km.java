// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            kn

public class km
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new kn();
    public final DataHolder Px;
    public final int versionCode;

    km(int i, DataHolder dataholder)
    {
        versionCode = i;
        Px = dataholder;
    }

    public km(DataHolder dataholder)
    {
        this(1, dataholder);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        kn.a(this, parcel, i);
    }

}
