// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            nk

public class nj
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new nk();
    private final int DN;
    private final List abn;

    nj(int i, List list)
    {
        DN = i;
        abn = list;
    }

    public int describeContents()
    {
        return 0;
    }

    public List getDataTypes()
    {
        return Collections.unmodifiableList(abn);
    }

    int getVersionCode()
    {
        return DN;
    }

    public String toString()
    {
        return r.k(this).a("dataTypes", abn).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        nk.a(this, parcel, i);
    }

}
