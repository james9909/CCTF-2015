// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.cloudsave.Entity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            kl

public class kk
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new kl();
    public com.google.android.gms.cloudsave.Entity.Key PP;
    public final Entity PT;
    public boolean PU;
    public int statusCode;
    public final int versionCode;

    kk(int i, int j, Entity entity, boolean flag, com.google.android.gms.cloudsave.Entity.Key key)
    {
        versionCode = i;
        statusCode = j;
        PT = entity;
        PU = flag;
        PP = key;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        kl.a(this, parcel, i);
    }

}
