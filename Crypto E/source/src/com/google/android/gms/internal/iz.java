// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            ja, jd

public class iz
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ja();
    private final int DN;
    private String MV;

    public iz()
    {
        this(1, null);
    }

    iz(int i, String s)
    {
        DN = i;
        MV = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof iz))
        {
            return false;
        } else
        {
            iz iz1 = (iz)obj;
            return jd.a(MV, iz1.MV);
        }
    }

    public int getVersionCode()
    {
        return DN;
    }

    public String hD()
    {
        return MV;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[1];
        aobj[0] = MV;
        return r.hashCode(aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ja.a(this, parcel, i);
    }

}
