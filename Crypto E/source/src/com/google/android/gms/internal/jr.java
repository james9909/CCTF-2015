// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            js

public class jr
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new js();
    public final int DN;
    public int Pu;
    public boolean Pv;
    public final com.google.android.gms.cloudsave.Entity.Key Pw;

    jr(int i, int j, boolean flag, com.google.android.gms.cloudsave.Entity.Key key)
    {
        DN = i;
        Pu = j;
        Pv = flag;
        Pw = key;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        js.a(this, parcel, i);
    }

}
