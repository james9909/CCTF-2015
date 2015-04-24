// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            ic

public class ib
    implements SafeParcelable
{

    public static final ic CREATOR = new ic();
    final int DN;
    final Bundle Ee;
    public final int id;

    ib(int i, int j, Bundle bundle)
    {
        DN = i;
        id = j;
        Ee = bundle;
    }

    public int describeContents()
    {
        ic _tmp = CREATOR;
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ic _tmp = CREATOR;
        ic.a(this, parcel, i);
    }

}
