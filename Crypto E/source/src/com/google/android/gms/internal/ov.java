// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ow

public class ov
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ow();
    final int DN;
    private final String abl;
    private final LatLng arm;
    private final List arn;
    private final String aro;
    private final String arp;
    private final String mName;

    ov(int i, String s, LatLng latlng, String s1, List list, String s2, String s3)
    {
        DN = i;
        mName = s;
        arm = latlng;
        abl = s1;
        arn = new ArrayList(list);
        aro = s2;
        arp = s3;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getAddress()
    {
        return abl;
    }

    public String getName()
    {
        return mName;
    }

    public String getPhoneNumber()
    {
        return aro;
    }

    public LatLng pG()
    {
        return arm;
    }

    public List pH()
    {
        return arn;
    }

    public String pI()
    {
        return arp;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ow.a(this, parcel, i);
    }

}
