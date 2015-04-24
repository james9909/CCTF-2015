// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            lg, lh

public class lf
    implements SafeParcelable
{

    public static final lg CREATOR = new lg();
    private final int DN;
    private final lh UV;

    lf(int i, lh lh1)
    {
        DN = i;
        UV = lh1;
    }

    private lf(lh lh1)
    {
        DN = 1;
        UV = lh1;
    }

    public static lf a(lk.b b)
    {
        if (b instanceof lh)
        {
            return new lf((lh)b);
        } else
        {
            throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
        }
    }

    public int describeContents()
    {
        lg _tmp = CREATOR;
        return 0;
    }

    int getVersionCode()
    {
        return DN;
    }

    lh jP()
    {
        return UV;
    }

    public lk.b jQ()
    {
        if (UV != null)
        {
            return UV;
        } else
        {
            throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        lg _tmp = CREATOR;
        lg.a(this, parcel, i);
    }

}
