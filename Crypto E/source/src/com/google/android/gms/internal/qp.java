// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            qq

public final class qp
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new qq();
    private final int DN;
    int aDh[];

    qp()
    {
        this(1, null);
    }

    qp(int i, int ai[])
    {
        DN = i;
        aDh = ai;
    }

    public int describeContents()
    {
        return 0;
    }

    public int getVersionCode()
    {
        return DN;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        qq.a(this, parcel, i);
    }

}
