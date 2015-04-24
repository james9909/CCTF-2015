// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.cloudsave.Query;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            kf

public class ke
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new kf();
    public final Query Py;
    public final int versionCode;

    ke(int i, Query query)
    {
        versionCode = i;
        Py = query;
    }

    public ke(Query query)
    {
        this(1, query);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        kf.a(this, parcel, i);
    }

}
