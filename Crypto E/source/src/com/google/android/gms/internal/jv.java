// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            jw

public class jv
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new jw();
    public final DataHolder Pz;
    public final int statusCode;
    public final int versionCode;

    jv(int i, int j, DataHolder dataholder)
    {
        versionCode = i;
        statusCode = j;
        Pz = dataholder;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        jw.a(this, parcel, i);
    }

}
