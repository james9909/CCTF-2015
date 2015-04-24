// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appindexing;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.appindexing:
//            b

public class a
    implements SafeParcelable
{

    public static final b CREATOR = new b();
    final String CN;
    final int DN;
    final String DV;
    final Uri EJ;
    final int EK;
    final Uri EW;

    a(int i, Uri uri, Uri uri1, String s, String s1, int j)
    {
        DN = i;
        EJ = uri;
        EW = uri1;
        DV = s;
        CN = s1;
        EK = j;
    }

    public int describeContents()
    {
        b _tmp = CREATOR;
        return 0;
    }

    public Uri fS()
    {
        return EW;
    }

    public String getAction()
    {
        return CN;
    }

    public Uri getOriginalUri()
    {
        return EJ;
    }

    public String getPackageName()
    {
        return DV;
    }

    public int getVerificationStatus()
    {
        return EK;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        b _tmp = CREATOR;
        b.a(this, parcel, i);
    }

}
