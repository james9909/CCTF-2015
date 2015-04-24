// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.identity.intents.model:
//            a

public class CountrySpecification
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    private final int DN;
    String wm;

    CountrySpecification(int i, String s)
    {
        DN = i;
        wm = s;
    }

    public CountrySpecification(String s)
    {
        DN = 1;
        wm = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getCountryCode()
    {
        return wm;
    }

    public int getVersionCode()
    {
        return DN;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        a.a(this, parcel, i);
    }

}
