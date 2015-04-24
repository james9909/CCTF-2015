// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            jz

public class jy
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new jz();
    public final List PK;
    public final int versionCode;

    jy(int i, List list)
    {
        versionCode = i;
        PK = list;
    }

    public jy(List list)
    {
        this(1, list);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        jz.a(this, parcel, i);
    }

}
