// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            qs

public final class qr
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new qs();
    private final int DN;
    String aDi[];
    byte aDj[][];

    qr()
    {
        this(1, new String[0], new byte[0][]);
    }

    qr(int i, String as[], byte abyte0[][])
    {
        DN = i;
        aDi = as;
        aDj = abyte0;
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
        qs.a(this, parcel, i);
    }

}
