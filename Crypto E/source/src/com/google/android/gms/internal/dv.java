// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            du

public final class dv
    implements SafeParcelable
{

    public static final du CREATOR = new du();
    public final String mimeType;
    public final String packageName;
    public final String ss;
    public final String st;
    public final String su;
    public final String sv;
    public final String sw;
    public final int versionCode;

    public dv(int i, String s, String s1, String s2, String s3, String s4, String s5, 
            String s6)
    {
        versionCode = i;
        ss = s;
        st = s1;
        mimeType = s2;
        packageName = s3;
        su = s4;
        sv = s5;
        sw = s6;
    }

    public dv(String s, String s1, String s2, String s3, String s4, String s5, String s6)
    {
        this(1, s, s1, s2, s3, s4, s5, s6);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        du.a(this, parcel, i);
    }

}
