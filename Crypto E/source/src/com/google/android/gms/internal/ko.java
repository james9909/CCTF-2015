// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            kp

public class ko
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new kp();
    public final DataHolder PV;
    public final int statusCode;
    public final int versionCode;

    ko(int i, int j, DataHolder dataholder)
    {
        versionCode = i;
        statusCode = j;
        PV = dataholder;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        kp.a(this, parcel, i);
    }

}
