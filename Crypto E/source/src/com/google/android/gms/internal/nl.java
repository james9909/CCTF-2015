// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;

// Referenced classes of package com.google.android.gms.internal:
//            nm

public class nl
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new nm();
    private final int DN;
    private final DataSource abc;

    nl(int i, DataSource datasource)
    {
        DN = i;
        abc = datasource;
    }

    public int describeContents()
    {
        return 0;
    }

    public DataSource getDataSource()
    {
        return abc;
    }

    int getVersionCode()
    {
        return DN;
    }

    public String toString()
    {
        Object aobj[] = new Object[1];
        aobj[0] = abc;
        return String.format("ApplicationUnregistrationRequest{%s}", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        nm.a(this, parcel, i);
    }

}
